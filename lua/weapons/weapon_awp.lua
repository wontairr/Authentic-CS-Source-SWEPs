SWEP.Base = "css_weapon_scoped_base"

SWEP.PrintName = "MAGNUM SNIPER RIFLE"
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

SWEP.Primary.Ammo = CSS_GetAmmo("ar2","BULLET_PLAYER_338MAG")
SWEP.Primary.ClipSize = 10
SWEP.Primary.DefaultClip = 10
SWEP.Primary.Delay = 1.5
SWEP.Primary.Automatic = false
SWEP.Primary.Damage = 115

SWEP.Secondary.Automatic = true

SWEP.MaxPlayerSpeed = 210


SWEP.Accuracy = {
    Spread      = 0.00020,

    Crouch      = 0.06060,
    Stand       = 0.08080,
    Jump        = 0.54600,
    Land        = 0.05460,
    Ladder      = 0.13650,
    Move        = 0.14400,
    
    Maximum     = 1.25
}
SWEP.AccuracyUnScoped = {
    Spread      = 0.00020,

    Crouch      = 0.06060,
    Stand       = 0.08080,
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

SWEP.SprayPattern = {
	"none"
}


SWEP.IconOverride = "vgui/css/awp_icon.png"