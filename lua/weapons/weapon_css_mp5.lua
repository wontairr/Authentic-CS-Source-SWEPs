SWEP.Base = "css_weapon_base"

SWEP.PrintName = "K&M SUB-MACHINE GUN"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "x"

SWEP.Type = CSS_Smg

SWEP.HoldType = "smg"


SWEP.CArmsSettings = {
	offsetPos = Vector(1.0,3,0.5),
	offsetAng = Angle(0,0,0)
}

SWEP.Spawnable = CSS_WeaponCompatibility:GetBool()

SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_smg_mp5.mdl")
SWEP.WorldModel = Model("models/weapons/w_smg_mp5.mdl")

SWEP.CSMuzzleX       = false
SWEP.CSMuzzleScale   = 1.1

SWEP.Primary.Sound = Sound("Weapon_MP5Navy.Single")

SWEP.Primary.Distance = 4096

SWEP.Primary.Ammo = "SMG1"
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Delay = 0.08
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 36


SWEP.MaxPlayerSpeed = 250


SWEP.Accuracy = {
    Spread      = 0.00100,

    Crouch      = 0.01289,
    Stand       = 0.01718,
    Jump        = 0.23025,
    Land        = 0.04605,
    Ladder      = 0.05756,
    Move        = 0.01785,
    
    Maximum     = 1.25
}
SWEP.SprayPatternRandomXSwap = true
SWEP.SprayPattern = {

	Angle(0,0,0),
	Angle(-0.78125,-0.25,0),
	Angle(-0.65625,0.375,0),
	Angle(-1.5625,0.25,0),
	Angle(-1.5625,1.4375,0),
	Angle(-2.625,0.78125,0),
	Angle(-2.875,1.5625,0),
	Angle(-3.6875,0.375,0),
	Angle(-3.9375,1.1875,0),
	Angle(-3.40625,2.375,0),
	Angle(-4.46875,2.375,0),
	Angle(-4.59375,1.3125,0),
	Angle(-5.65625,2.375,0),
	Angle(-5.65625,1.1875,0),
	Angle(-6.3125,1.1875,0),
	Angle(-5,0.65625,0),
	Angle(-5.78125,0,0),
	Angle(-5.25,-1.1875,0),
	Angle(-6.0625,-1.84375,0),
	Angle(-5.40625,-3.40625,0),
	Angle(-5.71875,-4.0625,0),
	Angle(-4.875,-4.34375,0),
	Angle(-5.125,-3.15625,0),
	Angle(-6.0625,-3.5625,0),
	Angle(-6.4375,-2.625,0),
	Angle(-5.65625,-1.5625,0),
	Angle(-6.1875,-1.3125,0),
	Angle(-6.1875,-0.25,0),
	Angle(-5.40625,0.125,0),
	Angle(-6.1875,1.03125,0),

}


SWEP.IconOverride = "vgui/css/mp5_icon.png"