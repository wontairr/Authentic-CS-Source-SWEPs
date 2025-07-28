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

local weaponList = {
    weapon_ak47 = true,
    weapon_aug = true,
    weapon_awp = true,
    weapon_deagle = true,
    weapon_deagleawesome = true,
    weapon_elite = true,
    weapon_famas = true,
    weapon_fiveseven = true,
    weapon_flashbang = true,
    weapon_g3sg1 = true,
    weapon_galil = true,
    weapon_glock = true,
    weapon_glockinator = true,
    weapon_hegrenade = true,
    weapon_knife = true,
    weapon_m3 = true,
    weapon_m4a1 = true,
    weapon_m249 = true,
    weapon_mac10 = true,
    weapon_macdadster = true,
    weapon_mp5navy = true,
    weapon_p90 = true,
    weapon_p228 = true,
    weapon_scout = true,
    weapon_sg550 = true,
    weapon_sg552 = true,
    weapon_tmp = true,
    weapon_ump45 = true,
    weapon_usp = true,
    weapon_xm1014 = true,
    weapon_xm9000 = true
}

if #list.Get("CSSWeapons") <= 0 then
    timer.Simple(1,function()
        local weaponFiles = file.Find("weapons/*.lua", "LUA")
        for _, filename in ipairs(weaponFiles) do
            local ext = string.GetFileFromFilename(filename)
            ext = string.sub(ext,0,#ext - 4)
            if not weaponList[ext] then continue end
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
