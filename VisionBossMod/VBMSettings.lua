--[[
	********************************************************************
	********************************************************************
	Handles Slash commands and settings menu	
	********************************************************************
	********************************************************************
]]--
local VBMSettings;
local VBM_CHAR_SAVE;
function VBM_Settings_SetDefaults()
	if(not _G["VBMSettings"]) then _G["VBMSettings"] = {}; end
	VBMSettings = _G["VBMSettings"];
	if(not _G["VBM_CHAR_SAVE"]) then _G["VBM_CHAR_SAVE"] = {}; end
	VBM_CHAR_SAVE = _G["VBM_CHAR_SAVE"];
	--VBM SETTINGS
	if(VBMSettings['QuickAccess'] == nil) then VBMSettings['QuickAccess'] = 0; end
	if(VBMSettings['EchoSettingsChanged'] == nil) then VBMSettings['EchoSettingsChanged'] = 1; end
	if(VBMSettings['Sound'] == nil) then VBMSettings['Sound'] = 1; end
	if(VBMSettings['ShowGMOTD'] == nil) then VBMSettings['ShowGMOTD'] = 1; end
	if(VBMSettings['ScreenFlash'] == nil) then VBMSettings['ScreenFlash'] = 1; end
	if(VBMSettings['ScreenFlashFull'] == nil) then VBMSettings['ScreenFlashFull'] = 1; end
	if(VBMSettings['GroupLootWarn'] == nil) then VBMSettings['GroupLootWarn'] = 0; end
	if(VBMSettings['MasterLootReminder'] == nil) then VBMSettings['MasterLootReminder'] = 0; end
	if(VBMSettings['Respons'] == nil) then VBMSettings['Respons'] = "Normal"; end
	if(VBMSettings['WarningTextScale'] == nil) then VBMSettings['WarningTextScale'] = 1; end
	if(VBMSettings['WarningTextFont'] == nil) then VBMSettings['WarningTextFont'] = "Fonts\\FRIZQT__.TTF"; end
	if(VBMSettings['WarningTextExtraSpace'] == nil) then VBMSettings['WarningTextExtraSpace'] = 0; end
	if(VBMSettings['WarningTextAnchor'] == nil) then VBMSettings['WarningTextAnchor'] = 0; end
	--StatusFrame Settings
	if(VBMSettings['SFLocked'] == nil) then VBMSettings['SFLocked'] = 0; end
	if(VBMSettings['SFHideBorder'] == nil) then VBMSettings['SFHideBorder'] = 0; end
	if(VBMSettings['DisplayTimeElapsed'] == nil) then VBMSettings['DisplayTimeElapsed'] = 0; end
	if(VBMSettings['AutoShowSF'] == nil) then VBMSettings['AutoShowSF'] = 0; end
	--Blizzard UI enhancements
	if(VBMSettings['AltInvite'] == nil) then VBMSettings['AltInvite'] = 0; end
	if(VBMSettings['BackgroundWorldState'] == nil) then VBMSettings['BackgroundWorldState'] = 0; end
	if(VBMSettings['RemoveDeclineRess'] == nil) then VBMSettings['RemoveDeclineRess'] = 0; end
	if(VBMSettings['AutoSetCameraDistance'] == nil) then VBMSettings['AutoSetCameraDistance'] = 0; end
	if(VBMSettings['DisableBlizzardWarnText'] == nil) then VBMSettings['DisableBlizzardWarnText'] = 0; end
	if(VBMSettings['ErrorMessageDisabler'] == nil) then VBMSettings['ErrorMessageDisabler'] = 0; end
		--Error Message Disabler
		if(VBMSettings['ErrorMessAbilityNotReady'] == nil) then VBMSettings['ErrorMessAbilityNotReady'] = 0; end 
		if(VBMSettings['ErrorMessAnotherAction'] == nil) then VBMSettings['ErrorMessAnotherAction'] = 0; end
		if(VBMSettings['ErrorMessItemNotReady'] == nil) then VBMSettings['ErrorMessItemNotReady'] = 0; end
		if(VBMSettings['ErrorMessNotEnergy'] == nil) then VBMSettings['ErrorMessNotEnergy'] = 0; end
		if(VBMSettings['ErrorMessNotRage'] == nil) then VBMSettings['ErrorMessNotRage'] = 0; end
		if(VBMSettings['ErrorMessSpellNotReady'] == nil) then VBMSettings['ErrorMessSpellNotReady'] = 0; end
		--Minimap Button Hider
		if(VBMSettings['WorldMapButton'] == nil) then VBMSettings['WorldMapButton'] = 0; end
		if(VBMSettings['TrackingButton'] == nil) then VBMSettings['TrackingButton'] = 0; end
		if(VBMSettings['CalendarButton'] == nil) then VBMSettings['CalendarButton'] = 0; end
		if(VBMSettings['ZoomInButton'] == nil) then VBMSettings['ZoomInButton'] = 0; end
		if(VBMSettings['ZoomOutButton'] == nil) then VBMSettings['ZoomOutButton'] = 0; end
		if(VBMSettings['MinimapTopBorder'] == nil) then VBMSettings['MinimapTopBorder'] = 0; end
		if(VBMSettings['MinimapBorder'] == nil) then VBMSettings['MinimapBorder'] = 0; end
		if(VBMSettings['MinimapToggleButton'] == nil) then VBMSettings['MinimapToggleButton'] = 0; end
		if(VBMSettings['MinimapZoneText'] == nil) then VBMSettings['MinimapZoneText'] = 0; end
		if(VBMSettings['LFGButton'] == nil) then VBMSettings['LFGButton'] = 0; end
		if(VBMSettings['InstanceDiffButton'] == nil) then VBMSettings['InstanceDiffButton'] = 0; end
		if(VBMSettings['MailButton'] == nil) then VBMSettings['MailButton'] = 0; end
		if(VBMSettings['BattlefieldButton'] == nil) then VBMSettings['BattlefieldButton'] = 0; end
	--Combat log parsing
	if(VBMSettings['BuffAlerter'] == nil) then VBMSettings['BuffAlerter'] = 0; end
	if(VBMSettings['SSDIAlert'] == nil) then VBMSettings['SSDIAlert'] = 0; end
	if(VBMSettings['CCBigBrother'] == nil) then VBMSettings['CCBigBrother'] = 0; end
	if(VBMSettings['CCBigBrotherHS'] == nil) then VBMSettings['CCBigBrotherHS'] = 0; end
	if(VBMSettings['CCBigBrotherFT'] == nil) then VBMSettings['CCBigBrotherFT'] = 0; end
	if(VBMSettings['CCBigBrotherPT'] == nil) then VBMSettings['CCBigBrotherPT'] = 0; end
	if(VBMSettings['InterruptWatcher'] == nil) then VBMSettings['InterruptWatcher'] = 0; end
	if(VBMSettings['InterruptWatcherHS'] == nil) then VBMSettings['InterruptWatcherHS'] = 0; end
	if(VBMSettings['InterruptWatcherFT'] == nil) then VBMSettings['InterruptWatcherFT'] = 0; end
	if(VBMSettings['InterruptWatcherPT'] == nil) then VBMSettings['InterruptWatcherPT'] = 0; end
	if(VBMSettings['InterruptWatcherAnnounce'] == nil) then VBMSettings['InterruptWatcherAnnounce'] = 0; end
	if(VBMSettings['MisdirectionAlert'] == nil) then VBMSettings['MisdirectionAlert'] = 0; end
	if(VBMSettings['TricksoftheTradeAlert'] == nil) then VBMSettings['TricksoftheTradeAlert'] = 0; end
	if(VBMSettings['ToyTrainSet'] == nil) then VBMSettings['ToyTrainSet'] = 0; end
	--Auto Popups
	--Interface Addons
	if(VBMSettings['AutoRepair'] == nil) then VBMSettings['AutoRepair'] = 0; end
	if(VBMSettings['AutoRepairSave5g'] == nil) then VBMSettings['AutoRepairSave5g'] = 0; end
	if(VBMSettings['AutoRepairUseGBank'] == nil) then VBMSettings['AutoRepairUseGBank'] = 0; end
	if(VBMSettings['AutoSoloBoPLoot'] == nil) then VBMSettings['AutoSoloBoPLoot'] = 0; end
	if(VBMSettings['BGJoinReplacement'] == nil) then VBMSettings['BGJoinReplacement'] = 0; end
	if(VBMSettings['KillBlizzardJoinPopup'] == nil) then VBMSettings['KillBlizzardJoinPopup'] = 0; end
	if(VBMSettings['AutoLootSelect'] == nil) then VBMSettings['AutoLootSelect'] = 0; end
	if(VBMSettings['LootSelectOption'] == nil) then VBMSettings['LootSelectOption'] = "Pass"; end 
	if(VBMSettings['LootSelectNoEpic'] == nil) then VBMSettings['LootSelectNoEpic'] = 0; end
	if(VBMSettings['LootSelectAutoGreed'] == nil) then VBMSettings['LootSelectAutoGreed'] = 0; end
	if(VBMSettings['LootSelectAutoDiss'] == nil) then VBMSettings['LootSelectAutoDiss'] = 0; end
	if(VBMSettings['LootSelectAutoPass'] == nil) then VBMSettings['LootSelectAutoPass'] = 0; end 
	if(VBMSettings['BadgeReminder'] == nil) then VBMSettings['BadgeReminder'] = 0; end
	if(VBMSettings['LFGBGSoundHandling'] == nil) then VBMSettings['LFGBGSoundHandling'] = 0; end
	if(VBMSettings['BGHonorReport'] == nil) then VBMSettings['BGHonorReport'] = 0; end
	if(VBMSettings['InviteKeyword'] == nil) then VBMSettings['InviteKeyword'] = 0; end
		if(VBMSettings['ShortInviteKeyword'] == nil) then VBMSettings['ShortInviteKeyword'] = 0; end
		if(VBMSettings['NoWhisperInviteKeyword'] == nil) then VBMSettings['NoWhisperInviteKeyword'] = 0; end
	if(VBMSettings['ReagentBuyer'] == nil) then VBMSettings['ReagentBuyer'] = 0; end
		if(VBMSettings['ReagentBuyerAuto'] == nil) then VBMSettings['ReagentBuyerAuto'] = 0; end
		if(VBMSettings['AutoSellGreyItems'] == nil) then VBMSettings['AutoSellGreyItems'] = 0; end
	--Class Specific
	if(VBMSettings['TauntFail'] == nil) then VBMSettings['TauntFail'] = 0; end
		--Hunter
		if(VBMSettings['FeignDeathResist'] == nil) then VBMSettings['FeignDeathResist'] = 0; end
		if(VBMSettings['FeignDeathSuccess'] == nil) then VBMSettings['FeignDeathSuccess'] = 0; end
		if(VBMSettings['TranqShotReport'] == nil) then VBMSettings['TranqShotReport'] = 0; end
		if(VBMSettings['ViperActiveNotice'] == nil) then VBMSettings['ViperActiveNotice'] = 0; end
		--Warlock
		if(VBMSettings['AutoTradeHS'] == nil) then VBMSettings['AutoTradeHS'] = 0; end
		if(VBMSettings['SoulShardCounter'] == nil) then VBMSettings['SoulShardCounter'] = 0; end
		if(VBMSettings['SoulshatterResist'] == nil) then VBMSettings['SoulshatterResist'] = 0; end
		--Shaman
		
		if(VBMSettings['MaelstromWeaponTracker'] == nil) then VBMSettings['MaelstromWeaponTracker'] = 0; end
	--Instance Specific
	if(VBMSettings['AVAutoJoin'] == nil) then VBMSettings['AVAutoJoin'] = 0; end
	if(VBMSettings['AutoDetailedLoot'] == nil) then VBMSettings['AutoDetailedLoot'] = 0; end
	if(VBMSettings['AutoPlayerNames'] == nil) then VBMSettings['AutoPlayerNames'] = 0; end
	if(VBMSettings['AutoPlayerGuildNames'] == nil) then VBMSettings['AutoPlayerGuildNames'] = 0; end
	if(VBMSettings['AutoPlayerTitles'] == nil) then VBMSettings['AutoPlayerTitles'] = 0; end
	if(VBMSettings['EredarTwinsTankWarning'] == nil) then VBMSettings['EredarTwinsTankWarning'] = 0; end
	if(VBMSettings['AutoMalygosUI'] == nil) then VBMSettings['AutoMalygosUI'] = 0; end
	if(VBMSettings['DisableAnubAddsTimers'] == nil) then VBMSettings['DisableAnubAddsTimers'] = 0; end
		if(VBMSettings['LichKingSoulReaper'] == nil) then VBMSettings['LichKingSoulReaper'] = 0; end
		if(VBMSettings['LichKingSoulReaperTimer'] == nil) then VBMSettings['LichKingSoulReaperTimer'] = 0; end
	--In first menu
	if(VBMSettings['DebuffWarner'] == nil) then VBMSettings['DebuffWarner'] = 1; end
	if(VBMSettings['SpellcastWarner'] == nil) then VBMSettings['SpellcastWarner'] = 1; end
	if(VBMSettings['EmoteWarner'] == nil) then VBMSettings['EmoteWarner'] = 1; end
	if(VBMSettings['AutoRangeCheck'] == nil) then VBMSettings['AutoRangeCheck'] = 1; end
	if(VBMSettings['AcceptTimers'] == nil) then VBMSettings['AcceptTimers'] = 1; end
	if(VBMSettings['AcceptArrows'] == nil) then VBMSettings['AcceptArrows'] = 1; end
	-- VARS
	if(VBMSettings['PullCD'] == nil) then VBMSettings['PullCD'] = 10; end
	
	
	--CHARACTER SPECIFIC SAVE
	if(not VBM_CHAR_SAVE.shaman) then VBM_CHAR_SAVE.shaman = {}; end
	if(not VBM_CHAR_SAVE.shaman.maelstromframe) then
		VBM_CHAR_SAVE.shaman.maelstromframe = {
			['locked'] = false,
			['scale'] = 1,
		};
	end
end

function VBM_Toggle_Bool(var)
	if(var) then
		return false;
	else
		return true;
	end
end

function VBM_Toggle_Options(setting,...)
	local arg = {...};
	local num = #arg;
	local i;
	for i=1,num do
		if(VBMSettings[setting] == arg[i]) then
			if(i==num) then
				VBMSettings[setting] = arg[1];
				break;
			else
				VBMSettings[setting] = arg[i+1];
				break;
			end
		end
	end
	vbm_printc("Setting |cFFFFFFFF"..setting.."|cFF8888CC set to |cFFFFFFFF"..VBMSettings[setting]);
end

function VBM_Toggle_Setting()
	local s = this.value;
	if(VBMSettings[s]==1) then
		VBMSettings[s] = 0;
		if(VBM_GetS("EchoSettingsChanged")) then
			vbm_printc("Setting |cFFFFFFFF"..s.."|cFF8888CC set to |cFFFFFFFFoff");
		end
	else
		VBMSettings[s] = 1;
		if(VBM_GetS("EchoSettingsChanged")) then
			vbm_printc("Setting |cFFFFFFFF"..s.."|cFF8888CC set to |cFFFFFFFFon");
		end
	end
end

function VBM_GetCVar(var,value)
	if(GetCVar(var)==value) then
		return true;
	else
		return false;
	end
end

function VBM_ToggleCVar(var)
	if(GetCVar(var)=="1") then
		SetCVar(var,"0");
	else
		SetCVar(var,"1");
	end
	vbm_printc("Setting WoWCVar |cFFFFFFFF"..var.."|cFF8888CC to |cFFFFFFFF"..GetCVar(var));
end

function VBM_SetCVar(var,value,quiet)
	SetCVar(var,value);
	if(not quiet) then
		vbm_printc("Setting WoWCVar |cFFFFFFFF"..var.."|cFF8888CC to |cFFFFFFFF"..value);
	end
end

function VBM_SetS(s,value)
	VBMSettings[s] = value;
	vbm_printc("Setting |cFFFFFFFF"..s.."|cFF8888CC set to |cFFFFFFFF"..value);
end

function VBM_GetS(s)
	if(VBMSettings[s] == 1) then
		return true;
	elseif(VBMSettings[s] == 0) then
		return false;
	else
		return VBMSettings[s];
	end
end

function VBM_PrintVaribelInfo()
	vbm_printc("InRaid Detected: "..vbm_c_w..((VBM_IN_RAID and "true") or "false"));
	vbm_printc("RaidSize Detected: "..vbm_c_w..VBM_DUNGEON_SIZE);
	vbm_printc("RaidDifficulty Detected: "..vbm_c_w..VBM_DUNGEON_DIFFICULTY);
end
--[[
List of button attributes
======================================================
info.text = [STRING]  --  The text of the button
info.value = [ANYTHING]  --  The value that UIDROPDOWNMENU_MENU_VALUE is set to when the button is clicked
info.func = [function()]  --  The function that is called when you click the button
info.checked = [nil, 1]  --  Check the button
info.isTitle = [nil, 1]  --  If it's a title the button is disabled and the font color is set to yellow
info.disabled = [nil, 1]  --  Disable the button and show an invisible button that still traps the mouseover event so menu doesn't time out
info.hasArrow = [nil, 1]  --  Show the expand arrow for multilevel menus
info.hasColorSwatch = [nil, 1]  --  Show color swatch or not, for color selection
info.r = [1 - 255]  --  Red color value of the color swatch
info.g = [1 - 255]  --  Green color value of the color swatch
info.b = [1 - 255]  --  Blue color value of the color swatch
info.textR = [1 - 255]  --  Red color value of the button text
info.textG = [1 - 255]  --  Green color value of the button text
info.textB = [1 - 255]  --  Blue color value of the button text
info.swatchFunc = [function()]  --  Function called by the color picker on color change
info.hasOpacity = [nil, 1]  --  Show the opacity slider on the colorpicker frame
info.opacity = [0.0 - 1.0]  --  Percentatge of the opacity, 1.0 is fully shown, 0 is transparent
info.opacityFunc = [function()]  --  Function called by the opacity slider when you change its value
info.cancelFunc = [function(previousValues)] -- Function called by the colorpicker when you click the cancel button (it takes the previous values as its argument)
info.notClickable = [nil, 1]  --  Disable the button and color the font white
info.notCheckable = [nil, 1]  --  Shrink the size of the buttons and don't display a check box
info.owner = [Frame]  --  Dropdown frame that "owns" the current dropdownlist
info.keepShownOnClick = [nil, 1]  --  Don't hide the dropdownlist after a button is clicked
info.tooltipTitle = [nil, STRING] -- Title of the tooltip shown on mouseover
info.tooltipText = [nil, STRING] -- Text of the tooltip shown on mouseover
info.justifyH = [nil, "CENTER"] -- Justify button text
info.arg1 = [ANYTHING] -- This is the first argument used by info.func
info.arg2 = [ANYTHING] -- This is the second argument used by info.func
info.textHeight = [NUMBER] -- font height for button text


CONSTANTS;
==========================================
UIDROPDOWNMENU_MENU_LEVEL
UIDROPDOWNMENU_MENU_VALUE
]]--

function VBM_Settings_Menuofdoom()
	local info = {};
	if(UIDROPDOWNMENU_MENU_LEVEL==1) then
		--[[ ***************************************
		     /////// FIRST MENU \\\\\\\\
		     ***************************************]]--
		info = {};
		info.text = "SettingsMenuOfDoom";
		info.isTitle = 1;
		UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		
		info = {};
		info.text = "VBM Settings";
		info.hasArrow = 1;
		info.notCheckable = 1;
		info.value = "VBMSettingsMenu";
		UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		
		info = {};
		info.text = "StatusFrame Settings";
		info.hasArrow = 1;
		info.notCheckable = 1;
		info.value = "StatusSettingsMenu";
		UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		
		info = {};
		info.text = "Blizzard UI enhancements";
		info.hasArrow = 1;
		info.notCheckable = 1;
		info.value = "BlizzardUIenhancements";
		UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		
		info = {};
		info.text = "Combat Log parsing";
		info.hasArrow = 1;
		info.notCheckable = 1;
		info.value = "CombatLogParsing";
		UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		
		info = {};
		info.text = "Interface Addons";
		info.hasArrow = 1;
		info.notCheckable = 1;
		info.value = "InterfaceAddons";
		UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		
		info = {};
		info.text = "Class Specific";
		info.hasArrow = 1;
		info.notCheckable = 1;
		info.value = "ClassSpecific";
		UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		
		info = {};
		info.text = "Instance Specific";
		info.hasArrow = 1;
		info.notCheckable = 1;
		info.value = "Instancespecific";
		UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		
		info = {};
		info.text = "Print info";
		info.hasArrow = 1;
		info.notCheckable = 1;
		info.value = "Printinfo";
		UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		
		info = {};
		info.text = "Extra Features";
		info.hasArrow = 1;
		info.notCheckable = 1;
		info.value = "ExtraFeatures";
		UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		
		info = {};
		info.text = "Warning Modules";
		info.notCheckable = 1;
		info.disabled = 1;
		UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		
		info = {};
		info.text = "Debuff Warner";
		info.tooltipTitle = info.text;
		info.tooltipText = "Warns then you gain some predefined debuffs such as Rain of Fire and Doomfire";
		info.keepShownOnClick = 1;
		info.checked = VBM_GetS("DebuffWarner");
		info.func = VBM_Toggle_Setting;
		info.value = "DebuffWarner";
		UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		
		info = {};
		info.text = "Spellcast Warner";
		info.tooltipTitle = info.text;
		info.tooltipText = "Warns of ceartain mob spells that deal damage to you such as Blaze during Illidan";
		info.keepShownOnClick = 1;
		info.checked = VBM_GetS("SpellcastWarner");
		info.func = VBM_Toggle_Setting;
		info.value = "SpellcastWarner";
		UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		
		info = {};
		info.text = "Emote Warner";
		info.tooltipTitle = info.text;
		info.tooltipText = "Warns of certain mob emotes such as Deep Breath";
		info.keepShownOnClick = 1;
		info.checked = VBM_GetS("EmoteWarner");
		info.func = VBM_Toggle_Setting;
		info.value = "EmoteWarner";
		UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		
		info = {};
		info.text = "Auto RangeChecker";
		info.tooltipTitle = info.text;
		info.tooltipText = "Auto show RangeChecker on bosses its used on, and auto hides it after";
		info.keepShownOnClick = 1;
		info.checked = VBM_GetS("AutoRangeCheck");
		info.func = VBM_Toggle_Setting;
		info.value = "AutoRangeCheck";
		UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		
		info = {};
		info.text = "Accept Timers";
		info.tooltipTitle = info.text;
		info.tooltipText = "Accept Timers from the boss mods";
		info.keepShownOnClick = 1;
		info.checked = VBM_GetS("AcceptTimers");
		info.func = VBM_Toggle_Setting;
		info.value = "AcceptTimers";
		UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		
		info = {};
		info.text = "Accept Arrows";
		info.tooltipTitle = info.text;
		info.tooltipText = "Accept Arrow pointing directions from the boss mods";
		info.keepShownOnClick = 1;
		info.checked = VBM_GetS("AcceptArrows");
		info.func = VBM_Toggle_Setting;
		info.value = "AcceptArrows";
		UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		
		
		if(VBM_GetS("QuickAccess")) then
				info = {};
				info.text = "Quick Access";
				info.notCheckable = 1;
				info.disabled = 1;
				UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
				
				info = {};
				info.text = "'Invite' Keyword";
				info.keepShownOnClick = 1;
				info.checked = VBM_GetS("InviteKeyword");
				info.func = VBM_Toggle_Setting;
				info.value = "InviteKeyword";
				UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
				
				info = {};
				info.text = "Auto Roll Loot Select ("..VBM_GetS('LootSelectOption')..")";
				info.keepShownOnClick = 1;
				info.checked = VBM_GetS("AutoLootSelect");
				info.func = VBM_Toggle_Setting;
				info.value = "AutoLootSelect";
				UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
				
				info = {};
				info.text = "Master Loot Reminder";
				info.keepShownOnClick = 1;
				info.checked = VBM_GetS("MasterLootReminder");
				info.func = VBM_Toggle_Setting;
				info.value = "MasterLootReminder";
				UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		end
	end
		--[[ ***************************************
		     /////// VBM SETTINGS MENU \\\\\\\\
		     ***************************************]]--
		if(UIDROPDOWNMENU_MENU_VALUE == "VBMSettingsMenu") then
			info = {};
			info.text = "VBM Settings";
			info.notCheckable = 1;
			info.disabled = 1;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Quick Access";
			info.tooltipTitle = info.text;
			info.tooltipText = "Enables quick access to some settings under the first menu.";
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("QuickAccess");
			info.func = VBM_Toggle_Setting;
			info.value = "QuickAccess";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Echo Changes";
			info.tooltipTitle = info.text;
			info.tooltipText = "Print info then you change a setting in the chatbox";
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("EchoSettingsChanged");
			info.func = VBM_Toggle_Setting;
			info.value = "EchoSettingsChanged";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Sound";
			info.tooltipTitle = info.text;
			info.tooltipText = "Enable/Disable sound in warnings";
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("Sound");
			info.func = VBM_Toggle_Setting;
			info.value = "Sound";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Login GMOTD";
			info.tooltipTitle = info.text;
			info.tooltipText = "Show GMOTD on the middle of the screen upon login.";
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("ShowGMOTD");
			info.func = VBM_Toggle_Setting;
			info.value = "ShowGMOTD";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Flash Screen";
			info.tooltipTitle = info.text;
			info.tooltipText = "Allow VBM to flash the screen in some warnings.";
			info.keepShownOnClick = 1;
			info.hasArrow = 1;
			info.checked = VBM_GetS("ScreenFlash");
			info.func = VBM_Toggle_Setting;
			info.value = "ScreenFlash";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		end
					if(UIDROPDOWNMENU_MENU_VALUE == "ScreenFlash") then
						info = {};
						info.text = "Only Edges";
						info.tooltipTitle = info.text;
						info.tooltipText = "Only supports red color and no custom alpha.";
						info.checked = (VBM_GetS("ScreenFlashFull")==false);
						info.func = function() VBM_SetS("ScreenFlashFull",0) end;
						UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
						info.text = "Full Screen";
						info.tooltipTitle = info.text;
						info.tooltipText = "Supports all colors and alpha channel.";
						info.checked = (VBM_GetS("ScreenFlashFull")==true);
						info.func = function() VBM_SetS("ScreenFlashFull",1) end;
						UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
						info.text = "Full Screen/Three Quarter Effect";
						info.tooltipTitle = info.text;
						info.tooltipText = "Uses the full screen flash but cuts its effect into 3/4.";
						info.checked = (VBM_GetS("ScreenFlashFull")==2);
						info.func = function() VBM_SetS("ScreenFlashFull",2) end;
						UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
						info.text = "Full Screen/Half Effect";
						info.tooltipTitle = info.text;
						info.tooltipText = "Uses the full screen flash but cuts its effect into 1/2.";
						info.checked = (VBM_GetS("ScreenFlashFull")==3);
						info.func = function() VBM_SetS("ScreenFlashFull",3) end;
						UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
						info.text = "Full Screen/One Quarter Effect";
						info.tooltipTitle = info.text;
						info.tooltipText = "Uses the full screen flash but cuts its effect into 1/4.";
						info.checked = (VBM_GetS("ScreenFlashFull")==4);
						info.func = function() VBM_SetS("ScreenFlashFull",4) end;
						UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
						info = {};
						info.text = "Flash Test";
						info.keepShownOnClick = 1;
						info.notCheckable = 1;
						info.func = VBM_FlashTest;
						UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					end
		if(UIDROPDOWNMENU_MENU_VALUE == "VBMSettingsMenu") then	
			info = {};
			info.text = "Group Loot Warning";
			info.tooltipTitle = info.text;
			info.tooltipText = "Warns if LootMethod is Group Loot then you engage a boss";
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("GroupLootWarn");
			info.func = VBM_Toggle_Setting;
			info.value = "GroupLootWarn";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Master Loot Reminder";
			info.tooltipTitle = info.text;
			info.tooltipText = "Make sure with annoying warning that you turn on Master Loot on a boss and reminds you some times to turn it off again then the boss is dead\n\nOnly work in 25+ man";
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("MasterLootReminder");
			info.func = VBM_Toggle_Setting;
			info.value = "MasterLootReminder";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Warning Text Setup";
			info.hasArrow = 1;
			info.notCheckable = 1;
			info.value = "WarningTextSetup";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Text Respons ("..VBMSettings['Respons']..")";
			info.tooltipTitle = info.text;
			info.tooltipText = "Controls how many events vbm should report i chat log:\nNormal: Only standard info\nVerbose: Gives some more info about certain events\nDebug: Also Displays debug output";
			info.notCheckable = 1;
			info.keepShownOnClick = 1;
			info.func = function() VBM_Toggle_Options("Respons","Normal","Verbose","Debug"); end;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);			
			
			info = {};
			info.text = "Manual Update/Reset";
			info.tooltipTitle = info.text;
			info.tooltipText = "Request/Resets: Version update, Raidmodes update, Sync update, Current Boss";
			info.notCheckable = 1;
			info.func = VBM_RequestUpdate;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		end
		
				if(UIDROPDOWNMENU_MENU_VALUE == "WarningTextSetup") then
					info = {};
					info.text = "Scale";
					info.hasArrow = 1;
					info.notCheckable = 1;
					info.value = "WarningTextScaleMenu";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Font";
					info.hasArrow = 1;
					info.notCheckable = 1;
					info.value = "WarningTextFontMenu";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Extra space between";
					info.hasArrow = 1;
					info.notCheckable = 1;
					info.value = "WarningTextExtraSpace";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Adjust Anchor";
					info.hasArrow = 1;
					info.notCheckable = 1;
					info.value = "WarningTextAdjustanchor";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Warning Text Test";
					info.tooltipTitle = info.text;
					info.tooltipText = "Shows warning text for 15 sec";
					info.keepShownOnClick = 1;
					info.notCheckable = 1;
					info.func = VBM_WarningTest;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
				end
						if(UIDROPDOWNMENU_MENU_VALUE == "WarningTextScaleMenu") then
							info = {};
							info.text = "Scale";
							info.notCheckable = 1;
							info.disabled = 1;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							
							info = {};
							info.text = "1.0";
							info.checked = (VBMSettings['WarningTextScale'] == 1);
							info.func = function() VBM_SetS("WarningTextScale",1); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "0.9";
							info.checked = (VBMSettings['WarningTextScale'] == 0.9);
							info.func = function() VBM_SetS("WarningTextScale",0.9); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "0.8";
							info.checked = (VBMSettings['WarningTextScale'] == 0.8);
							info.func = function() VBM_SetS("WarningTextScale",0.8); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "0.7";
							info.checked = (VBMSettings['WarningTextScale'] == 0.7);
							info.func = function() VBM_SetS("WarningTextScale",0.7); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "0.6";
							info.checked = (VBMSettings['WarningTextScale'] == 0.6);
							info.func = function() VBM_SetS("WarningTextScale",0.6); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "0.5";
							info.checked = (VBMSettings['WarningTextScale'] == 0.5);
							info.func = function() VBM_SetS("WarningTextScale",0.5); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "0.4";
							info.checked = (VBMSettings['WarningTextScale'] == 0.4);
							info.func = function() VBM_SetS("WarningTextScale",0.4); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
						end
						
						if(UIDROPDOWNMENU_MENU_VALUE == "WarningTextFontMenu") then
							info = {};
							info.text = "Font";
							info.notCheckable = 1;
							info.disabled = 1;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							
							info = {};
							info.text = "Friz Quadrata TT";
							info.checked = (VBMSettings['WarningTextFont'] == "Fonts\\FRIZQT__.TTF");
							info.func = function() VBMSettings['WarningTextFont'] = "Fonts\\FRIZQT__.TTF"; VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "Morpheus";
							info.checked = (VBMSettings['WarningTextFont'] == "Fonts\\MORPHEUS.TTF");
							info.func = function() VBMSettings['WarningTextFont'] = "Fonts\\MORPHEUS.TTF"; VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "Arial Narrow";
							info.checked = (VBMSettings['WarningTextFont'] == "Fonts\\ARIALN.TTF");
							info.func = function() VBMSettings['WarningTextFont'] = "Fonts\\ARIALN.TTF"; VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "Skurri";
							info.checked = (VBMSettings['WarningTextFont'] == "Fonts\\SKURRI.TTF");
							info.func = function() VBMSettings['WarningTextFont'] = "Fonts\\SKURRI.TTF"; VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "Tw Cen MT Bold";
							info.checked = (VBMSettings['WarningTextFont'] == VBM_FONT_TVCENMT);
							info.func = function() VBMSettings['WarningTextFont'] = VBM_FONT_TVCENMT; VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "Myriad Condensed Web (ABF)";
							info.checked = (VBMSettings['WarningTextFont'] == VBM_FONT_ABF);
							info.func = function() VBMSettings['WarningTextFont'] = VBM_FONT_ABF; VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							
						end
						
						if(UIDROPDOWNMENU_MENU_VALUE == "WarningTextExtraSpace") then
							info = {};
							info.text = "Extra Space";
							info.notCheckable = 1;
							info.disabled = 1;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							
							info = {};
							info.text = "-30";
							info.checked = (VBMSettings['WarningTextExtraSpace'] == -3);
							info.func = function() VBM_SetS("WarningTextExtraSpace",-3); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "-20";
							info.checked = (VBMSettings['WarningTextExtraSpace'] == -2);
							info.func = function() VBM_SetS("WarningTextExtraSpace",-2); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "-10";
							info.checked = (VBMSettings['WarningTextExtraSpace'] == -1);
							info.func = function() VBM_SetS("WarningTextExtraSpace",-1); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "0";
							info.checked = (VBMSettings['WarningTextExtraSpace'] == 0);
							info.func = function() VBM_SetS("WarningTextExtraSpace",0); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "10";
							info.checked = (VBMSettings['WarningTextExtraSpace'] == 1);
							info.func = function() VBM_SetS("WarningTextExtraSpace",1); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "20";
							info.checked = (VBMSettings['WarningTextExtraSpace'] == 2);
							info.func = function() VBM_SetS("WarningTextExtraSpace",2); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "40";
							info.checked = (VBMSettings['WarningTextExtraSpace'] == 4);
							info.func = function() VBM_SetS("WarningTextExtraSpace",4); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "60";
							info.checked = (VBMSettings['WarningTextExtraSpace'] == 6);
							info.func = function() VBM_SetS("WarningTextExtraSpace",6); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "80";
							info.checked = (VBMSettings['WarningTextExtraSpace'] == 8);
							info.func = function() VBM_SetS("WarningTextExtraSpace",8); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "100";
							info.checked = (VBMSettings['WarningTextExtraSpace'] == 10);
							info.func = function() VBM_SetS("WarningTextExtraSpace",10); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "120";
							info.checked = (VBMSettings['WarningTextExtraSpace'] == 12);
							info.func = function() VBM_SetS("WarningTextExtraSpace",12); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "140";
							info.checked = (VBMSettings['WarningTextExtraSpace'] == 14);
							info.func = function() VBM_SetS("WarningTextExtraSpace",14); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
						end
						if(UIDROPDOWNMENU_MENU_VALUE == "WarningTextAdjustanchor") then
							info = {};
							info.text = "Adjust Anchor";
							info.notCheckable = 1;
							info.disabled = 1;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							
							info = {};
							info.text = "-200";
							info.checked = (VBMSettings['WarningTextAnchor'] == -20);
							info.func = function() VBM_SetS("WarningTextAnchor",-20); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "-180";
							info.checked = (VBMSettings['WarningTextAnchor'] == -18);
							info.func = function() VBM_SetS("WarningTextAnchor",-18); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "-160";
							info.checked = (VBMSettings['WarningTextAnchor'] == -16);
							info.func = function() VBM_SetS("WarningTextAnchor",-16); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "-140";
							info.checked = (VBMSettings['WarningTextAnchor'] == -14);
							info.func = function() VBM_SetS("WarningTextAnchor",-14); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "-120";
							info.checked = (VBMSettings['WarningTextAnchor'] == -12);
							info.func = function() VBM_SetS("WarningTextAnchor",-12); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "-100";
							info.checked = (VBMSettings['WarningTextAnchor'] == -10);
							info.func = function() VBM_SetS("WarningTextAnchor",-10); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "-80";
							info.checked = (VBMSettings['WarningTextAnchor'] == -8);
							info.func = function() VBM_SetS("WarningTextAnchor",-8); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "-60";
							info.checked = (VBMSettings['WarningTextAnchor'] == -6);
							info.func = function() VBM_SetS("WarningTextAnchor",-6); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "-40";
							info.checked = (VBMSettings['WarningTextAnchor'] == -4);
							info.func = function() VBM_SetS("WarningTextAnchor",-4); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "-20";
							info.checked = (VBMSettings['WarningTextAnchor'] == -2);
							info.func = function() VBM_SetS("WarningTextAnchor",-2); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "0";
							info.checked = (VBMSettings['WarningTextAnchor'] == 0);
							info.func = function() VBM_SetS("WarningTextAnchor",0); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "20";
							info.checked = (VBMSettings['WarningTextAnchor'] == 2);
							info.func = function() VBM_SetS("WarningTextAnchor",2); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "40";
							info.checked = (VBMSettings['WarningTextAnchor'] == 4);
							info.func = function() VBM_SetS("WarningTextAnchor",4); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "60";
							info.checked = (VBMSettings['WarningTextAnchor'] == 6);
							info.func = function() VBM_SetS("WarningTextAnchor",6); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "80";
							info.checked = (VBMSettings['WarningTextAnchor'] == 8);
							info.func = function() VBM_SetS("WarningTextAnchor",8); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "100";
							info.checked = (VBMSettings['WarningTextAnchor'] == 10);
							info.func = function() VBM_SetS("WarningTextAnchor",10); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
							info.text = "120";
							info.checked = (VBMSettings['WarningTextAnchor'] == 12);
							info.func = function() VBM_SetS("WarningTextAnchor",12); VBM_Setup_Warning_Text(); end;
							UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
						end
				
		--[[ ***************************************
		     /////// STATUSFRAME SETTINGS MENU \\\\\\\\
		     ***************************************]]--
		if(UIDROPDOWNMENU_MENU_VALUE == "StatusSettingsMenu") then
			info = {};
			info.text = "StatusFrame Settings";
			info.notCheckable = 1;
			info.disabled = 1;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Lock dragging";
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("SFLocked");
			info.func = VBM_Toggle_Setting;
			info.value = "SFLocked";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);

			info = {};
			info.text = "Hide Border";
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("SFHideBorder");
			info.func = function(v) VBM_Toggle_Setting(v) VBM_SF_SetBorder() end;
			info.value = "SFHideBorder";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Auto Show";
			info.tooltipTitle = info.text;
			info.tooltipText = "Auto show statusframe then some content on it is changed (Time Elapsed, or BuffTracker)";
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("AutoShowSF");
			info.func = VBM_Toggle_Setting;
			info.value = "AutoShowSF";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Display Elapsed Time";
			info.tooltipTitle = info.text;
			info.tooltipText = "On boss encunters displays elapsed time instead of the vbm version text on statusframe title";
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("DisplayTimeElapsed");
			info.func = VBM_Toggle_Setting;
			info.value = "DisplayTimeElapsed";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Manual Reset Elapsed Time";
			info.tooltipTitle = info.text;
			info.tooltipText = "Click here on the bosses auto reset don't work on. Can only be used out of combat.";
			info.notCheckable = 1;
			info.func = function() if(not InCombatLockdown()) then VBM_BOSSSTART = {}; end end;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		end
		--[[ ***************************************
		     /////// BLIZZARD UI ENHANCEMENTS \\\\\\\\
		     ***************************************]]--
		if(UIDROPDOWNMENU_MENU_VALUE == "BlizzardUIenhancements") then
			info = {};
			info.text = "Blizzard UI enhancements";
			info.notCheckable = 1;
			info.disabled = 1;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		
			info = {};
			info.text = "AltInvite";
			info.tooltipTitle = info.text;
			info.tooltipText = "Alt+click a player link in chat to invite them to group\n\n(Requires reloadui to be disabled again)";
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("AltInvite");
			info.func = function(v) VBM_Toggle_Setting(v); VBM_HookAltInvite(); end;
			info.value = "AltInvite";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Background WorldState";
			info.tooltipTitle = info.text;
			info.tooltipText = "Sets the WorldStateFrame (frame that displays towers captured and stuff) to background strata instead of the default: medium.\n\n(Requires reloadui to be disabled again)";
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("BackgroundWorldState");
			info.func = function(v) VBM_Toggle_Setting(v); VBM_WorldStateFrameFix(); end;
			info.value = "BackgroundWorldState";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);

			info = {};
			info.text = "Disable Blizzard Raid Warnings";
			info.tooltipTitle = info.text;
			info.tooltipText = "Disables the blizzard default raid warning text on the middle of the screen.\n\n(Requires reloadui to be disabled again)";
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("DisableBlizzardWarnText");
			info.func = function(v) VBM_Toggle_Setting(v); VBM_DisableBlizzardRaidWarnings(); end;
			info.value = "DisableBlizzardWarnText";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Remove Decline of Ress";
			info.tooltipTitle = info.text;
			info.tooltipText = "Blizzards UI Auto Declines ress then the ress window cant be opened, this may fix ress bugs use /ress if you dont get a ress window\n\n(Requires reloadui to be disabled again)";
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("RemoveDeclineRess");
			info.func = function(v) VBM_Toggle_Setting(v); VBM_RemoveAutoDeclineRess(); end;
			info.value = "RemoveDeclineRess";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Error Message Disabler";
			info.tooltipTitle = info.text;
			info.tooltipText = "Hooks the Error Frame to disable some error messages.\nTo disable hook uncheck this and reloadui.";
			info.keepShownOnClick = 1;
			info.hasArrow = 1;
			info.checked = VBM_GetS("ErrorMessageDisabler");
			info.func = function(v) VBM_Toggle_Setting(v); VBM_HookErrorMessageDisabler(); end;
			info.value = "ErrorMessageDisabler";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);

			info = {};
			info.text = "Screenshot Settings";
			info.hasArrow = 1;
			info.notCheckable = 1;
			info.value = "ScreenshotSettings";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Hidden interface settings";
			info.hasArrow = 1;
			info.notCheckable = 1;
			info.value = "HiddenInterfaceSettings";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Minimap Button Hider";
			info.hasArrow = 1;
			info.notCheckable = 1;
			info.value = "MinimapButtonHider";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		end
				if(UIDROPDOWNMENU_MENU_VALUE == "ErrorMessageDisabler") then
					info = {};
					info.text = "Message";
					info.notCheckable = 1;
					info.disabled = 1;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Ability is not ready yet";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("ErrorMessAbilityNotReady");
					info.func = VBM_Toggle_Setting;
					info.value = "ErrorMessAbilityNotReady";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info.text = "Another action is in progress";
					info.checked = VBM_GetS("ErrorMessAnotherAction");
					info.value = "ErrorMessAnotherAction";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info.text = "Item is not ready yet";
					info.checked = VBM_GetS("ErrorMessItemNotReady");
					info.value = "ErrorMessItemNotReady";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info.text = "Not enough energy";
					info.checked = VBM_GetS("ErrorMessNotEnergy");
					info.value = "ErrorMessNotEnergy";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info.text = "Not enough rage";
					info.checked = VBM_GetS("ErrorMessNotRage");
					info.value = "ErrorMessNotRage";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info.text = "Spell is not ready yet";
					info.checked = VBM_GetS("ErrorMessSpellNotReady");
					info.value = "ErrorMessSpellNotReady";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
				end
				if(UIDROPDOWNMENU_MENU_VALUE == "ScreenshotSettings") then
					info = {};
					info.text = "Format";
					info.notCheckable = 1;
					info.disabled = 1;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "TGA (Best Quality)";
					info.checked = VBM_GetCVar("screenshotFormat","tga");
					info.func = function() VBM_SetCVar("screenshotFormat","tga") end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "PNG (Mac Client Only)";
					info.checked = VBM_GetCVar("screenshotFormat","png");
					info.func = function() VBM_SetCVar("screenshotFormat","png") end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "JPEG (Default)";
					info.checked = VBM_GetCVar("screenshotFormat","jpeg");
					info.func = function() VBM_SetCVar("screenshotFormat","jpeg") end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Quality";
					info.notCheckable = 1;
					info.disabled = 1;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "1 (Lowest Quality)";
					info.checked = VBM_GetCVar("screenshotQuality","1");
					info.func = function() VBM_SetCVar("screenshotQuality","1") end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "2";
					info.checked = VBM_GetCVar("screenshotQuality","2");
					info.func = function() VBM_SetCVar("screenshotQuality","2") end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "3 (Default)";
					info.checked = VBM_GetCVar("screenshotQuality","3");
					info.func = function() VBM_SetCVar("screenshotQuality","3") end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "4";
					info.checked = VBM_GetCVar("screenshotQuality","4");
					info.func = function() VBM_SetCVar("screenshotQuality","4") end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "5";
					info.checked = VBM_GetCVar("screenshotQuality","5");
					info.func = function() VBM_SetCVar("screenshotQuality","5") end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "6";
					info.checked = VBM_GetCVar("screenshotQuality","6");
					info.func = function() VBM_SetCVar("screenshotQuality","6") end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "7";
					info.checked = VBM_GetCVar("screenshotQuality","7");
					info.func = function() VBM_SetCVar("screenshotQuality","7") end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "8";
					info.checked = VBM_GetCVar("screenshotQuality","8");
					info.func = function() VBM_SetCVar("screenshotQuality","8") end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "9";
					info.checked = VBM_GetCVar("screenshotQuality","9");
					info.func = function() VBM_SetCVar("screenshotQuality","9") end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "10 (Best Quality)";
					info.checked = VBM_GetCVar("screenshotQuality","10");
					info.func = function() VBM_SetCVar("screenshotQuality","10") end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
				end
				
				if(UIDROPDOWNMENU_MENU_VALUE == "HiddenInterfaceSettings") then
					info = {};
					info.text = "invertMouseYAxis";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetCVar("mouseInvertPitch","1");
					info.func = function() VBM_ToggleCVar("mouseInvertPitch"); end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "invertMouseXAxis";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetCVar("mouseInvertYaw","1");
					info.func = function() VBM_ToggleCVar("mouseInvertYaw"); end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "autoDismount";
					info.tooltipTitle = info.text;
					info.tooltipText = "Auto Dismount Ground Mount when casting a spell.";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetCVar("autoDismount","1");
					info.func = function() VBM_ToggleCVar("autoDismount"); end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "autoDismountFlying";
					info.tooltipTitle = info.text;
					info.tooltipText = "Auto Dismount Flying Mount when casting a spell.";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetCVar("autoDismountFlying","1");
					info.func = function() VBM_ToggleCVar("autoDismountFlying"); end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "autoStand";
					info.tooltipTitle = info.text;
					info.tooltipText = "Auto Standup then casting a spell.";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetCVar("autoStand","1");
					info.func = function() VBM_ToggleCVar("autoStand"); end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "autoUnshift";
					info.tooltipTitle = info.text;
					info.tooltipText = "Auto Shift out then casting a spell that can't be cast while shapeshifted. (This works for Druids Froms, Priests Shadowform, Rogues Stealth and maybe more)";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetCVar("autoUnshift","1");
					info.func = function() VBM_ToggleCVar("autoUnshift"); end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "MaxCameraDistance ("..GetCVar("cameraDistanceMaxFactor")..")";
					info.tooltipTitle = info.text;
					info.tooltipText = "'/console cameraDistanceMaxFactor (0-5)'\nSets max camera distance.\n0 = FP only\n5 = Max\nDefault interface slider goes 1-2\nIf this is enabled VBM will auto set it to 5 each time the UI is loaded.";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("AutoSetCameraDistance");
					info.func = function(v) VBM_Toggle_Setting(v) VBM_AutoSetCameraDistance(); end;
					info.value = "AutoSetCameraDistance";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					--[[
					info = {};
					info.text = "MaxTabDistance ("..GetCVar("targetNearestDistance")..")";
					info.tooltipTitle = info.text;
					info.tooltipText = "'/console targetNearestDistance (1-50)'\nSets max tab distance.\nDefault: "..GetCVarDefault("targetNearestDistance").."\nClick to set to 50";
					info.keepShownOnClick = 1;
					info.notCheckable = 1;
					info.func = function() VBM_SetCVar("targetNearestDistance","50") end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "TabSearchRadius ("..GetCVar("targetNearestDistanceRadius")..")";
					info.tooltipTitle = info.text;
					info.tooltipText = "'/console targetNearestDistanceRadius (1-50)'\nSets how wide tab serach distance should be.\n1 = Only a stripe in the middle of screen\n50 = You can tab target stuff behind you\nDefault: "..GetCVarDefault("targetNearestDistanceRadius").."\nClick to set to Default";
					info.keepShownOnClick = 1;
					info.notCheckable = 1;
					info.func = function() VBM_SetCVar("targetNearestDistanceRadius",GetCVarDefault("targetNearestDistanceRadius")) end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);]]--
					
					info = {};
					info.text = "pitchLimit info";
					info.tooltipTitle = info.text;
					info.tooltipText = "'/console pitchLimit (0-9999?)'\nControls how mush you can pitch with your mouse while flying.\n0 = Can't pitch at all\n360 = Can pitch 360 degrees\nDefault: 90\nClick to set to 360\nThis is not saved by wow";
					info.keepShownOnClick = 1;
					info.notCheckable = 1;
					info.func = function() ConsoleExec("pitchLimit 360"); vbm_printc("Running console command: |cFFFFFFFFpitchLimit 360"); end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Show Currency Bag";
					info.tooltipTitle = info.text;
					info.tooltipText = "Shows the Currency Bag if you want to delete som emblems or something.";
					info.keepShownOnClick = 1;
					info.notCheckable = 1;
					info.func = function() ToggleBag(-4); end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Show Secret Bag";
					info.tooltipTitle = info.text;
					info.tooltipText = "Currently unused by blizzard.";
					info.keepShownOnClick = 1;
					info.notCheckable = 1;
					info.func = function() ToggleBag(-1); end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
				end
				if(UIDROPDOWNMENU_MENU_VALUE == "MinimapButtonHider") then
					info = {};
					info.text = "Main Buttons";
					info.notCheckable = 1;
					info.disabled = 1;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "World Map Button";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("WorldMapButton");
					info.func = function(v) VBM_Toggle_Setting(v) VBM_HideMinimapButtons("set"); end;
					info.value = "WorldMapButton";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Tracking Button";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("TrackingButton");
					info.func = function(v) VBM_Toggle_Setting(v) VBM_HideMinimapButtons("set"); end;
					info.value = "TrackingButton";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Calendar Button";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("CalendarButton");
					info.func = function(v) VBM_Toggle_Setting(v) VBM_HideMinimapButtons("set"); end;
					info.value = "CalendarButton";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Zoom In Button";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("ZoomInButton");
					info.func = function(v) VBM_Toggle_Setting(v) VBM_HideMinimapButtons("set"); end;
					info.value = "ZoomInButton";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Zoom Out Button";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("ZoomOutButton");
					info.func = function(v) VBM_Toggle_Setting(v) VBM_HideMinimapButtons("set"); end;
					info.value = "ZoomOutButton";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Decoratives";
					info.notCheckable = 1;
					info.disabled = 1;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Top Border";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("MinimapTopBorder");
					info.func = function(v) VBM_Toggle_Setting(v) VBM_HideMinimapButtons("set2"); end;
					info.value = "MinimapTopBorder";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Toggle Button";
					info.keepShownOnClick = 1;
					info.disabled = 1;
					info.checked = VBM_GetS("MinimapToggleButton");
					info.func = function(v) VBM_Toggle_Setting(v) VBM_HideMinimapButtons("set2"); end;
					info.value = "MinimapToggleButton";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Zone text";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("MinimapZoneText");
					info.func = function(v) VBM_Toggle_Setting(v) VBM_HideMinimapButtons("set2"); end;
					info.value = "MinimapZoneText";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Whole Minimap Border";
					info.tooltipTitle = info.text;
					info.tooltipText = "Will also hide everything attached to it.";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("MinimapBorder");
					info.func = function(v) VBM_Toggle_Setting(v) VBM_HideMinimapButtons("set2"); end;
					info.value = "MinimapBorder";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Never Show";
					info.notCheckable = 1;
					info.disabled = 1;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "LFG Button";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("LFGButton");
					info.func = function(v) VBM_Toggle_Setting(v) VBM_HideMinimapButtons("set3"); end;
					info.value = "LFGButton";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Instance Difficulty";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("InstanceDiffButton");
					info.func = function(v) VBM_Toggle_Setting(v) VBM_HideMinimapButtons("set3"); end;
					info.value = "InstanceDiffButton";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Mail Button";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("MailButton");
					info.func = function(v) VBM_Toggle_Setting(v) VBM_HideMinimapButtons("set3"); end;
					info.value = "MailButton";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Battlefield Button";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("BattlefieldButton");
					info.func = function(v) VBM_Toggle_Setting(v) VBM_HideMinimapButtons("set3"); end;
					info.value = "BattlefieldButton";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
				end
		if(UIDROPDOWNMENU_MENU_VALUE == "BlizzardUIenhancements") then
			info = {};
			info.text = "Restart GFX";
			info.tooltipTitle = info.text;
			info.tooltipText = "Click to Restart GFX engine (to fix possible graphics errors)";
			info.notCheckable = 1;
			info.func = RestartGx;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Reload UI";
			info.tooltipTitle = info.text;
			info.tooltipText = "Click to Reload the User Interface";
			info.notCheckable = 1;
			info.func = ReloadUI;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		end
		
		--[[ ***************************************
		     /////// COMBAT LOG PARSING \\\\\\\\
		     ***************************************]]--
		if(UIDROPDOWNMENU_MENU_VALUE == "CombatLogParsing") then
			info = {};
			info.text = "Combat Log parsing";
			info.notCheckable = 1;
			info.disabled = 1;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Buff Alerter";
			info.tooltipTitle = info.text;
			local text = "";
			for temp,_ in pairs (VBM_BUFF_ALERTER_DATA) do
				text = text.."\n"..temp;
			end
			info.tooltipText = "Alerts you with Info Warn text whenever you gain one of these buffs:"..text;
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("BuffAlerter");
			info.func = VBM_Toggle_Setting;
			info.value = "BuffAlerter";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "SS/DI/Feast Alert";
			info.tooltipTitle = info.text;
			info.tooltipText = "Displays infowarn then someone gets SS or DI or prepares a Feast.";
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("SSDIAlert");
			info.func = VBM_Toggle_Setting;
			info.value = "SSDIAlert";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "CC Big Brother";
			info.tooltipTitle = info.text;
			local text = "";
			for temp,_ in pairs (VBM_CCBBSpells) do
				text = text.."\n"..temp;
			end
			info.tooltipText = "By Default CC Big Brothers shows then a Friendly Source breaks a cc on an enemy NPC\nIt checks for:"..text;
			info.keepShownOnClick = 1;
			info.hasArrow = 1;
			info.checked = VBM_GetS("CCBigBrother");
			info.func = VBM_Toggle_Setting;
			info.value = "CCBigBrother";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Interrupt Watcher";
			info.tooltipTitle = info.text;
			info.tooltipText = "By Default Interrupt Watcher shows then a Friendly Source interrupts a spell from an enemy NPC";
			info.keepShownOnClick = 1;
			info.hasArrow = 1;
			info.checked = VBM_GetS("InterruptWatcher");
			info.func = VBM_Toggle_Setting;
			info.value = "InterruptWatcher";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Misdirection Watcher";
			info.tooltipTitle = info.text;
			info.tooltipText = "Reports Misdirects in chat";
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("MisdirectionAlert");
			info.func = VBM_Toggle_Setting;
			info.value = "MisdirectionAlert";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Tricks of the Trade Watcher";
			info.tooltipTitle = info.text;
			info.tooltipText = "Reports Tricks of the Trade in chat";
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("TricksoftheTradeAlert");
			info.func = VBM_Toggle_Setting;
			info.value = "TricksoftheTradeAlert";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Toy Train Set Watcher";
			info.tooltipTitle = info.text;
			info.tooltipText = "Reports who cast Toy Train Set in chat.";
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("ToyTrainSet");
			info.func = VBM_Toggle_Setting;
			info.value = "ToyTrainSet";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		end
				if(UIDROPDOWNMENU_MENU_VALUE == "CCBigBrother" or UIDROPDOWNMENU_MENU_VALUE == "InterruptWatcher") then
					info = {};
					info.text = UIDROPDOWNMENU_MENU_VALUE.." Extra Config";
					info.notCheckable = 1;
					info.disabled = 1;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					if(UIDROPDOWNMENU_MENU_VALUE == "InterruptWatcher") then
						info = {};
						info.text = "Announce Say";
						info.tooltipTitle = info.text;
						info.tooltipText = "Announce your own interrupts in say";
						info.keepShownOnClick = 1;
						info.checked = VBM_GetS("InterruptWatcherAnnounce");
						info.func = VBM_Toggle_Setting;
						info.value = "InterruptWatcherAnnounce";
						UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					end
					
					info = {};
					info.text = "Hostile Source";
					info.tooltipTitle = info.text;
					info.tooltipText = "Also show messages from a hostile source (Opposite faction players or mobs)";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS(UIDROPDOWNMENU_MENU_VALUE.."HS");
					info.func = VBM_Toggle_Setting;
					info.value = UIDROPDOWNMENU_MENU_VALUE.."HS";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Friendly Target";
					info.tooltipTitle = info.text;
					info.tooltipText = "Also show messages then target is friendly (Same faction)";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS(UIDROPDOWNMENU_MENU_VALUE.."FT");
					info.func = VBM_Toggle_Setting;
					info.value = UIDROPDOWNMENU_MENU_VALUE.."FT";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Player Target";
					info.tooltipTitle = info.text;
					info.tooltipText = "Also show messages then target is a player (Horde or Alliance)";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS(UIDROPDOWNMENU_MENU_VALUE.."PT");
					info.func = VBM_Toggle_Setting;
					info.value = UIDROPDOWNMENU_MENU_VALUE.."PT";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
				end
		
		
		--[[ ***************************************
		     /////// INTERFACE ADDONS \\\\\\\\
		     ***************************************]]--
		if(UIDROPDOWNMENU_MENU_VALUE == "InterfaceAddons") then
			info = {};
			info.text = "Interface Addons";
			info.notCheckable = 1;
			info.disabled = 1;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Auto Popups";
			info.hasArrow = 1;
			info.notCheckable = 1;
			info.value = "AutoPopups";
			--UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);

			info = {};
			info.text = "AutoRepair";
			info.hasArrow = 1;
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("AutoRepair");
			info.func = VBM_Toggle_Setting;
			info.value = "AutoRepair";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		end
				if(UIDROPDOWNMENU_MENU_VALUE == "AutoRepair") then
					info = {};
					info.text = "Save atleast 5g";
					info.tooltipTitle = info.text;
					info.tooltipText = "Don't autorepair if you will go under 5g";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("AutoRepairSave5g");
					info.func = VBM_Toggle_Setting;
					info.value = "AutoRepairSave5g";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Use Guild Bank";
					info.tooltipTitle = info.text;
					info.tooltipText = "First try to use guild bank and if it fails use your own";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("AutoRepairUseGBank");
					info.func = VBM_Toggle_Setting;
					info.value = "AutoRepairUseGBank";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
				end
		if(UIDROPDOWNMENU_MENU_VALUE == "InterfaceAddons") then
			info = {};
			info.text = "Auto Roll Loot Select";
			info.tooltipTitle = info.text;
			local text = "";
			for i=1,#VBM_AUTOLOOT_EXCEPTIONS do
				text = text.."\n"..VBM_AUTOLOOT_EXCEPTIONS[i];
			end
			info.tooltipText = "Auto Select the choosen options then a non BoP loot roll apear. Exceptions:"..text;
			info.keepShownOnClick = 1;
			info.hasArrow = 1;
			info.checked = VBM_GetS("AutoLootSelect");
			info.func = VBM_Toggle_Setting;
			info.value = "AutoLootSelect";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		end
				if(UIDROPDOWNMENU_MENU_VALUE == "AutoLootSelect") then
					info = {};
					info.text = "Need";
					info.checked = (VBM_GetS("LootSelectOption")=="Need");
					info.func = function() VBM_SetS("LootSelectOption","Need"); end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Greed";
					info.checked = (VBM_GetS("LootSelectOption")=="Greed");
					info.func = function() VBM_SetS("LootSelectOption","Greed"); end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Pass";
					info.checked = (VBM_GetS("LootSelectOption")=="Pass");
					info.func = function() VBM_SetS("LootSelectOption","Pass"); end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Disenchant > Greed";
					info.checked = (VBM_GetS("LootSelectOption")=="Diss");
					info.func = function() VBM_SetS("LootSelectOption","Diss"); end;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "--Extra Options--";
					info.notCheckable = 1;
					info.disabled = 1;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Ignore Epics";
					info.tooltipTitle = info.text;
					info.tooltipText = "Auto roll loot select will only roll on greens and blues and ignore epics and higher.";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("LootSelectNoEpic");
					info.func = VBM_Toggle_Setting;
					info.value = "LootSelectNoEpic";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Auto set Greed";
					info.tooltipTitle = info.text;
					info.tooltipText = "When you leave a raid group, auto set to greed";
					info.checked = VBM_GetS("LootSelectAutoGreed");
					info.func = function(v) VBM_Toggle_Setting(v); VBMSettings["LootSelectAutoDiss"] = 0; end;
					info.value = "LootSelectAutoGreed";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Auto set Disenchant";
					info.tooltipTitle = info.text;
					info.tooltipText = "When you leave a raid group, auto set to disenchnat";
					info.checked = VBM_GetS("LootSelectAutoDiss");
					info.func = function(v) VBM_Toggle_Setting(v); VBMSettings["LootSelectAutoGreed"] = 0; end;
					info.value = "LootSelectAutoDiss";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Auto set Pass";
					info.tooltipTitle = info.text;
					info.tooltipText = "Set to pass when your raidgroup has more then 20 members";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("LootSelectAutoPass");
					info.func = VBM_Toggle_Setting;
					info.value = "LootSelectAutoPass";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
				end
		if(UIDROPDOWNMENU_MENU_VALUE == "InterfaceAddons") then
			info = {};
			info.text = "Auto Solo BoP Loot";
			info.tooltipTitle = info.text;
			info.tooltipText = "Auto loot BoP items when you are solo (not in a group)";
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("AutoSoloBoPLoot");
			info.func = VBM_Toggle_Setting;
			info.value = "AutoSoloBoPLoot";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Battleground join replacement";
			info.tooltipTitle = info.text;
			info.tooltipText = "Replaces your old popups with a BG Join UI";
			info.keepShownOnClick = 1;
			info.hasArrow = 1;
			info.checked = VBM_GetS("BGJoinReplacement");
			info.func = VBM_Toggle_Setting;
			info.value = "BGJoinReplacement";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		end
				if(UIDROPDOWNMENU_MENU_VALUE == "BGJoinReplacement") then
					info = {};
					info.notCheckable = 1;
					info.text = "Show Frame Now";
					info.func = VBM_BGJoinFrame_ForceShow;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);

					info = {};
					info.text = "Kill Blizzard Join Popup";
					info.tooltipTitle = info.text;
					info.tooltipText = "Normally the bg join replacement hides blizzards join bg popup, But here is an option to hide it even if you don't use the bg replacment.\n\n(Requires reloadui to be disabled again)";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("KillBlizzardJoinPopup");
					info.func = function(v) VBM_Toggle_Setting(v); VBM_KillBlizzardBGJoin(); end;
					info.value = "KillBlizzardJoinPopup";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
				end
		if(UIDROPDOWNMENU_MENU_VALUE == "InterfaceAddons") then
			info = {};
			info.text = "Badge Loot Reminder";
			info.tooltipTitle = info.text;
			local text = "";
			for i=1,#VBM_BADGE_REMINDER do
				text = text.."\n"..VBM_BADGE_REMINDER[i];
			end
			info.tooltipText = "If more then 45% of your group loots a Emblem or Badge token within 1 min and you don't, it will remind you of that. Current badges:"..text;
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("BadgeReminder");
			info.func = VBM_Toggle_Setting;
			info.value = "BadgeReminder";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "LFG/BG Sound in Background";
			info.tooltipTitle = info.text;
			info.tooltipText = "If this is checked VBM will enable Sound in Background then bg or lfg\n"..
											"activity is detected. (so you can hear the join sound if tabbed)\n"..
											"And disable Sound in Background after 2 min then activity stops.\n";
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("LFGBGSoundHandling");
			info.func = VBM_Toggle_Setting;
			info.value = "LFGBGSoundHandling";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Honor Report";
			info.tooltipTitle = info.text;
			info.tooltipText = "Reports gained honor in the chatbox each time a battleground is complete";
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("BGHonorReport");
			info.func = VBM_Toggle_Setting;
			info.value = "BGHonorReport";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "'Invite' Keyword";
			info.tooltipTitle = info.text;
			info.tooltipText = "Invite people who whispers you 'invite'";
			info.hasArrow = 1;
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("InviteKeyword");
			info.func = VBM_Toggle_Setting;
			info.value = "InviteKeyword";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		end
				if(UIDROPDOWNMENU_MENU_VALUE == "InviteKeyword") then
					info = {};
					info.text = "Enable short 'inv'";
					info.tooltipTitle = info.text;
					info.tooltipText = "Also invites people who whisper you 'inv'";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("ShortInviteKeyword");
					info.func = VBM_Toggle_Setting;
					info.value = "ShortInviteKeyword";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "No whisper";
					info.tooltipTitle = info.text;
					info.tooltipText = "Do not replay with 'You are already in a group' message.";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("NoWhisperInviteKeyword");
					info.func = VBM_Toggle_Setting;
					info.value = "NoWhisperInviteKeyword";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
				end
		if(UIDROPDOWNMENU_MENU_VALUE == "InterfaceAddons") then
			info = {};
			info.text = "Reagent Buyer";
			info.tooltipTitle = info.text;
			info.tooltipText = "Show Reagent Buyer then you visit a Reagent Vendor";
			info.hasArrow = 1;
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("ReagentBuyer");
			info.func = VBM_Toggle_Setting;
			info.value = "ReagentBuyer";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		end
				if(UIDROPDOWNMENU_MENU_VALUE == "ReagentBuyer") then
					info = {};
					info.text = "Auto Buy Reagents";
					info.tooltipTitle = info.text;
					info.tooltipText = "Auto buys the configed amount of reagent then you visit a vendor";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("ReagentBuyerAuto");
					info.func = VBM_Toggle_Setting;
					info.value = "ReagentBuyerAuto";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Auto Sell Grey Items";
					info.tooltipTitle = info.text;
					info.tooltipText = "Does a /sellgrey when you visit a vendor.";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("AutoSellGreyItems");
					info.func = VBM_Toggle_Setting;
					info.value = "AutoSellGreyItems";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
				end
		--[[ ***************************************
		     /////// CLASS SPECIFIC \\\\\\\\
		     ***************************************]]--
		if(UIDROPDOWNMENU_MENU_VALUE == "ClassSpecific") then
			info = {};
			info.text = "Class Specific";
			info.notCheckable = 1;
			info.disabled = 1;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Taunt Fail Warning";
			info.tooltipTitle = info.text;
			local text = "";
			for temp,_ in pairs (VBM_TauntAnnounce_Spells) do
				text = text.."\n"..temp;
			end
			info.tooltipText = "Announce in chat then your one of these spells fail:"..text;
			info.keepShownOnClick = 1;
			info.checked = VBM_GetS("TauntFail");
			info.func = VBM_Toggle_Setting;
			info.value = "TauntFail";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Hunter";
			info.hasArrow = 1;
			info.notCheckable = 1;
			info.value = "ClassHunter";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Warlock";
			info.hasArrow = 1;
			info.notCheckable = 1;
			info.value = "ClassWarlock";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Shaman";
			info.hasArrow = 1;
			info.notCheckable = 1;
			info.value = "ClassShaman";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		end
				if(UIDROPDOWNMENU_MENU_VALUE == "ClassHunter") then
					info = {};
					info.text = "Feign Death Resist";
					info.tooltipTitle = info.text;
					info.tooltipText = "Feign Death Resist Warning";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("FeignDeathResist");
					info.func = VBM_Toggle_Setting;
					info.value = "FeignDeathResist";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Feign Death Success";
					info.tooltipTitle = info.text;
					info.tooltipText = "Display a success message 0.8 sec after you Feign Death";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("FeignDeathSuccess");
					info.func = VBM_Toggle_Setting;
					info.value = "FeignDeathSuccess";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "TranqShot Report";
					info.tooltipTitle = info.text;
					info.tooltipText = "Reports Hits/Miss on Tranquilizing Shot for all Hunters";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("TranqShotReport");
					info.func = VBM_Toggle_Setting;
					info.value = "TranqShotReport";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Aspect of the Viper Warning";
					info.tooltipTitle = info.text;
					info.tooltipText = "Will warn you with infowarn if you have more then 90% mana and are shoting with viper active.";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("ViperActiveNotice");
					info.func = VBM_Toggle_Setting;
					info.value = "ViperActiveNotice";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
				end
				if(UIDROPDOWNMENU_MENU_VALUE == "ClassWarlock") then
					info = {};
					info.text = "Easy Healthstone Trade";
					info.tooltipTitle = info.text;
					info.tooltipText = "Enables the command /hs that autotrades a healthstone to your target";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("AutoTradeHS");
					info.func = VBM_Toggle_Setting;
					info.value = "AutoTradeHS";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);	
					
					info = {};
					info.text = "Soul Shard Counter";
					info.tooltipTitle = info.text;
					info.tooltipText = "Count Soul Shards in a Soul Shard Bag and display it in Info Warn text";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("SoulShardCounter");
					info.func = VBM_Toggle_Setting;
					info.value = "SoulShardCounter";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);	
					
					info = {};
					info.text = "Soulshatter Resist";
					info.tooltipTitle = info.text;
					info.tooltipText = "Displays a infowarn text then your Soulshatter Resists";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("SoulshatterResist");
					info.func = VBM_Toggle_Setting;
					info.value = "SoulshatterResist";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
				end
				if(UIDROPDOWNMENU_MENU_VALUE == "ClassShaman") then
					info = {};
					info.text = "Maelstrom Weapon Tracker";
					info.tooltipTitle = info.text;
					info.tooltipText = "Displays an icon with the number of Maelstrom Weapon charges on.";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("MaelstromWeaponTracker");
					info.func = VBM_Toggle_Setting;
					info.value = "MaelstromWeaponTracker";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
				end
				
		--[[ ***************************************
		     /////// INSTANCE SPECIFIC \\\\\\\\
		     ***************************************]]--
		if(UIDROPDOWNMENU_MENU_VALUE == "Instancespecific") then
			info = {};
			info.text = "Instance Specific";
			info.notCheckable = 1;
			info.disabled = 1;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Disband Raid";
			info.tooltipTitle = info.text;
			info.tooltipText = "Show disband raid Confirm Dialog";
			info.notCheckable = 1;
			info.func = VBM_DisbandRaid;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Alterac Valley";
			info.hasArrow = 1;
			info.notCheckable = 1;
			info.value = "AlteracValley";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Auto Zoneing Options";
			info.tooltipTitle = info.text;
			info.tooltipText = "Checking one of these means that when you zone to a raid instance the option will be:\nDisabled when you zone in\nEnbaled again when you zone out.";
			info.hasArrow = 1;
			info.notCheckable = 1;
			info.value = "AutoZoneingOptions";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Instances";
			info.notCheckable = 1;
			info.disabled = 1;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Hyjal Summit";
			info.hasArrow = 1;
			info.notCheckable = 1;
			info.value = "HyjalSummit";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Sunwell Plateau";
			info.hasArrow = 1;
			info.notCheckable = 1;
			info.value = "SunwellPlateau";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Eye of Eternity";
			info.hasArrow = 1;
			info.notCheckable = 1;
			info.value = "EyeofEternity";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Ulduar";
			info.hasArrow = 1;
			info.notCheckable = 1;
			info.value = "Ulduar";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Trial of the Crusader";
			info.hasArrow = 1;
			info.notCheckable = 1;
			info.value = "CrusadersColiseum";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Icecrown Citadel";
			info.hasArrow = 1;
			info.notCheckable = 1;
			info.value = "IcecrownCitadel";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		end
				if(UIDROPDOWNMENU_MENU_VALUE == "AlteracValley") then
					info = {};
					info.text = "Start AV countdown";
					info.tooltipTitle = info.text;
					info.tooltipText = "You must be group leader.";
					info.notCheckable = 1;
					info.func = VBM_AVCountDownStart;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Auto accept join commands";
					info.tooltipTitle = info.text;
					info.tooltipText = "Accept the commands sent by Start AV countdown";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("AVAutoJoin");
					info.func = VBM_Toggle_Setting;
					info.value = "AVAutoJoin";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
				end
				
				if(UIDROPDOWNMENU_MENU_VALUE == "AutoZoneingOptions") then
					info = {};
					info.text = "Detailed Loot Information";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("AutoDetailedLoot");
					info.func = VBM_Toggle_Setting;
					info.value = "AutoDetailedLoot";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Player Names";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("AutoPlayerNames");
					info.func = VBM_Toggle_Setting;
					info.value = "AutoPlayerNames";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Player Guild Names";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("AutoPlayerGuildNames");
					info.func = VBM_Toggle_Setting;
					info.value = "AutoPlayerGuildNames";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Player Titles";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("AutoPlayerTitles");
					info.func = VBM_Toggle_Setting;
					info.value = "AutoPlayerTitles";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
				end
		
				if(UIDROPDOWNMENU_MENU_VALUE == "HyjalSummit") then
					info = {};
					info.text = "Tears of the Goddess Check";
					info.tooltipTitle = info.text;
					info.tooltipText = "Raidleader or Raidofficer may Click to start a Tears of the Goddess Check";
					info.notCheckable = 1;
					info.func = VBM_TearsOfTheGoddessCheckStart;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);	
				end
				
				if(UIDROPDOWNMENU_MENU_VALUE == "SunwellPlateau") then
					info = {};
					info.text = "EredarTwins Tank Switch";
					info.tooltipTitle = info.text;
					info.tooltipText = "Displays a Info Warn Mess then melee tanks are switched on Eredar Twins";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("EredarTwinsTankWarning");
					info.func = VBM_Toggle_Setting;
					info.value = "EredarTwinsTankWarning";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
				end
				if(UIDROPDOWNMENU_MENU_VALUE == "EyeofEternity") then
					info = {};
					info.text = "Toggle Malygos UI";
					info.tooltipTitle = info.text;
					info.tooltipText = "Ctrl+Click the Frame to lock it";
					info.notCheckable = 1;
					info.func = VBM_Toggle_MalygosUI;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Lock Malygos UI";
					info.tooltipTitle = info.text;
					info.tooltipText = "Ctrl+Click the Frame does Also Lock It";
					info.notCheckable = 1;
					info.func = VBM_MalygosUI_LockMouse;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Unlock Malygos UI";
					info.notCheckable = 1;
					info.func = VBM_MalygosUI_UnLockMouse;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Auto Show/Hide Malygos UI";
					info.tooltipTitle = info.text;
					info.tooltipText = "Auto show UI then Malygos is detected. And auto hide it then you zone out of a raid instance.";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("AutoMalygosUI");
					info.func = VBM_Toggle_Setting;
					info.value = "AutoMalygosUI";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
				end
				if(UIDROPDOWNMENU_MENU_VALUE == "Ulduar") then
					info = {};
					info.text = "Vehicle Check";
					info.tooltipTitle = info.text;
					info.tooltipText = "Print Flame Leviathan Vehicle info into chat.";
					info.notCheckable = 1;
					info.func = VBM_Ulduar_Vehicle_Setup;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Algalon ilvl 226 check";
					info.tooltipTitle = info.text;
					info.tooltipText = "Show result to self.";
					info.notCheckable = 1;
					info.func = VBM_UlduarAlgalonIlvlCheck;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Print Chat Algalon ilvl 226";
					info.tooltipTitle = info.text;
					info.tooltipText = "Prints result from check to chat.";
					info.notCheckable = 1;
					info.func = VBM_UlduarAlgalonIlvlCheckChat;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
				end
				if(UIDROPDOWNMENU_MENU_VALUE == "CrusadersColiseum") then
					info = {};
					info.text = "Disable Anub'arak adds timers";
					info.tooltipTitle = info.text;
					info.tooltipText = "This disables Shadow Strike and Nerubian Burrower spawn timers.";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("DisableAnubAddsTimers");
					info.func = VBM_Toggle_Setting;
					info.value = "DisableAnubAddsTimers";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
				end
				if(UIDROPDOWNMENU_MENU_VALUE == "IcecrownCitadel") then
					info = {};
					info.text = "The Lich King";
					info.notCheckable = 1;
					info.disabled = 1;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Disable Soul Reaper Timer";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("LichKingSoulReaperTimer");
					info.func = VBM_Toggle_Setting;
					info.value = "LichKingSoulReaperTimer";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					info = {};
					info.text = "Disable Soul Reaper MidScreenCountDown";
					info.keepShownOnClick = 1;
					info.checked = VBM_GetS("LichKingSoulReaper");
					info.func = VBM_Toggle_Setting;
					info.value = "LichKingSoulReaper";
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
				end
		--[[ ***************************************
		     /////// PRINT INFO MENU \\\\\\\\
		     ***************************************]]--
		if(UIDROPDOWNMENU_MENU_VALUE == "Printinfo") then
			info = {};
			info.text = "Print info";
			info.notCheckable = 1;
			info.disabled = 1;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "VBM Version Info (in raid)";
			info.notCheckable = 1;
			info.func = VBM_PrintVersions;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "VBM Varibel Info";
			info.notCheckable = 1;
			info.func = VBM_PrintVaribelInfo;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "";
			info.notCheckable = 1;
			info.disabled = 1;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Extra slash commands";
			info.func = VBM_Slashcommandinfo;
			info.notCheckable = 1;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Groupleader/Officer info";
			info.func = VisionBossMod_PrintOfficerInfo;
			info.notCheckable = 1;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "RaidModes info";
			info.func = VisionBossMod_PrintRaidModesInfo;
			info.notCheckable = 1;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
		end
		--[[ ***************************************
		     /////// EXTRA FEATURES \\\\\\\\
		     ***************************************]]--
		if(UIDROPDOWNMENU_MENU_VALUE == "ExtraFeatures") then
			info = {};
			info.text = "Extra Features";
			info.notCheckable = 1;
			info.disabled = 1;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Storm Earth Fire";
			info.notCheckable = 1;
			info.func = VBM_StormEarthFire;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Lament of the Highborne";
			info.notCheckable = 1;
			info.func = VBM_LamentoftheHighborne;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Magisters' Terrace - Grand Magister's Asylum";
			info.notCheckable = 1;
			info.func = VBM_Mgt_KT_Theme;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "World of Warcraft Main";
			info.notCheckable = 1;
			info.func = VBM_WowMain;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Burning Crusade Main";
			info.notCheckable = 1;
			info.func = VBM_BcMain;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Wrath of the Lich King Main";
			info.notCheckable = 1;
			info.func = VBM_WotlkMain;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Stop Music";
			info.notCheckable = 1;
			info.func = StopMusic;
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "World of Warcraft classic Sounds";
			info.hasArrow = 1;
			info.notCheckable = 1;
			info.value = "SoundMenu";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Burning Crusade Sounds";
			info.hasArrow = 1;
			info.notCheckable = 1;
			info.value = "BCSoundMenu";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
			info = {};
			info.text = "Wrath of the Lich King Sounds";
			info.hasArrow = 1;
			info.notCheckable = 1;
			info.value = "WOTLKSoundMenu";
			UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
			
		end
				if(UIDROPDOWNMENU_MENU_VALUE == "SoundMenu") then
					info = {};
					info.text = "Majordomo Executus";
					info.notCheckable = 1;
					info.func = VBM_Sound_Majordomo;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Ragnaros";
					info.notCheckable = 1;
					info.func = VBM_Sound_Ragnaros;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Vaelastrasz";
					info.notCheckable = 1;
					info.func = VBM_Sound_Vaelastrasz;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Nefarius";
					info.notCheckable = 1;
					info.func = VBM_Sound_Nefarius;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Nefarian";
					info.notCheckable = 1;
					info.func = VBM_Sound_Nefarian;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Hakkar the Soulflayer";
					info.notCheckable = 1;
					info.func = VBM_Sound_Hakkar;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Gothik the Harvester";
					info.notCheckable = 1;
					info.func = VBM_Sound_Gothik;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Heigan the Unclean (Dance Start)";
					info.notCheckable = 1;
					info.func = VBM_Sound_HeiganDance;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Highlord Mograine";
					info.notCheckable = 1;
					info.func = VBM_Sound_HighlordMograine;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);

					info = {};
					info.text = "Four Horsemen";
					info.notCheckable = 1;
					info.func = VBM_Sound_FourHorsemen;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
				end
				if(UIDROPDOWNMENU_MENU_VALUE == "BCSoundMenu") then
					info = {};
					info.text = "Dalliah vs Soccothrates";
					info.notCheckable = 1;
					info.func = VBM_Sound_WrathScryerAndDalliah;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Akama & Maiev Assault Black Temple";
					info.notCheckable = 1;
					info.func = VBM_Sound_AssaultBT;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Akama warning";
					info.notCheckable = 1;
					info.func = VBM_Sound_AkamaWarn;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Illidan Stormrage";
					info.notCheckable = 1;
					info.func = VBM_Sound_IllidanStormrage;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Maiev vs Illidan";
					info.notCheckable = 1;
					info.func = VBM_Sound_MaievvsIllidan;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Demon Within";
					info.notCheckable = 1;
					info.func = VBM_Sound_DemonIllidan;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Illidan Defeated";
					info.notCheckable = 1;
					info.func = VBM_Sound_IllidanDefeated;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
					
					info = {};
					info.text = "Eredar Twins";
					info.notCheckable = 1;
					info.func = VBM_Sound_EredarTwins;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
				end
				if(UIDROPDOWNMENU_MENU_VALUE == "WOTLKSoundMenu") then
					info = {};
					info.text = "Yogg-saron (Sara transforms)";
					info.notCheckable = 1;
					info.func = VBM_Sound_YoggSaraTransform;
					UIDropDownMenu_AddButton(info,UIDROPDOWNMENU_MENU_LEVEL);
				end
end
