--[[
	********************************************************************
	********************************************************************
	BOSS HELP FUNCTIONS
	
	VBM_WarnTextCountdown(tid,text,color,warn) -- warn = "big", "debuff" or "info" color should be a vbm_c_ and defaults red
	VBM_WarnTextCountdownClear()
	
	VBM_LoopLimitRun(times,sec)
	
	VBM_BossTargetYouWarning(boss,text,say,spell,field)
	
	VBM_SetMarkOn(uid,mark,tid)
	VBM_SetMarkOnName(name,mark,tid)
	VBM_RemoveMarkOnName(name)
	
	--tracks debuffs, adds and remove then called, resettime = 30; marktime/arrowtime = 10; warning = "big"/"debuff"/"info";
	VBM_Multi_Debuff_Add(player,name,warning,mark,arrow,marktime,arrowtime,resettime)
	VBM_Multi_Debuff_Remove(player,name,warning,mark,arrow,marktime,arrowtime,resettime)
	--call this multi times (within newdebufftime = 0.3 sec) after each other to add all debuffs and show them
	VBM_Multi_Debuff_TrackThose(player,name,warning,sound,mark,marktime,newdebufftime)
	
	VBM_LoopTimer_Setup(firsttime,name,extratime,texture)
	VBM_LoopTimer_Remove(name)
	
	VBM_Flash(nrflashes,timetoexecute,a,r,g,b);
	
	VBM_WarnTextIcon(text,icon);
	********************************************************************
	********************************************************************
]]--

function VBM_BossHelp_ResetAll()
	VBM_Multi_Debuff_Reset();
	VBM_WarnTextCountdownClear();
end

--[[
	********************************************************************
			On Screen Text Countdown
	********************************************************************
]]--

function VBM_WarnTextCountdown(tid,text,color,warn)
	if(not warn) then warn = "big"; end
	if(not color) then color = vbm_c_r; end
	if(not tid or not text or tid>9) then return; end
	--choose func
	local func,extra;
	if(warn=="debuff") then
		func = vbm_debuffwarn;
		extra = "d";
	elseif(warn=="info") then
		func = vbm_infowarn;
		extra = "i";
	else
		func = vbm_bigwarn;
		extra = "b";
	end
	--setup countdown
	func(color.."* * * "..text.." ("..vbm_c_w..tid..color..") * * *");
	local i;
	for i=1,tid-1 do
		VBM_DelayByName("WTCD"..extra..i,i,func,color.."* * * "..text.." ("..vbm_c_w..tid-i..color..") * * *");
	end
	VBM_DelayByName("WTCD"..extra..tid,tid,func,color.."* * * "..text.." ("..vbm_c_w.."0"..color..") * * *",0.1);
end

function VBM_WarnTextCountdownClear()
	local i;
	for i=1,9 do
		VBM_DelayRemove("WTCDd"..i);
		VBM_DelayRemove("WTCDi"..i);
		VBM_DelayRemove("WTCDb"..i);
	end
end
--[[
	********************************************************************
			Loop Help
	********************************************************************
]]--

local loopruntimecounter = 0;

local function vbm_looplimitreset()
	loopruntimecounter = 0;
end

function VBM_LoopLimitRun(times,sec)
	loopruntimecounter = loopruntimecounter + 1;
	if(loopruntimecounter > times) then
		return false;
	end
	VBM_DelayByName("LoopLimitRun",sec,vbm_looplimitreset);
	return true;
end

--[[
	********************************************************************
			Boss Target You
	********************************************************************
]]--

function VBM_BossTargetYouWarning(boss,text,say,spell,field)
	local target,i;
	for i = 1, GetNumRaidMembers() do
		if(UnitName("raid"..i.."target") == boss) then
			target = "raid"..i.."target";
			break;
		end
	end
	if(target) then
		local go = true
		if(spell) then
			if(UnitCastingInfo(target)~=spell) then
				go = false;
			end
		end
		if(go) then
			if(UnitName(target.."target")==VBM_YOU) then
				if(text) then
					if(field and field=="info") then
						vbm_infowarn(text);
					elseif(field and field=="debuff") then
						vbm_debuffwarn(text);
					else
						vbm_bigwarn(text);
					end
					VBM_PlaySoundFile(VBM_STANDARD_DONG_SOUND);
				end
				if(say) then
					vbm_say(say);
				end
			end
		end
	end
end

--[[
	********************************************************************
			Raids marks
	********************************************************************
]]--

function VBM_SetMarkOn(uid,mark,tid)
	if (IsRaidLeader() or IsRaidOfficer()) then
		if(mark) then
			SetRaidTarget(uid,mark);
		else
			SetRaidTarget(uid,8);
		end		
		if(tid) then
			VBM_DelayByName("MARKREM"..UnitName(uid),tid,VBM_RemoveMarkOnName,UnitName(uid));
		end
	end
end

function VBM_SetMarkOnName(name,mark,tid)
	local i;
	for i = 1, GetNumRaidMembers() do
		if(UnitName("raid"..i)==name) then
			VBM_SetMarkOn("raid"..i,mark,tid);
			return;
		end
	end
end

function VBM_RemoveMarkOnName(name)
	if (IsRaidLeader() or IsRaidOfficer()) then
		local i;
		for i = 1, GetNumRaidMembers() do
			if(UnitName("raid"..i)==name) then
				SetRaidTarget("raid"..i,0);
			end
		end
	end
end

--[[
	********************************************************************
			Multi Debuff
	********************************************************************
]]--

local multi_debuff = {};
local multi_debuff_c = 0;
local multi_d_tracker = {};

function VBM_Multi_Debuff_Reset()
	multi_debuff = {};
	multi_debuff_c = 0;
	multi_d_tracker = {};
end

local function multi_debuff_reset_showmsg()
	multi_debuff = {};
	multi_debuff_c = 0;
end

local function multi_debuff_showmsg(name,warning,mark,marktime,resettime)
	--copy to a sorted array
	local d = {};
	local a,b;
	for a,b in pairs(multi_debuff) do
		d[#d+1] = a;
	end
	table.sort(d);
	--play sound if first debuff
	if(multi_debuff_c==0 and #d > 0) then
		VBM_PlaySoundFile(VBM_SIMON_SOUND);
	end
	--show message
	if(#d > 0) then
		if(warning=="debuff") then
			vbm_debuffwarn(vbm_c_r..name.." >>"..vbm_c_w..table.concat(d,", ")..vbm_c_r.."<<",10);
		elseif(warning=="big") then
			vbm_bigwarn(vbm_c_r..name.." >>"..vbm_c_w..table.concat(d,", ")..vbm_c_r.."<<",10);
		else
			vbm_infowarn(vbm_c_t..name.." >>"..vbm_c_w..table.concat(d,", ")..vbm_c_t.."<<",10);
		end
	else
		if(warning=="debuff") then
			vbm_cleardebuffwarn();
		elseif(warning=="big") then
			vbm_clearbigwarn();
		else
			vbm_clearinfowarn();
		end
	end
	--set raidmarks
	if(mark) then
		local i;
		for i=1,#d do
			VBM_SetMarkOnName(d[i],8-i,marktime);
		end
	end
	--how many in array
	multi_debuff_c = #d;
	--add reset
	VBM_DelayByName("MULTIDEBUFF",resettime,multi_debuff_reset_showmsg);
end

local function multi_track_go(name,warning,sound,mark,marktime)
	--sort
	table.sort(multi_d_tracker);
	--show warning
	if(warning=="debuff") then
		vbm_debuffwarn(name.." >>"..vbm_c_w..table.concat(multi_d_tracker,", ")..vbm_c_r.."<<");
	elseif(warning=="big") then
		vbm_bigwarn(name.." >>"..vbm_c_w..table.concat(multi_d_tracker,", ")..vbm_c_r.."<<");
	else
		vbm_infowarn(vbm_c_t..name.." >>"..vbm_c_w..table.concat(multi_d_tracker,", ")..vbm_c_t.."<<");
	end
	--play sound
	if(sound) then
		VBM_PlaySoundFile(VBM_SIMON_SOUND);
	end
	--set raidmarks
	if(mark) then
		local i;
		for i=1,#multi_d_tracker do
			VBM_SetMarkOnName(multi_d_tracker[i],8-i,marktime);
		end
	end
	--clear table
	multi_d_tracker = {};
end

function VBM_Multi_Debuff_TrackThose(player,name,warning,sound,mark,marktime,newdebufftime)
	if(not marktime) then marktime = 10; end
	if(not newdebufftime) then newdebufftime = 0.3; end
	
	multi_d_tracker[#multi_d_tracker+1] = player;
	VBM_DelayByName("MultiDebuffTracker",newdebufftime,multi_track_go,name,warning,sound,mark,marktime);
end

function VBM_Multi_Debuff_Add(player,name,warning,mark,arrow,marktime,arrowtime,resettime)
	if(not marktime) then marktime = 10; end
	if(not arrowtime) then arrowtime = 10; end
	if(not resettime) then resettime = 30; end
	
	multi_debuff[player] = 1;
	if(arrow) then
		VBM_BossArrow(player,arrowtime);
	end
	
	multi_debuff_showmsg(name,warning,mark,marktime,resettime);
end

function VBM_Multi_Debuff_Remove(player,name,warning,mark,arrow,marktime,arrowtime,resettime)
	if(not marktime) then marktime = 10; end
	if(not arrowtime) then arrowtime = 10; end
	if(not resettime) then resettime = 30; end
	
	multi_debuff[player] = nil;
	if(arrow) then
		VBM_RemoveArrowByName(player);
	end
	if(mark) then
		VBM_RemoveMarkOnName(player)
	end

	multi_debuff_showmsg(name,warning,mark,marktime,resettime);
end

--[[
	********************************************************************
			Loop Timers
	********************************************************************
]]--

function VBM_LoopTimer_Setup(firsttime,name,extratime,texture)
	if(not texture) then texture = "inv_sword_04"; end
	VBM_BossTimer(firsttime,name,VBM_ICONS..texture);
	VBM_DelayByName(name,firsttime+5,VBM_LoopTimer_Running,name,extratime,texture);
end

function VBM_LoopTimer_Running(name,extratime,texture)
	if(VBM_IsCurrentBossActive()) then
		VBM_BossTimer(extratime-5,name,VBM_ICONS..texture);
		VBM_DelayByName(name,extratime-5+5,VBM_LoopTimer_Running,name,extratime,texture);
	end
end

function VBM_LoopTimer_Remove(name)
	VBM_RemoveTimer(name);
	VBM_DelayRemove(name);
end

--[[
	********************************************************************
			Flash Frame
	********************************************************************
]]--

function VBM_Flash(...)
	if(not VBM_GetS("ScreenFlash")) then return; end

	--get settings
	local arg = {...};
	local nr,time,a,r,g,b = 2,1.5,1,1,0,0;
	if(arg[1]) then nr = arg[1]; end
	if(arg[2]) then time = arg[2]; end
	if(arg[3]) then a = arg[3]; end
	if(arg[4]) then r = arg[4]; end
	if(arg[5]) then g = arg[5]; end
	if(arg[6]) then b = arg[6]; end
	
	--do flash
	if(VBM_GetS("ScreenFlashFull")) then
		local e = VBM_GetS("ScreenFlashFull");
		if(e==2) then
			VBM_FullScreenFlash(nr,time,a*0.75,r,g,b);
		elseif(e==3) then
			VBM_FullScreenFlash(nr,time,a*0.5,r,g,b);
		elseif(e==4) then
			VBM_FullScreenFlash(nr,time,a*0.25,r,g,b);
		else
			VBM_FullScreenFlash(nr,time,a,r,g,b);
		end
	else
		VBM_EdgeFlash(nr,time,1.1);
	end
end

--[[
	********************************************************************
			WarnTextIcon
	********************************************************************
]]--
function VBM_WarnTextIcon(text,icon)
	return VBM_StringIcon(icon).." "..text.." "..VBM_StringIcon(icon)
end