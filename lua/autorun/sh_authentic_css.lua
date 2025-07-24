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