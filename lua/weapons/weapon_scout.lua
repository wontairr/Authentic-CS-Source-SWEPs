SWEP.Base = "css_weapon_scoped_base"

SWEP.PrintName = "SCHMIDT SCOUT"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "n"

SWEP.HoldType = "ar2"

SWEP.CArmsSettings = {
	offsetPos = Vector(0,6,0),
	offsetAng = Angle(0,0,0)
}


SWEP.Spawnable = CSS_WeaponCompatibility:GetBool()

SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_snip_scout.mdl")
SWEP.WorldModel = Model("models/weapons/w_snip_scout.mdl")

SWEP.CSMuzzleX       = false
SWEP.CSMuzzleScale   = 1.35

SWEP.Primary.Sound = Sound("Weapon_Scout.Single")

SWEP.Primary.Distance = 8192

SWEP.Primary.Ammo = CSS_GetAmmo("ar2","BULLET_PLAYER_762MM")
SWEP.Primary.ClipSize = 10
SWEP.Primary.DefaultClip = 10
SWEP.Primary.Delay = 1.25
SWEP.Primary.Automatic = false
SWEP.Primary.Damage = 75

SWEP.Secondary.Automatic = true

SWEP.MaxPlayerSpeed = 260



SWEP.AccuracyUnScoped = {
    Spread      = 0.00030,

    Crouch      = 0.02378,
    Stand       = 0.03170,
    Jump        = 0.38195,
    Land        = 0.38195,
    Ladder      = 0.03819,
    Move        = 0.08935,
    
    Maximum     = 1.25
}
SWEP.Accuracy = SWEP.AccuracyUnScoped
SWEP.AccuracyScoped = {
    Spread      = 0.00030,

    Crouch      = 0.00300,
    Stand       = 0.00400,
    Jump        = 0.38195,
    Land        = 0.03819,
    Ladder      = 0.09549,
    Move        = 0.08935,
    
    Maximum     = 1.25
}

SWEP.SprayPattern = {
	"none"
}

SWEP.ScopeLevels 		= { 40, 15 } -- Fov numbers for the scoping level
SWEP.ScopeSensLevels    = { 0.4, 0.10 } -- Sensitivity multipliers for the scoping level


SWEP.IconOverride = "vgui/css/scout_icon.png"