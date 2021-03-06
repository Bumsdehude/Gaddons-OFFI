--[[
	
]]--
VBM_LoadInstance["The Obsidian Sanctum"] = function()
	VBM_BOSS_DATA["Sartharion"] = {
		spells = {
			["Shadow Fissure"] = {
				event = "SPELL_CAST_SUCCESS",
				spell = "Shadow Fissure",
				lowersound = true,
				func = function() vbm_smallwarn("* * * Void Zone Spawned * * *"); end,
			},
			["Disciple of Vesperon"] = {
				event = "UNIT_DIED",
				dest = "Acolyte of Vesperon",
				func = function(src,dest) VBM_BossSend("DISCIPLEDEADVESP"); end,
			},
			["Disciple of Shadron"] = {
				event = "UNIT_DIED",
				dest = "Acolyte of Shadron",
				func = function(src,dest) VBM_BossSend("DISCIPLEDEADSHAD"); end,
			},
			["Hatch Eggs"] = {
				event = "SPELL_CAST_START",
				spell = "Hatch Eggs",
				timername = "Whelps Spawn",
				texture = "inv_egg_09",
				timer = 18,
				mess = "* * * Hatch Eggs * * *",
				func = function()
					VBM_Delay(13,VBM_PlaySoundFile,VBM_PVPFLAG2_SOUND);
					VBM_Delay(13,vbm_bigwarn,"* * Whelps in "..vbm_c_w.."5"..vbm_c_r.." * *");
					VBM_Delay(14,vbm_bigwarn,"* * Whelps in "..vbm_c_w.."4"..vbm_c_r.." * *");
					VBM_Delay(15,vbm_bigwarn,"* * Whelps in "..vbm_c_w.."3"..vbm_c_r.." * *");
					VBM_Delay(16,vbm_bigwarn,"* * Whelps in "..vbm_c_w.."2"..vbm_c_r.." * *");
					VBM_Delay(17,vbm_bigwarn,"* * Whelps in "..vbm_c_w.."1"..vbm_c_r.." * *");
					VBM_Delay(18,vbm_bigwarn,"* * Whelps in "..vbm_c_w.."0"..vbm_c_r.." * *",0.1);
				end,
			},
		},
		
		emotes = {
			["The lava surrounding"] = {nil,false,function() 
				VBM_BossTimer(30,"Lava Wave",VBM_ICONS.."Ability_Mage_FireStarter");
				VBM_PlaySoundFile(VBM_STANDARD_DONG_SOUND);
				vbm_debuffwarn(vbm_c_t.."* * * Lava Wave ("..vbm_c_w.."7"..vbm_c_t..") * * *");
				VBM_Delay(1,vbm_debuffwarn,vbm_c_t.."* * * Lava Wave ("..vbm_c_w.."6"..vbm_c_t..") * * *");
				VBM_Delay(2,vbm_debuffwarn,vbm_c_t.."* * * Lava Wave ("..vbm_c_w.."5"..vbm_c_t..") * * *");
				VBM_Delay(3,vbm_debuffwarn,vbm_c_t.."* * * Lava Wave ("..vbm_c_w.."4"..vbm_c_t..") * * *");
				VBM_Delay(4,vbm_debuffwarn,vbm_c_t.."* * * Lava Wave ("..vbm_c_w.."3"..vbm_c_t..") * * *");
				VBM_Delay(5,vbm_debuffwarn,vbm_c_t.."* * * Lava Wave ("..vbm_c_w.."2"..vbm_c_t..") * * *");
				VBM_Delay(6,vbm_debuffwarn,vbm_c_t.."* * * Lava Wave ("..vbm_c_w.."1"..vbm_c_t..") * * *");
				VBM_Delay(7,vbm_debuffwarn,vbm_c_t.."* * * Lava Wave ("..vbm_c_w.."0"..vbm_c_t..") * * *",0.1);
			end},
		},
		start = function() 
			VBM_BossTimer(30,"Lava Wave",VBM_ICONS.."Ability_Mage_FireStarter");
			VBM_BossTimer(30,"Tenebron - Landing",VBM_ICONS.."inv_misc_head_dragon_black"); 
			--if(not VBM_GetS("DisablePortalTimer")) then	VBM_Delay(30,VBM_BossTimer,20,"Tenebron - Portal",VBM_ICONS.."inv_misc_head_dragon_black");	end
			VBM_BossTimer(75,"Shadron - Landing",VBM_ICONS.."inv_misc_head_dragon_01");
			VBM_BossTimer(120,"Vesperon - Landing",VBM_ICONS.."inv_misc_head_dragon_bronze");
		end,
		bossevent = function(text)
			if(text=="DISCIPLEDEADVESP") then
				vbm_bigwarn("* * * Spell Reflect Down * * *",2,0,1,0);
			end
			if(text=="DISCIPLEDEADSHAD") then
				vbm_bigwarn("* * * Shield Down * * *",2,0,1,0);
			end
		end,
	};
	
	VBM_BOSS_DATA["Trash"] = {
		emotes = {
			["begins to open a Twilight Portal"] = {nil,false,function(text,drake) 
				if(drake=="Tenebron") then
					--if(not VBM_GetS("DisablePortalTimer")) then VBM_BossTimer(45,"Tenebron - Portal",VBM_ICONS.."inv_misc_head_dragon_black"); end
					--vbm_bigwarn(vbm_c_purple.."* * * Tenebron - Portal * * *");
				elseif(drake=="Vesperon") then
					VBM_BossTimer(58,"Spell Reflect CD",VBM_ICONS.."inv_misc_head_dragon_bronze");
					--vbm_bigwarn(vbm_c_bronze.."* * * Vesperon - Portal * * *");
					vbm_bigwarn(vbm_c_bronze.."* * * Spell Reflect Up * * *",5,1,0,1);
					VBM_PlaySoundFile(VBM_BOAT_SOUND);
				elseif(drake=="Shadron") then
					VBM_BossTimer(55,"Shield CD",VBM_ICONS.."inv_misc_head_dragon_01");
					--vbm_bigwarn(vbm_c_r.."* * * Shadron - Portal * * *");
					vbm_bigwarn("* * * Shield Up * * *",5,1,0,1);
					VBM_PlaySoundFile(VBM_SIMON_SOUND);
				end
			end},
		},--
	};
end