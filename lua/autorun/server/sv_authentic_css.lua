if engine.ActiveGamemode() == "terrortown" then


    local crowbarIsKnife = CreateConVar("css_ttt_knife","0",{FCVAR_ARCHIVE,FCVAR_REPLICATED},"If set to 1, the crowbar in TTT will be the CS:S Knife.",0,1)

    local ttt_to_css = {
        weapon_ttt_glock    = "weapon_glock",
        weapon_ttt_m16      = "weapon_m4a1",
        weapon_zm_mac10     = "weapon_mac10",
        weapon_zm_pistol    = "weapon_fiveseven",
        weapon_zm_shotgun   = "weapon_xm1014",
        weapon_ttt_knife    = "weapon_knife",
        weapon_zm_sledge    = "weapon_m249",
        weapon_zm_rifle     = "weapon_scout",
        weapon_zm_revolver  = "weapon_deagle",
        weapon_si_pistol    = "weapon_usp"
    }
    local function replace(ent)
        if not IsValid(ent) or CLIENT then return end
        local replace = ttt_to_css[ent:GetClass()]
      
        if replace then
            local replaceEnt = ents.Create(replace)
            if replaceEnt == nil then return end
        
            replaceEnt:SetPos(ent:GetPos())
            replaceEnt:SetAngles(ent:GetAngles())
            replaceEnt:Spawn()
            ent:Remove()
        end
    end
    cvars.AddChangeCallback("css_ttt_knife",function(name,old,new)
        if tobool(new) then
            print("Switching to Knife")
            ttt_to_css["weapon_zm_improvised"] = "weapon_knife"
            if CLIENT then return end          
            timer.Simple(0.5,function()
                for _,ent in ipairs(ents.GetAll()) do         
                    replace(ent)
                end
            end)  
        else
            ttt_to_css["weapon_zm_improvised"] = nil
        end
    end,"css_ttt_knife_callback")

    local replaced = false 
    hook.Add("PostCleanupMap","CSSReplaceTTTWeapons",function()
        replaced = false
    end)

    hook.Add("OnEntityCreated","CSSReplaceTTTWeapons",function(createdEnt)

        replace(createdEnt)

        -- Replace all weapons on map reload.
        if replaced then return end
        replaced = true 
        timer.Simple(0.5,function()
            for _,ent in ipairs(ents.GetAll()) do         
                replace(ent)
            end
        end)
    end)
end