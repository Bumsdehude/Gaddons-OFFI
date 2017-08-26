--[[
	/////////////////////////////
	PetBar Fix
	/////////////////////////////
]]--

function VBM_ApplyPetBarFix()
	if(VBM_GetS("PetBarFix")) then
		if(PetActionBarFrame:GetAttribute("unit") ~= "pet") then
			if(InCombatLockdown()) then
				VBM_DelayByName("PetBarFix",5,VBM_ApplyPetBarFix);
			else
				PetActionBarFrame:SetAttribute("unit", "pet");
				RegisterUnitWatch(PetActionBarFrame);
				vbm_verbosec("PetBarFix applied");
			end
		end
	end
end


--[[
	/////////////////////////////
	BoS Tanking warning
	/////////////////////////////
]]--

function VBM_BoSTankWarning()
	if(not VBM_GetS("BoSWarning")) then return; end
	if(arg1 == "target" or arg1 == "player") then
		if(arg1 == "player") then
			VBM_DelayRemove("BoSWarning");
		end
		if(UnitExists("target") and not UnitIsPlayer("target") and UnitIsEnemy("target","player")) then
			if(UnitExists("targettarget") and UnitIsUnit("player","targettarget")) then
				if(VBM_CheckForBuff("Blessing of Salvation","player")) then
					VBM_DelayByName("BoSWarning",5,VBM_BoSTankWarningDelayed);
				end
			end
		end
	end
end

function VBM_BoSTankWarningDelayed()
	if(UnitExists("target") and not UnitIsPlayer("target") and UnitIsEnemy("target","player")) then
		if(UnitExists("targettarget") and UnitIsUnit("player","targettarget")) then
			if(VBM_CheckForBuff("Blessing of Salvation","player")) then
				vbm_infowarn("You are tanking with Blessing of Salvation",5,1,0,0);
				vbm_printc("You are tanking with |cFFFFFFFFBlessing of Salvation");
			end
		end
	end
end

--[[
	/////////////////////////////
	Switch Slash Command
	/////////////////////////////
]]--

function VBM_SwitchRaid(text)
	if(IsRaidLeader() or IsRaidOfficer()) then
		local found,p1,p2;
		found,_,p1,p2 = string.find(text,"(.+) (.+)");
		if(found) then
			local g1 = VBM_GetRaidId(p1);
			local g2 = VBM_GetRaidId(p2);
			if(not g1) then
				vbm_printc("Switch error: Can't find |cFFFFFFFF"..p1);
				return;
			end
			if(not g2) then
				vbm_printc("Switch error: Can't find |cFFFFFFFF"..p2);
				return;
			end
			SwapRaidSubgroup(g1, g2);
			vbm_printc("Switched: |cFFFFFFFF"..p1.." |cFF8888CCand |cFFFFFFFF"..p2);
		else
			vbm_printc("Switch error: Can't parse out 2 names");
		end
	else
		vbm_printc("Switch error: You are not Leader or Promoted");
	end
end