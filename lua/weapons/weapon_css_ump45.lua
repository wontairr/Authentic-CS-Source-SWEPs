SWEP.Base = "css_weapon_base"

SWEP.PrintName = "K&M UMP45"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "q"

SWEP.Type = CSS_Smg

SWEP.HoldType = "smg"


SWEP.CArmsSettings = {
	offsetPos = Vector(1,5,0.5),
	offsetAng = Angle(0,0,0)
}

SWEP.Spawnable = CSS_WeaponCompatibility:GetBool()

SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_smg_ump45.mdl")
SWEP.WorldModel = Model("models/weapons/w_smg_ump45.mdl")

SWEP.CSMuzzleX       = false
SWEP.CSMuzzleScale   = 1.15

SWEP.Primary.Sound = Sound("Weapon_UMP45.Single")

SWEP.Primary.Distance = 4096

SWEP.Primary.Ammo = "SMG1"
SWEP.Primary.ClipSize = 25
SWEP.Primary.DefaultClip = 25
SWEP.Primary.Delay = 0.08
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 30


SWEP.MaxPlayerSpeed = 250


SWEP.Accuracy = {
    Spread      = 0.00100,

    Crouch      = 0.01439,
    Stand       = 0.01919,
    Jump        = 0.16941,
    Land        = 0.03388,
    Ladder      = 0.04235,
    Move        = 0.01366,
    
    Maximum     = 1.25
}
SWEP.SprayPatternRandomXSwap = false
SWEP.SprayPattern = {

	Angle(0,0,0),
	Angle(-1.03125,-0.90625,0),
	Angle(-1.1875,0.375,0),
	Angle(-0.65625,1.5625,0),
	Angle(-1.84375,1.4375,0),
	Angle(-2.75,0.65625,0),
	Angle(-1.96875,-0.25,0),
	Angle(-2.625,-1.03125,0),
	Angle(-3.28125,-0.375,0),
	Angle(-3.15625,0.78125,0),
	Angle(-2.5,1.6875,0),
	Angle(-3.28125,1.96875,0),
	Angle(-3.875,0.96875,0),
	Angle(-3.6875,0,0),
	Angle(-4.34375,-0.25,0),
	Angle(-4.59375,0.5,0),
	Angle(-4.59375,1.84375,0),
	Angle(-3.8125,2.375,0),
	Angle(-5,2.375,0),
	Angle(-5.25,3.28125,0),
	Angle(-5.65625,2.625,0),
	Angle(-5.40625,1.6875,0),
	Angle(-5.25,0.65625,0),
	Angle(-5.125,-0.25,0),
	Angle(-4.46875,1.03125,0),
	Angle(-4.46875,1.03125,0),
}


SWEP.IconOverride = "vgui/css/ump45_icon.png"