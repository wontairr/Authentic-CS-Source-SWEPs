local flashbangBright = color_white
local flashbangDark   = Color(65,65,65)
local function GetFlashBangColor()
    return (CSSClientConvars.flashbang_dark:GetBool() and flashbangDark or flashbangBright)
end
local CSSSelectWeapon = nil

-- this is kinda dangerous but im tired.
hook.Add("Tick","CSS_SelectWeapon",function()
    if CSSSelectWeapon != nil then
        local ply = LocalPlayer()
        if not ply:Alive() then CSSSelectWeapon = nil return end
        local wep = ply:GetWeapon(CSSSelectWeapon)
        if IsValid(wep) then input.SelectWeapon(wep) CSSSelectWeapon = nil end
    end
end)
net.Receive("toClient_CSSSelectWeapon",function()
    local class = net.ReadString()
    local ply = LocalPlayer()
    if not IsValid(ply) then return end
    CSSSelectWeapon = class
end)

local function AddWeaponToCategory( propPanel, ent )
	return spawnmenu.CreateContentIcon( "weapon", propPanel, {
		nicename	= ent.PrintName or ent.ClassName,
		spawnname	= ent.ClassName,
		material	= ent.IconOverride or ( "entities/" .. ent.ClassName .. ".png" ),
		admin		= ent.AdminOnly
	} )
end

local function DoClick(self)
    net.Start("toServer_CSSRequestSpawn")
        net.WriteString(self.spawnname)
        net.WriteBool(false)
    net.SendToServer()
    surface.PlaySound( "ui/buttonclickrelease.wav" )
end
local function DoMiddleClick(self)
    net.Start("toServer_CSSRequestSpawn")
        net.WriteString(self.spawnname)
        net.WriteBool(true)
    net.SendToServer()
    surface.PlaySound( "ui/buttonclickrelease.wav" )
end

hook.Add("PopulateWeapons","CSS_PopulateSpawnmenu",function(pnlContent,tree,node)
    if CSS_WeaponCompatibility:GetBool() then return end
    timer.Simple(1,function()
        if not IsValid(tree) then return end
        -- Add a node to the tree
        local cat = "Counter-Strike: Source"
     
        local node = tree:AddNode( cat,"icon16/css.png" )
        tree.Categories = {}
        tree.Categories[ cat ] = node
        
        node.DoPopulate = function( self )

            -- If we've already populated it - forget it.
            if ( IsValid( self.PropPanel ) ) then return end

            -- Create the container panel
            self.PropPanel = vgui.Create( "ContentContainer", tree.pnlContent )
            self.PropPanel:SetVisible( false )
            self.PropPanel:SetTriggerSpawnlistChange( false )

            local weps = list.Get("CSSWeapons")
                
            if ( !weps ) then return end -- May no longer have any weapons due to autorefresh

            local categories = {
                [CSS_Sniper] = { name = "Scoped Rifles/Sniper Rifles", list = {},order = 0 },
                [CSS_Rifle] = { name = "Rifles", list = {},order = 1 },
                [CSS_Smg] = { name = "Submachine Guns", list = {},order = 2 },
                [CSS_Shotgun] = { name = "Shotguns", list = {},order = 3 },
                [CSS_Pistol] = { name = "Pistols", list = {},order = 4 },
                [CSS_Misc] = { name = "Miscellaneous", list = {},order = 5},
                ["misc"] = { name = "Miscellaneous", list = {},order = 6 },
                [CSS_Utility] = { name = "Utility (VERY W.I.P)", list = {},order = 7 },
                [CSS_Admin] = { name = "Awesome-Strike", list = {},order = 8 },
            }

                -- Categorize weapons
            for _, wep in ipairs(weps) do
                local cat = categories[wep.Type] or categories["misc"]
                table.insert(cat.list, wep)
            end

            -- Display weapons
            for _, cat in SortedPairsByMemberValue(categories,"order") do
                if #cat.list > 0 then
                    spawnmenu.CreateContentIcon("header", self.PropPanel, { text = cat.name })
                    for _, ent in SortedPairsByMemberValue(cat.list, "PrintName") do
                        local thing = AddWeaponToCategory(self.PropPanel, ent)
                        thing.spawnname = ent.ClassName
                        thing.DoClick = DoClick
                        thing.DoMiddleClick = DoMiddleClick
                    end
                end
            end


        end

        -- If we click on the node populate it and switch to it.
        node.DoClick = function( self )

            self:DoPopulate()
            local pnl = pnlContent or tree.pnlContent
            if pnl != nil then
                pnl:SwitchPanel( self.PropPanel )
            end

        end

        node.OnRemove = function( self )

            if ( IsValid( self.PropPanel ) ) then self.PropPanel:Remove() end

        end
    end)
end)

CSSSmokeColor = Color(70,70,70,255)
CSSSmokeGrenades = {}

local PLAYER = FindMetaTable("Player")
killicon.AddFont("weapon_css_knife","CSKillIcons","J",Color(255,80,0),0.2)
hook.Add("Initialize","CSSWeapons_KillIcons",function()
    for _,weapon in ipairs(weapons.GetList()) do
        if not weapon.Base then continue end
        if string.find(weapon.Base,"css_weapon_") != nil and not killicon.Exists(weapon.ClassName) then
            if weapon.ClassName == "weapon_css_knife" then
                killicon.AddFont("weapon_css_knife","CSKillIcons","J",Color(255,80,0),0.2)
                continue
            end
            killicon.AddFont(weapon.ClassName,"CSKillIcons",weapon.IconLetter,Color(255,80,0),0.2)
        end
    end
end)
for _,weapon in ipairs(weapons.GetList()) do
    if not weapon.Base then continue end
    if string.find(weapon.Base,"css_weapon_") != nil then
        killicon.AddFont(weapon.ClassName,"CSKillIcons",weapon.IconLetter,Color(255,80,0),0.2)
    end
end

hook.Add("HUDPaint","CSSHUDPaint",function()
    local ply = LocalPlayer()

    if CurTime() < (ply.m_blindUntilTime or 0) then 
        -- If the blind time is more than 5 seconds then hold it for a bit
        local doHold = (ply.m_blindUntilTime - ply.m_blindStartTime) > 5

        -- Smooth alpha to 0
        if (ply.m_blindUntilTime - CurTime() < ply.m_blindUntilTime - ply.m_blindUntilTimeTrim) or not doHold then
            ply.m_flFlashMaxAlpha = math.max(0, ply.m_flFlashMaxAlpha - (255 / (ply.m_flFlashDuration / (doHold and 2 or 1))) * FrameTime())
        end

        if ply.BlindSnapshot and not ply.GetBlindSnapshot then

            -- Restore normal blending
            render.OverrideBlend(false)
            -- Enable additive blending
            render.OverrideBlend(true, BLEND_SRC_ALPHA, BLEND_ONE, BLENDFUNC_ADD)
            -- Set the material and draw it
            surface.SetDrawColor(255, 255, 255, ply.m_flFlashMaxAlpha)  -- Adjust alpha for intensity
            surface.SetMaterial(ply.CSSflashBangSnapshotTexture)
            -- Hide the last snapshot during snapshot taking so the new snapshot isnt ruined
            surface.DrawTexturedRect(0, 0, ScrW(), ScrH())
            
            
        end

        local color = GetFlashBangColor()
        

        if not ply.GetBlindSnapshot then
            surface.SetDrawColor(color.r,color.g,color.b, ply.m_flFlashMaxAlpha)
            surface.DrawRect(0,0,ScrW(),ScrH())
        end

        if ply.m_flFlashMaxAlpha < 1 and file.Exists("css_accurate_flashbang_snapshot.jpg","DATA") then
            file.Delete("css_accurate_flashbang_snapshot.jpg","DATA") -- remove after done, dont think it works though
            ply.BlindSnapshot = nil
        end
    end
end)
hook.Add("PostRender","CSSGetBlindSnapshot",function()
    local self = LocalPlayer()

    -- Flashbang take a snapshot before you get blinded
    if not self.GetBlindSnapshot then return end

    self.GetBlindSnapshot = false
    self.BlindSnapshot = render.Capture({
        format = "jpg",
        quality = 80,
        x = 0, y = 0,
        w = ScrW(), h = ScrH()
    })
    file.Write("css_accurate_flashbang_snapshot.jpg",self.BlindSnapshot)
    self.CSSflashBangSnapshotTexture = Material("data/css_accurate_flashbang_snapshot.jpg")
end)

-- under
hook.Add("PreDrawViewModel","CSSSmokeBlind",function()
    local ply = LocalPlayer()
   
    if #CSSSmokeGrenades == 0 then ply.SmokeBlinded = false end

    for _, smoke in ipairs(CSSSmokeGrenades) do
        if IsValid(smoke) and smoke.Exploded then
            local dist = smoke.SmokePos:Distance2DSqr(ply:GetPos())
            if dist < 6000 then
                ply.SmokeBlinded = true
                smoke.ply = ply
                break
            else
                if smoke.ply != ply then continue end
                smoke.ply = nil
                ply.SmokeBlinded = false
            end

        end
    end

    cam.Start2D()
        ply.SmokeAlpha = Lerp(FrameTime()*2,ply.SmokeAlpha or 0,(ply.SmokeBlinded and 280 or 0))

        if ply.SmokeAlpha < 1 then cam.End2D() return end
        surface.SetDrawColor(CSSSmokeColor.r,CSSSmokeColor.g,CSSSmokeColor.b,ply.SmokeAlpha or 0)
        surface.DrawRect(0,0,ScrW(),ScrH())
    cam.End2D()
end)
-- over
hook.Add("PostDrawPlayerHands","CSSSmokeBlind",function()
    local ply = LocalPlayer()
    cam.Start2D()
        local alpha = math.Clamp(ply.SmokeAlpha or 0,0,230)
        if alpha < 1 then cam.End2D() return end
        surface.SetDrawColor(CSSSmokeColor.r,CSSSmokeColor.g,CSSSmokeColor.b,alpha or 0)
        surface.DrawRect(0,0,ScrW(),ScrH())
    cam.End2D()
end)

hook.Add("PlayerDeath","CSSSmokeBlind",function(ply)
    ply.SmokeBlinded = false
end)

function PLAYER:Blind(holdTime,fadeTime,startingAlpha)

    self.GetBlindSnapshot = true -- Get the snapshot taken

    holdTime = holdTime * CSSServerConvars.flashbang_blindtime_multiplier:GetFloat()

    -- Setup members for the player
    if not self.m_blindUntilTime then self.m_blindUntilTime = 0.0 end
    if not self.m_blindStartTime then self.m_blindStartTime = 0.0 end

    if not self.m_flFlashDuration then self.m_flFlashDuration = 0.0 end
    if not self.m_flFlashMaxAlpha then self.m_flFlashMaxAlpha = 255.0 end

	local clr = color_white

	clr.a = startingAlpha

	// estimate when we can see again
	local oldBlindUntilTime = self.m_blindUntilTime
	local oldBlindStartTime = self.m_blindStartTime
	self.m_blindUntilTime       = math.max( self.m_blindUntilTime, CurTime() + holdTime + 0.5 * fadeTime )
    self.m_blindUntilTimeTrim   = math.max( self.m_blindUntilTimeTrim or 0, CurTime() + holdTime )
	self.m_blindStartTime       = CurTime()

    fadeTime = fadeTime / 1.4

    if ( CurTime() > oldBlindUntilTime ) then
    
        // The previous flashbang is wearing off, or completely gone
        self.m_flFlashDuration = fadeTime
        self.m_flFlashMaxAlpha = startingAlpha
    
    else
    
        // The previous flashbang is still going strong - only extend the duration
        local remainingDuration = oldBlindStartTime + self.m_flFlashDuration - CurTime()

        self.m_flFlashDuration = math.max( remainingDuration, fadeTime )
        self.m_flFlashMaxAlpha = math.max( self.m_flFlashMaxAlpha, startingAlpha )

    end
end



function PLAYER:Deafen(flDistance)
	// Spectators don't get deafened
	if ( (self:GetObserverMode() == OBS_MODE_NONE)  ||  (self:GetObserverMode() == OBS_MODE_IN_EYE) ) then
		// dsp presets are defined in hl2/scripts/dsp_presets.txt

		local effect = 35
        local time = 4.5
        local timerName = tostring(self:SteamID()) .. "deafentimer"

		if( flDistance < 600 ) then
		
			time = 4.5
		
		elseif( flDistance < 800 ) then
		
			time = 1
		
		elseif( flDistance < 1000 ) then
        
			time = 0
        
		else
			// too far for us to get an effect
			return
        end

        self:SetDSP(effect)
        if time == 4.5 then return end
        local func = timer.Create
        if timer.Exists(timerName) then
            func = timer.Adjust
            time = time + timer.TimeLeft(timerName)
            time = math.Clamp(time,0,5)
        end
        func(timerName,time,1, function()
            if IsValid(self) then
                self:SetDSP(0)
            end
        end)
        timer.Create(timerName .. "tail",5.1,1,function()
            if IsValid(self) then
                self:SetDSP(0)
            end
        end)

		//TODO: bots can't hear sound for a while?
	end
end


