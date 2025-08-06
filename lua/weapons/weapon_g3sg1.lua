SWEP.Base = "css_weapon_scoped_base"

SWEP.PrintName = "G3/SG1"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "i"

SWEP.HoldType = "ar2"

SWEP.CArmsSettings = {
	offsetPos = Vector(1,3,1),
	offsetAng = Angle(0,0,0)
}

SWEP.Spawnable = CSS_WeaponCompatibility:GetBool()

SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_snip_g3sg1.mdl")
SWEP.WorldModel = Model("models/weapons/w_snip_g3sg1.mdl")

SWEP.CSMuzzleX       = true
SWEP.CSMuzzleScale   = 1.5

SWEP.Primary.Sound = Sound("Weapon_G3SG1.Single")

SWEP.Primary.Distance = 8192

SWEP.Primary.Ammo = CSS_GetAmmo("ar2","BULLET_PLAYER_762MM")
SWEP.Primary.ClipSize = 20
SWEP.Primary.DefaultClip = 20
SWEP.Primary.Delay = 0.25
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 80

SWEP.Secondary.Automatic = true

SWEP.MaxPlayerSpeed = 210


SWEP.Accuracy = {
    Spread      = 0.00030,

    Crouch      = 0.01935,
    Stand       = 0.02580,
    Jump        = 0.46557,
    Land        = 0.04656,
    Ladder      = 0.11639,
    Move        = 0.11091,
    
    Maximum     = 1.25
}
SWEP.AccuracyUnScoped = {
    Spread      = 0.00030,

    Crouch      = 0.01935,
    Stand       = 0.02580,
    Jump        = 0.46557,
    Land        = 0.04656,
    Ladder      = 0.11639,
    Move        = 0.11091,
    
    Maximum     = 1.25
}
SWEP.AccuracyScoped = {
    Spread      = 0.00030,

    Crouch      = 0.00150,
    Stand       = 0.00200,
    Jump        = 0.46557,
    Land        = 0.04656,
    Ladder      = 0.11639,
    Move        = 0.11091,
    
    Maximum     = 1.25
}

SWEP.SprayPattern = {
	"none"
}

SWEP.StayScopedAfterShot = true

SWEP.ScopeLevels 		= { 40, 15 } -- Fov numbers for the scoping level
SWEP.ScopeSensLevels    = { 0.4, 0.10 } -- Sensitivity multipliers for the scoping level


SWEP.IconOverride = "vgui/css/g3sg1_icon.png"