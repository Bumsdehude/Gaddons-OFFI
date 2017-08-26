--[[
	Adds Usefull extra slash commands to VBM and WoW
	
	Allso contains the Info functions
]]--
function VBM_ExtraSlash_Init()
	
	VBM_UnbindBlizzardStuff();
	--vbm dev stuff
	SlashCmdList["VBM_ShowSpellCast"] = VBM_ToggleShowSpellCast; --in ClassExtra.lua
	SLASH_VBM_ShowSpellCast1 = "/spellcast";
	SLASH_VBM_ShowSpellCast2 = "/vbmspellcast";
	--vbm stuff
	SlashCmdList["VBM_versionlist"] = VBM_PrintVersions;
	SLASH_VBM_versionlist1 = "/vbmversion";
	SlashCmdList["VBM_versionlista"] = VBM_PrintVersionsAnnounce;
	SLASH_VBM_versionlista1 = "/vbmversiona";
	SlashCmdList["VBM_SS"] = VBM_Slash_SS;  
	SLASH_VBM_SS1 = "/ss";
	SlashCmdList["VBM_SSa"] = VBM_Slash_SSa;  
	SLASH_VBM_SSa1 = "/ssa";
	SlashCmdList["VisionBossMod_ReloadUI"] = ReloadUI;
	SLASH_VisionBossMod_ReloadUI1 = "/rl";
	SLASH_VisionBossMod_ReloadUI2 = "/reloadui";
	SLASH_VisionBossMod_ReloadUI3 = "/reload";
	SLASH_VisionBossMod_ReloadUI4 = "/rui";
	SLASH_VisionBossMod_ReloadUI5 = "/rlui";
	SlashCmdList["VisionBossMod_LeaveParty"] = LeaveParty;  
	SLASH_VisionBossMod_LeaveParty1 = "/lp";
	SLASH_VisionBossMod_LeaveParty2 = "/lg";
	SlashCmdList["VisionBossMod_ResetInstance"] = VisionBossMod_ResetInstance;
	SLASH_VisionBossMod_ResetInstance1 = "/ri";
	SLASH_VisionBossMod_ResetInstance2 = "/ir";
	SLASH_VisionBossMod_ResetInstance3 = "/reseti";
	SLASH_VisionBossMod_ResetInstance4 = "/ireset";
	SlashCmdList["VisionBossMod_GroupLoot"] = VisionBossMod_setgrouploot; 
	SLASH_VisionBossMod_GroupLoot1 = "/gl";
	SLASH_VisionBossMod_GroupLoot2 = "/group"; 
	SLASH_VisionBossMod_GroupLoot3 = "/groupl"; 
	SLASH_VisionBossMod_GroupLoot4 = "/grouploot"; 
	SLASH_VisionBossMod_GroupLoot5 = "/gloot";
	SlashCmdList["VisionBossMod_MasterLoot"] = VisionBossMod_setmasterloot; 
	SLASH_VisionBossMod_MasterLoot1 = "/ml";
	SlashCmdList["VisionBossMod_AcceptRess"] = AcceptResurrect;
	SLASH_VisionBossMod_AcceptRess1 = "/ress";
	SlashCmdList["VisionBossMod_ConfirmSummon"] = ConfirmSummon;
	SLASH_VisionBossMod_ConfirmSummon1 = "/sum";
	SLASH_VisionBossMod_ConfirmSummon2 = "/summ";
	SLASH_VisionBossMod_ConfirmSummon3 = "/summon";
	SlashCmdList["VisionBossMod_RepopMe"] = RepopMe;
	SLASH_VisionBossMod_RepopMe1 = "/rel";
	SLASH_VisionBossMod_RepopMe2 = "/release";
	SlashCmdList["VisionBossMod_HeroicToggle"] = VBM_Set_Heroic;
	SLASH_VisionBossMod_HeroicToggle1 = "/h";
	SLASH_VisionBossMod_HeroicToggle2 = "/heroic";
	SLASH_VisionBossMod_HeroicToggle3 = "/h5";
	SLASH_VisionBossMod_HeroicToggle4 = "/5h";
	SlashCmdList["VisionBossMod_NormalToggle"] = VBM_Set_Normal;
	SLASH_VisionBossMod_NormalToggle1 = "/normal";
	SLASH_VisionBossMod_NormalToggle2 = "/n";
	SLASH_VisionBossMod_NormalToggle3 = "/n5";
	SLASH_VisionBossMod_NormalToggle4 = "/5n";
	SlashCmdList["VisionBossMod_Normal10Toggle"] = VBM_Set_Normal10;
	SLASH_VisionBossMod_Normal10Toggle1 = "/n10";
	SLASH_VisionBossMod_Normal10Toggle2 = "/10n";
	SlashCmdList["VisionBossMod_Heroic10Toggle"] = VBM_Set_Heroic10;
	SLASH_VisionBossMod_Heroic10Toggle1 = "/h10";
	SLASH_VisionBossMod_Heroic10Toggle2 = "/10h";
	SlashCmdList["VisionBossMod_Normal25Toggle"] = VBM_Set_Normal25;
	SLASH_VisionBossMod_Normal25Toggle1 = "/n25";
	SLASH_VisionBossMod_Normal25Toggle2 = "/25n";
	SlashCmdList["VisionBossMod_Heroic25Toggle"] = VBM_Set_Heroic25;
	SLASH_VisionBossMod_Heroic25Toggle1 = "/h25";
	SLASH_VisionBossMod_Heroic25Toggle2 = "/25h";
	SlashCmdList["VisionBossMod_NotNearMe"] = VBM_NotNearMe;
	SLASH_VisionBossMod_NotNearMe1 = "/nm";
	SlashCmdList["VisionBossMod_NotNearMea"] = VBM_NotNearMea;
	SLASH_VisionBossMod_NotNearMea1 = "/nma";
	SlashCmdList["VisionBossMod_CallRandomPet"] = VBM_CallRandomPet;
	SLASH_VisionBossMod_CallRandomPet1 = "/rp";
	SLASH_VisionBossMod_CallRandomPet2 = "/randompet";
	SlashCmdList["VisionBossMod_LeaveVehicle"] = VehicleExit;
	SLASH_VisionBossMod_LeaveVehicle1 = "/lv";
	SLASH_VisionBossMod_LeaveVehicle2 = "/lm";
	SLASH_VisionBossMod_LeaveVehicle3 = "/leavem";
	SLASH_VisionBossMod_LeaveVehicle4 = "/leavev";
	SLASH_VisionBossMod_LeaveVehicle5 = "/leavemount";
	SLASH_VisionBossMod_LeaveVehicle6 = "/leavevehicle";
	SlashCmdList["VisionBossMod_SellGrey"] = VBM_SellGrey;
	SLASH_VisionBossMod_SellGrey1 = "/sellgrey";
	--used by a vbm warlock setting
	SlashCmdList["VisionBossMod_AutoTradeHS"] = VBM_AutoHSOpenTrade;
	SLASH_VisionBossMod_AutoTradeHS1 = "/hs";
	--raidleader
	SlashCmdList["VisionBossMod_LeaderRoll"] = VBM_MakeLeaderRoll;
	SLASH_VisionBossMod_LeaderRoll1 = "/lr";
	SlashCmdList["VisionBossMod_LeaderRollList"] = VBM_MakeLeaderRollList;
	SLASH_VisionBossMod_LeaderRollList1 = "/lrlist";
	SlashCmdList["VisionBossMod_DisbandRaid"] = VBM_DisbandRaid;
	SLASH_VisionBossMod_DisbandRaid1 = "/vbmdisband";
	SlashCmdList["VisionBossMod_Pull"] = VBM_SetUpPull;
	SLASH_VisionBossMod_Pull1 = "/pull";
	SlashCmdList["VisionBossMod_SetRaidTarget"] = VBM_SlashSetMark;
	SLASH_VisionBossMod_SetRaidTarget1 = "/mark";
	SlashCmdList["VisionBossMod_ConvertRaid"] = VBM_ConvertRaid;
	SLASH_VisionBossMod_ConvertRaid1 = "/cr";
	SLASH_VisionBossMod_ConvertRaid2 = "/convert";
	SlashCmdList["VisionBossMod_PromoteAllRaid"] = VBM_PromoteAllRaid;
	SLASH_VisionBossMod_PromoteAllRaid1 = "/aaa";
end

function VBM_Slashcommandinfo()
	local text = "\n"..
	"|cFF00FF00VBM: |cFFFFFFFF/vbmupdate |cFFFFFF00(Request manual update), |cFFFFFFFF/vbmcpuoff |cFFFFFF00(Turn off cpu profileing)\n"..
	"|cFF00FF00VersionInfo: |cFFFFFFFF/vbmversion |cFFFFFF00(show), |cFFFFFFFF/vbmversiona |cFFFFFF00(announce)\n"..
	"|cFF00FF00StatusFrame: |cFFFFFFFF/vbm |cFFFFFF00(toggle vbm frame)\n"..
	"|cFF00FF00VBMTV: |cFFFFFFFF/vbmtv, /tv |cFFFFFF00(toggle VBM TV frame)\n"..
	"|cFF00FF00RangeCheck: |cFFFFFFFF/rcon, /rcoff, /rcmouse\n"..
	"|cFF00FF00Soulstone: |cFFFFFFFF/ss |cFFFFFF00(check), |cFFFFFFFF/ssa |cFFFFFF00(announce)\n"..
	"|cFF00FF00Near Me Check: |cFFFFFFFF/nm |cFFFFFF00(check), |cFFFFFFFF/nma |cFFFFFF00(announce)\n"..
	"|cFF00FF00ReloadUI: |cFFFFFFFF/rl, /reloadui, /reload, /rui, /rlui\n"..
	"|cFF00FF00LeaveParty: |cFFFFFFFF/lp, /lg\n"..
	"|cFF00FF00AcceptResurrect: |cFFFFFFFF/ress |cFFFFFF00(May work if you don't get a Accept Popup)\n"..
	"|cFF00FF00AcceptSummon: |cFFFFFFFF/sum, /summ, /summon\n"..
	"|cFF00FF00ReleaseSpirit: |cFFFFFFFF/rel, /release\n"..
	"|cFF00FF00Cast a random pet: |cFFFFFFFF/rp, /randompet |cFFFFFF00(/rp *nr* or /rp *name* to call specific pets)\n"..
	"|cFF00FF00Leave Vehicle: |cFFFFFFFF/lv, /lm, /leavevehicle, /leavemount\n"..
	"|cFF00FF00SellGrey: |cFFFFFFFF/sellgrey |cFFFFFF00(Sell all grey items in inventory)\n"..
	"";
	ShowUIPanel(VisionBossMod_TextBoxTT);
	if ( not VisionBossMod_TextBoxTT:IsVisible() ) then
		VisionBossMod_TextBoxTT:SetOwner(UIParent, "ANCHOR_PRESERVE");
	end
	
	VisionBossMod_TextBoxTT:SetText("VisionBossMod Extra Slash Commands");
	VisionBossMod_TextBoxTT:AddLine(text, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, 1);
	
	VisionBossMod_TextBoxTT:SetWidth(550);
	VisionBossMod_TextBoxTT:SetHeight(240);
end		

function VisionBossMod_PrintOfficerInfo()
	local text = "\n"..
	vbm_c_t.."Officer chat commands\n"..
	"|cFFFFFFFF!a |cFFFFFF00(Request raidassist)\n"..
	"|cFFFFFFFF!promote *name* or !p *name* |cFFFFFF00(Raidpromote name)\n"..
	"|cFFFFFFFF!kick *name* or !k *name* |cFFFFFF00(Raidkick name)\n"..
	vbm_c_t.."Raidleader and Raidofficer info:\n"..
	"|cFF00FF00Remote Logout: |cFFFFFFFF/vbmrl *name* |cFFFFFF00(sends a remote logout request)\n"..
	"|cFF00FF00LeaderRoll: |cFFFFFFFF/lr |cFFFFFF00(Do leader roll) |cFFFFFFFF/lrlist |cFFFFFF00(To show numbers in chat)\n"..
	"|cFF00FF00Pull Countdown: |cFFFFFFFF/pull *time* |cFFFFFF00(in raidwarning, if you skip time it will use last)\n"..
	"|cFF00FF00Disband Raid: |cFFFFFFFF/vbmdisband |cFFFFFF00(Shows Confirm Dialog)\n"..
	"|cFF00FF00Convert to Raid: |cFFFFFFFF/cr, /convert\n"..
	"|cFF00FF00Promote everyone to assist: |cFFFFFFFF/aaa\n"..
	"|cFF00FF00GroupLoot: |cFFFFFFFF/gl, /group, /groupl, /grouploot, /gloot\n"..
	"|cFF00FF00MasterLoot: |cFFFFFFFF/ml\n"..
	"|cFF00FF00ResetInstance: |cFFFFFFFF/ri, /ir, /reseti, /ireset\n"..
	"|cFF00FF00SetHeroic: |cFFFFFFFF/h(nr), /(nr)h |cFFFFFF00(Nr can be 5, 10 and 25)\n"..
	"|cFF00FF00SetNormal: |cFFFFFFFF/n(nr), /(nr)n |cFFFFFF00(Nr can be 5, 10 and 25)\n"..
	"|cFF00FF00Set Raid Mark: |cFFFFFFFF/mark *nr* |cFFFFFF00(On your target, marks 0-8 (defualt 8)(0 removes))\n"..
	"";
	ShowUIPanel(VisionBossMod_TextBoxTT);
	if ( not VisionBossMod_TextBoxTT:IsVisible() ) then
		VisionBossMod_TextBoxTT:SetOwner(UIParent, "ANCHOR_PRESERVE");
	end
	VisionBossMod_TextBoxTT:SetText("VisionBossMod Officer Info");
	VisionBossMod_TextBoxTT:AddLine(text, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, 1);
	
	VisionBossMod_TextBoxTT:SetWidth(550);
	VisionBossMod_TextBoxTT:SetHeight(260);
end

function VisionBossMod_PrintRaidModesInfo()
	local text = "\n"..
	vbm_c_g.."Local RaidMode commands\n"..
	vbm_c_w.."/rmlist "..vbm_c_y.."(List active raidmodes)\n"..
	vbm_c_w.."/rmcmd "..vbm_c_y.."(Enter a raidmode command (Only works outside raidgroups))\n"..
	vbm_c_g.."Raid commands\n"..
	vbm_c_y.."Enter commands in raidchat with + or - as prefix, you need to be raidleader or raidofficer.\n"..
	vbm_c_y.."If you leave out player name it will be defaulted to yourself\n"..
	vbm_c_w.."-all "..vbm_c_y.."(Removes all active raidmodes)\n"..
	vbm_c_w.."+mark *playername* (optional)mark (optional)mode\n"..
		vbm_c_y.."Enables auto raidmark targets for playername (name can be all if used with -mark):\n"..
		vbm_c_y.."  mark:"..vbm_c_w.." star/circle/diamond/triangle/moon/square/cross/skull "..vbm_c_y.."or "..vbm_c_w.."1-8 "..vbm_c_y.."(Default=highest unused)\n"..
		vbm_c_y.."  mode:"..vbm_c_w.." ol (Default)"..vbm_c_y.."(Overide lesser mark numbers)\n"..
		vbm_c_w.."        oa "..vbm_c_y.."(Overide all marks)\n"..
		vbm_c_w.."        no "..vbm_c_y.."(No overide)\n"..
	vbm_c_w.."+group *playername* *groupnr*\n"..
		vbm_c_y.."Assign a player to a specific group, this is used by some boss functions where\n"..
		vbm_c_y.."group number matters. Example: Bloodboil and Kalecgos\n"..
	"";
	ShowUIPanel(VisionBossMod_TextBoxTT);
	if ( not VisionBossMod_TextBoxTT:IsVisible() ) then
		VisionBossMod_TextBoxTT:SetOwner(UIParent, "ANCHOR_PRESERVE");
	end
	VisionBossMod_TextBoxTT:SetText("VisionBossMod RaidModes Info");
	VisionBossMod_TextBoxTT:AddLine(text, NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b, 1);
	
	VisionBossMod_TextBoxTT:SetWidth(600);
	VisionBossMod_TextBoxTT:SetHeight(300);
end

function VBM_UnbindBlizzardStuff()
	SLASH_HELP1 = "/?"; -- Help
	SLASH_HELP2 = "/help"; -- Help
	SLASH_HELP3 = "/?"; -- Help
	SLASH_HELP4 = "/?"; -- Help
	SLASH_HELP5 = "/?"; -- Help
	SLASH_HELP6 = "/help"; -- Help
end

--[[
	Functions
]]--

function VBM_PromoteAllRaid()
	if(IsRaidLeader()) then
		local i;
		for i=1,GetNumRaidMembers() do
			PromoteToAssistant("raid"..i);
		end
	else
		vbm_printc("ERROR: You are not raid leader.");
	end
end

function VBM_SlashSetMark(msg)
	local mark = 8;
	local num = tonumber(msg);
	if(num and num >= 0 and num < 8) then
		mark = num;
	end
	SetRaidTarget("target",mark);
end

function VBM_Set_Heroic()
	SetDungeonDifficulty(2);
end

function VBM_ConvertRaid()
	ConvertToRaid();
end

function VBM_Set_Normal()
	SetDungeonDifficulty(1);
end

function VBM_Set_Normal10()
	SetRaidDifficulty(1);
end

function VBM_Set_Normal25()
	SetRaidDifficulty(2);
end

function VBM_Set_Heroic10()
	SetRaidDifficulty(3);
end

function VBM_Set_Heroic25()
	SetRaidDifficulty(4);
end

function VisionBossMod_setmasterloot()
	SetLootMethod("master",UnitName("player"));
end

function VisionBossMod_setgrouploot(msg)
	SetLootMethod("group");
end

function VBM_PrintVersions(msg,_,announce)
	local name,nr_v,version,vl,vl_names,sub_vl,i,text;

	vl = {};
	vl_names = {};
	--building list
	local i;
	for i=1,GetNumRaidMembers() do
		name = GetRaidRosterInfo(i); --get name
		--if raid member doesnt have a version add version 0
		if(VBM_VERSION_LIST[name]==nil) then VBM_VERSION_LIST[name] = 0; end
		--check if we found another version and add them to list		
		if(vl_names[VBM_VERSION_LIST[name]]==nil) then 
			vl_names[VBM_VERSION_LIST[name]] = {}; --add a new table to name list
			table.insert(vl,VBM_VERSION_LIST[name]); --and the new version to version list
		end
		-- add the name to the correct version table
		table.insert(vl_names[VBM_VERSION_LIST[name]],name);
	end
	table.sort(vl); --sorting
	--keep track how many diffrent versions we have
	nr_v = table.getn(vl);
	i = 1;
	--loop through diffrent versions list
	for _,version in pairs(vl) do
		sub_vl = vl_names[version]; --get name list for this version
		table.sort(sub_vl); --sort namelist
		--and correct prefix to textstring and if we are in announce mode dont and colors
		if(version==0) then
			if(announce) then text = "Dont have VBM: "; else text = vbm_c_r.."Dont have VBM: "..vbm_c_w; end
		elseif(i == nr_v) then
			if(announce) then text = "Using latest version ("..version.."): "; else text = vbm_c_g.."Using latest version ("..version.."): "..vbm_c_w; end
		else
			if(announce) then text = "("..version.."): "; else text = "|cFF7F7F00("..version.."): "..vbm_c_w; end
		end
		--add all names
		for _,name in pairs(sub_vl) do
			text = text..name.." ";
		end
		--print out text
		if(announce) then
			vbm_sendchat(text);
		else
			vbm_print(text);
		end
		--count up counter
		i = i + 1;
	end
end

function VBM_PrintVersionsAnnounce(msg)
	VBM_PrintVersions(msg,nil,true);
end

function VBM_Slash_SS(msg,_,...)
	local arg = {...};
	
	local ss = false;
	local i;
	--check raid
	
	for i=1,GetNumRaidMembers() do
		if(VBM_CheckForBuff("Soulstone Resurrection","raid"..i)) then
			if(ss==false) then
				ss = GetRaidRosterInfo(i);
			else
				ss = ss..", "..GetRaidRosterInfo(i);
			end
		end
	end
	
	--if not found check party
	if(not ss) then
		--check party members
		for i=1,GetNumPartyMembers() do
			if(VBM_CheckForBuff("Soulstone Resurrection","party"..i)) then
				if(ss==false) then
					ss = UnitName("party"..i);
				else
					ss = ss..", "..UnitName("party"..i);
				end
			end
		end
		--check player
		if(VBM_CheckForBuff("Soulstone Resurrection","player")) then
			if(ss==false) then
				ss = UnitName("player");
			else
				ss = ss..", "..UnitName("player");
			end
		end
	end
	
	--print out result
	if(ss) then
		if(arg[1]) then
			vbm_sendchat("Soulstone found on: "..ss);
		else
			vbm_print("|cFF8888CC<VisionBossMod> Soulstone found on: |cFFFFFFFF"..ss);
		end
	else
		if(arg[1]) then
			vbm_sendchat("No Soulstone found");
		else
			vbm_print("|cFF8888CC<VisionBossMod> No Soulstone found");
		end
	end
end

function VBM_Slash_SSa(msg)
	VBM_Slash_SS(msg,nil,true);
end

function VisionBossMod_ResetInstance()
	ResetInstances();
end

function VBM_NotNearMea(msg)
	VBM_NotNearMe(msg,nil,true);
end

function VBM_NotNearMe(msg,_,...)
	local arg = {...};
	local annaounce = false;
	if(arg[1]) then
		annaounce = true;
	end
	
	local not_in_raid = "";
	local not_visible = "";
	local c_vis,c_near = 0,0;
	for r_m=1,GetNumRaidMembers() do
		if(not UnitIsVisible("raid"..r_m)) then
			not_visible = not_visible..UnitName("raid"..r_m).." ";
			c_vis = c_vis+1;
		elseif(not UnitInRange("raid"..r_m)) then
			not_in_raid = not_in_raid..UnitName("raid"..r_m).." ";
			c_near = c_near +1;
		end
	end
	if(annaounce) then
		if(c_vis==0) then
			vbm_sendchat("Everyone within visible range");
		else
			vbm_sendchat("Not within visible range: "..not_visible);
		end
		if(c_near==0) then
			vbm_sendchat("Everyone within 40yrd");
		else
			vbm_sendchat("Not within 40yrd: "..not_in_raid);
		end
	else
		if(c_vis==0) then
			vbm_printc("Everyone within visible range");
		else
			vbm_printc("Not within visible range: "..vbm_c_w..not_visible);
		end
		if(c_near==0) then
			vbm_printc("Everyone within 40yrd");
		else
			vbm_printc("Not within 40yrd: "..vbm_c_w..not_in_raid);
		end
	end
end

function VBM_CallRandomPet(text)
	local np = GetNumCompanions("CRITTER");
	local tonr = tonumber(text);
	if(np>0) then
		local creatureName, petid, ran_max;
		if(type(text)=="nil" or text=="") then
			--Call a random pet
			local ran = math.random(1,np);
			ran_max = np;
			_, creatureName = GetCompanionInfo("CRITTER", ran);
			petid = ran;
			CallCompanion("CRITTER",ran);
		elseif(type(tonr)=="number") then
			--call specific pet
			if(tonr==0) then
				return VBM_CallRandomPet();
			end
			_, creatureName = GetCompanionInfo("CRITTER", tonr);
			petid = tonr;
			CallCompanion("CRITTER",tonr);
		else
			--search for all pets with search string
			local pets = {};
			local i;
			for i=1,np do
				_, creatureName = GetCompanionInfo("CRITTER", i);
				if(string.find(string.lower(creatureName), string.lower(text), 1, true)) then
					pets[#pets+1] = i;
				end
			end
			if(#pets>0) then
				local ran = pets[math.random(1,#pets)];
				ran_max = #pets;
				_, creatureName = GetCompanionInfo("CRITTER", ran);
				petid = ran;
				CallCompanion("CRITTER",ran);
			else
				vbm_printc("Error no pets found: "..vbm_c_r..text);
				return;
			end
		end
		if(creatureName) then
			vbm_printc("Calling pet "..vbm_c_w..creatureName..vbm_c_p.." ("..vbm_c_g..petid..vbm_c_p..")"..((ran_max and ran_max>1 and " ("..vbm_c_w..ran_max..vbm_c_p.." matches)") or ""));
		elseif(petid) then
			vbm_printc("Error pet ("..vbm_c_r..petid..vbm_c_p..") not found.");
		end
	end
end

function VBM_DisbandRaid()
	if(IsRaidLeader()) then
		StaticPopupDialogs["VBM_CONFIRM_RAIDDISBAND"] = {
		  text = "Are you sure you want to disband raid?",
		  button1 = "Yes",
		  button2 = "No",
		  OnAccept = function()
			vbm_sendchat("* * * Disbanding Raid * * *");
			for i=GetNumRaidMembers()-1,1,-1 do
				UninviteUnit("raid"..i);
			end
			vbm_printc("RaidDisband: complete");
		  end,
		  timeout = 0,
		  whileDead = 1,
		  hideOnEscape = 1,
		};
		StaticPopup_Show("VBM_CONFIRM_RAIDDISBAND");
	else
		vbm_printc("RaidDisband Error: You are not RaidLeader");
	end
end

function VBM_SetUpPull(time)
	if(IsRaidLeader() or IsRaidOfficer()) then
		if(time=="") then
			--do last pull
			vbm_raidwarn("* * Pull in "..VBMSettings['PullCD'].." seconds * *");
			vbm_sendchat("Pull countdown started type '!abort' to abort.");
			VBM_PULLRUNNING = nil;
			VBM_PerformPullCD(VBMSettings['PullCD']);
		else
			--do new pull
			local nr = tonumber(time);
			if(nr) then
				if(nr<1 or nr>1200) then
					vbm_printc("Pull error: Enter a number between 1-1200");
				else
					VBMSettings['PullCD'] = nr;
					vbm_raidwarn("* * Pull in "..VBMSettings['PullCD'].." seconds * *");
					vbm_sendchat("Pull countdown started type '!abort' to abort.");
					VBM_PULLRUNNING = nil;
					VBM_PerformPullCD(VBMSettings['PullCD']);
				end
			else
				vbm_printc("Pull error: Enter a number between 1-120");
			end
		end
	else
		vbm_printc("Pull error: You are not Leader or Promoted");
	end
end

function VBM_PerformPullCD(time)
	if(time>15) then
		local next = math.fmod(time,15);
		if(next==0) then next = 15; end
		VBM_DelayByName("Pull",next,VBM_PerformPullCD,time-next);
		if(VBM_PULLRUNNING) then
			vbm_raidwarn(">> "..time.." seconds <<");
		end
	elseif(time>10) then
		local next = time-10;
		VBM_DelayByName("Pull",next,VBM_PerformPullCD,time-next);
		if(VBM_PULLRUNNING) then
			vbm_raidwarn(">> "..time.." seconds <<");
		end
	elseif(time>0) then
		VBM_DelayByName("Pull",1,VBM_PerformPullCD,time-1);
		if(VBM_PULLRUNNING) then
			vbm_raidwarn(">> "..time.." <<");
		end
	else
		if(VBM_PULLRUNNING) then
			vbm_raidwarn("Pull!");
		end
		VBM_PULLRUNNING = nil;
		return;
	end
	VBM_PULLRUNNING = true;
end

function VBM_AbortPullCD(msg)
	if(string.lower(msg)=="!abort") then
		if(VBM_PULLRUNNING) then
			vbm_raidwarn("Abort! Abort!");
			VBM_PULLRUNNING = nil;
			VBM_DelayRemove("Pull");
		end
	end
end

function VBM_SellGrey()
	if(not MerchantFrame:IsShown()) then
		vbm_printc("Visit a vendor first");
		return;
	end
	local bag,slot,item;
	for bag=0,NUM_BAG_SLOTS do
		for slot=1,GetContainerNumSlots(bag) do
			item = GetContainerItemLink(bag,slot);
			if(item) then
				local itemName, itemLink, itemRarity = GetItemInfo(item);
				if(itemRarity==0) then
					vbm_printc("Auto Selling: "..item);
					UseContainerItem(bag,slot);
				end
			end
		end
	end
end

function VBM_EasterEggs(msg)
	local text = string.lower(msg);
	if(text == "!fisker") then
		--vbm_sendchatnovbm("Hej jag heter Christer Eriksson, och jag är proffs på datorspel.");
		--vbm_sendchatnovbm("Kom igen nudå! Håll tanksen! Näe..");
	end
end