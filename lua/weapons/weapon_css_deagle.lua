SWEP.Base = "css_weapon_pistol_base"

SWEP.PrintName = "NIGHT HAWK .50C"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "f"

SWEP.HoldType = "revolver"

SWEP.CArmsSettings = {
	offsetPos = Vector(0,7.2,1.5),
	offsetAng = Angle(0,-1,0)
}

SWEP.Spawnable = false


SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_pist_deagle.mdl")
SWEP.WorldModel = Model("models/weapons/w_pist_deagle.mdl")

SWEP.CSMuzzleX       = false
SWEP.CSMuzzleScale   = 1.2

SWEP.Primary.Sound = Sound("Weapon_DEagle.Single")

SWEP.Primary.Distance = 4096
SWEP.Primary.Ammo = "357"
SWEP.Primary.ClipSize = 7
SWEP.Primary.DefaultClip = 7
SWEP.Primary.Delay = 0.225
SWEP.Primary.Damage = 54
SWEP.Primary.Force = 1.2


SWEP.MaxPlayerSpeed = 250


SWEP.Accuracy = {
    Spread      = 0.00400,

    Crouch      = 0.00975,
    Stand       = 0.01300,
    Jump        = 0.34500,
    Land        = 0.06900,
    Ladder      = 0.02300,
    Move        = 0.02070,
    
    Maximum     = 1.25
}
SWEP.SprayPatternRandomXSwap = false
SWEP.SprayPattern = {

	"none"


}


SWEP.IconOverride = "vgui/css/deserteagle_icon.png"

