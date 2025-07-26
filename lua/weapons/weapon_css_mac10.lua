SWEP.Base = "css_weapon_base"

SWEP.PrintName = "MAC10"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "l"

SWEP.Type = CSS_Smg

SWEP.HoldType = "revolver"


SWEP.CArmsSettings = {
	offsetPos = Vector(0,6,1),
	offsetAng = Angle(0,0,0)
}



SWEP.Spawnable = CSS_WeaponCompatibility:GetBool()

SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_smg_mac10.mdl")
SWEP.WorldModel = Model("models/weapons/w_smg_mac10.mdl")

SWEP.CSMuzzleX       = false
SWEP.CSMuzzleScale   = 1.1

SWEP.Primary.Sound = Sound("Weapon_MAC10.Single")

SWEP.Primary.Distance = 4096

SWEP.Primary.Ammo = "SMG1"
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Delay = 0.075
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 29


SWEP.MaxPlayerSpeed = 250


SWEP.Accuracy = {
    Spread      = 0.00100,

    Crouch      = 0.01425,
    Stand       = 0.01900,
    Jump        = 0.13704,
    Land        = 0.02741,
    Ladder      = 0.03426,
    Move        = 0.00620,
    
    Maximum     = 1.65
}
SWEP.SprayPatternRandomXSwap = true
SWEP.SprayPattern = {

	Angle(0,0,0),
	Angle(-1.3125,-1.1875,0),
	Angle(-2.21875,-0.125,0),
	Angle(-3.28125,-0.90625,0),
	Angle(-4.46875,-0.25,0),
	Angle(-5.40625,-0.78125,0),
	Angle(-6.59375,0.125,0),
	Angle(-5.40625,0.5,0),
	Angle(-6.59375,1.3125,0),
	Angle(-5.65625,2.09375,0),
	Angle(-6.84375,2.625,0),
	Angle(-5.65625,3.5625,0),
	Angle(-6.59375,4.34375,0),
	Angle(-4.875,5.125,0),
	Angle(-6.0625,5.9375,0),
	Angle(-5.125,5.78125,0),
	Angle(-4.59375,5,0),
	Angle(-5.40625,3.9375,0),
	Angle(-4.875,2.875,0),
	Angle(-5.78125,1.84375,0),
	Angle(-5.53125,0.65625,0),
	Angle(-6.4375,-1.1875,0),
	Angle(-5.25,-1.3125,0),
	Angle(-5.9375,-2.5,0),
	Angle(-5,-2.625,0),
	Angle(-5.9375,-3.6875,0),
	Angle(-7.25,-4.0625,0),
	Angle(-5.9375,-4.59375,0),
	Angle(-6.59375,-4.75,0),
	Angle(-5.78125,-4.85,0),

}

SWEP.IconOverride = "vgui/css/mac10_icon.png"