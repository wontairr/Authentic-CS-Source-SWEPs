SWEP.Base = "css_weapon_scoped_base"
SWEP.Type = CSS_Admin
SWEP.Slot = CSS_SelectSlot(SWEP.Type)
SWEP.PrintName = "AWPS-74U"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "r"

SWEP.HoldType = "ar2"

SWEP.Spawnable = CSS_WeaponCompatibility:GetBool()

SWEP.CArmsSettings = {
	offsetPos = Vector(-0.3,2.7,0.6),
	offsetAng = Angle(0,0,0)
}

SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_snip_awp.mdl")
SWEP.WorldModel = Model("models/weapons/w_snip_awp.mdl")

SWEP.CSMuzzleX       = false
SWEP.CSMuzzleScale   = 1.35

SWEP.Primary.Sound = Sound("Weapon_AWP.Single")

SWEP.Primary.Distance = 8192

SWEP.Primary.Ammo = CSS_GetAmmo("ar2","BULLET_PLAYER_762MM")
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Delay = 0.1
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 115

SWEP.Secondary.Automatic = true

SWEP.MaxPlayerSpeed = 210

SWEP.HideCrosshair = false
SWEP.Accuracy = {
    Spread      = 0.00020,

    Crouch      = 0.00150,
    Stand       = 0.00200,
    Jump        = 0.54600,
    Land        = 0.05460,
    Ladder      = 0.13650,
    Move        = 0.14400,
    
    Maximum     = 1.25
}
SWEP.AccuracyUnScoped = {
    Spread      = 0.00020,

    Crouch      = 0.00150,
    Stand       = 0.00200,
    Jump        = 0.54600,
    Land        = 0.05460,
    Ladder      = 0.13650,
    Move        = 0.14400,
    
    Maximum     = 1.25
}
SWEP.AccuracyScoped = {
    Spread      = 0.00020,

    Crouch      = 0.00150,
    Stand       = 0.00200,
    Jump        = 0.54600,
    Land        = 0.05460,
    Ladder      = 0.13650,
    Move        = 0.14400,
    
    Maximum     = 1.25
}


SWEP.IconOverride = "vgui/gfx/vgui/market_sticker_category"
