SWEP.Base = "css_weapon_scoped_base"

SWEP.PrintName = "KRIEG 550 COMMANDO"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "o"

SWEP.HoldType = "ar2"

SWEP.CArmsSettings = {
	offsetPos = Vector(0,6,1),
	offsetAng = Angle(0,0,0)
}


SWEP.Spawnable = false

SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_snip_sg550.mdl")
SWEP.WorldModel = Model("models/weapons/w_snip_sg550.mdl")

SWEP.CSMuzzleX       = true
SWEP.CSMuzzleScale   = 1.6

SWEP.Primary.Sound = Sound("Weapon_SG550.Single")

SWEP.Primary.Distance = 8192

SWEP.Primary.Ammo = "ar2"
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Delay = 0.25
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 70

SWEP.Secondary.Automatic = true

SWEP.MaxPlayerSpeed = 210


SWEP.Accuracy = {
    Spread      = 0.00030,

    Crouch      = 0.01928,
    Stand       = 0.02570,
    Jump        = 0.43727,
    Land        = 0.04373,
    Ladder      = 0.10931,
    Move        = 0.10180,
    
    Maximum     = 1.25
}
SWEP.AccuracyUnScoped = {
    Spread      = 0.00030,

    Crouch      = 0.01928,
    Stand       = 0.02570,
    Jump        = 0.43727,
    Land        = 0.04373,
    Ladder      = 0.10931,
    Move        = 0.10180,
    
    Maximum     = 1.25
}
SWEP.AccuracyScoped = {
    Spread      = 0.00500,

    Crouch      = 0.00150,
    Stand       = 0.00200,
    Jump        = 0.43727,
    Land        = 0.04373,
    Ladder      = 0.10931,
    Move        = 0.10180,
    
    Maximum     = 1.25
}

SWEP.SprayPattern = {
	"none"
}

SWEP.StayScopedAfterShot = true

SWEP.ScopeLevels 		= { 40, 15 } -- Fov numbers for the scoping level
SWEP.ScopeSensLevels    = { 0.4, 0.10 } -- Sensitivity multipliers for the scoping level


SWEP.IconOverride = "vgui/css/sg550_icon.png"