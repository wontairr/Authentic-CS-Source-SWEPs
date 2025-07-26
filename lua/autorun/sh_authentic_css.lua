CSS_AuthenticPackInstalled = true

list.Set("ContentCategoryIcons", "Counter-Strike: Source", "icon16/css.png")

sound.Add({
    name = "CSSGrenadeExplosion",
    sound = {"css/explode3.wav","css/explode4.wav","css/explode5.wav"},
    channel = CHAN_AUTO,
    level = 100,
    volume = 1,
    pitch = {80,120}

})


if #list.Get("CSSWeapons") <= 0 then
    timer.Simple(1,function()
        local weaponFiles = file.Find("weapons/*.lua", "LUA")
        for _, filename in ipairs(weaponFiles) do
            local ext = string.GetFileFromFilename(filename)
            ext = string.sub(ext,0,#ext - 4)
            if not string.StartsWith(ext,"weapon_css") then continue end
            local wep = weapons.Get(ext)
            if wep then list.Add("CSSWeapons",wep) end
        end
    end)
end

CSS_WeaponCompatibility = CreateConVar("css_sv_weapon_compatibility","0",{FCVAR_ARCHIVE,FCVAR_REPLICATED},
"If set to 1, weapons will switch to a compatibility mode where they work with loadout mods and similar things. (temporary until I can figure out how to do custom spawnlists properly)",0,1)

cvars.AddChangeCallback("css_sv_weapon_compatibility",function()
    MsgC(Color(255,0,0),"css_sv_weapon_compatibility: You have to restart/change the map for the changes to take effect!\n")
end,"css_sv_weapon_compat_change")
