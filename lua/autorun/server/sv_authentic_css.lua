if engine.ActiveGamemode() == "terrortown" then
    local ttt_to_css = {
        weapon_ttt_glock    = "weapon_glock",
        weapon_ttt_m16      = "weapon_m4a1",
        weapon_zm_mac10     = "weapon_mac10",
        weapon_zm_pistol    = "weapon_fiveseven",
        weapon_zm_shotgun   = "weapon_xm1014",
        weapon_ttt_knife    = "weapon_knife",
        weapon_zm_sledge    = "weapon_m249",
        weapon_zm_rifle     = "weapon_scout"
    }
    local replaced = false 
    hook.Add("PostCleanupMap","CSSReplaceTTTWeapons",function()
        replaced = false
    end)
    hook.Add("OnEntityCreated","CSSReplaceTTTWeapons",function()
        if replaced then return end
        replaced = true 
        timer.Simple(0.5,function()
            for _,ent in ipairs(ents.GetAll()) do         
              
                if not IsValid(ent) then continue end
                local replace = ttt_to_css[ent:GetClass()]
      
                if replace then
                    print(ent)
                    local replaceEnt = ents.Create(replace)
                    if replaceEnt == nil then continue end
        
                    replaceEnt:SetPos(ent:GetPos())
                    replaceEnt:SetAngles(ent:GetAngles())
                    replaceEnt:Spawn()
                    ent:Remove()
                end
            end
        end)
    end)
end