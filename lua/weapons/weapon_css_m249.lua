SWEP.Base = "css_weapon_base"

SWEP.PrintName = "M249"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "z"

SWEP.HoldType = "ar2"


SWEP.CArmsSettings = {
	offsetPos = Vector(0,5,0.5),
	offsetAng = Angle(0,0,0)
}



SWEP.Spawnable = CSS_WeaponCompatibility:GetBool()

SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_mach_m249para.mdl")
SWEP.WorldModel = Model("models/weapons/w_mach_m249para.mdl")

SWEP.ViewModelFlip = false -- required or else due to networking the gun will be seen flipped for a sec
SWEP.ViewModelRightHanded = true

SWEP.CSMuzzleX       = true
SWEP.CSMuzzleScale   = 1.5

SWEP.Primary.Sound = Sound("Weapon_M249.Single")

SWEP.Primary.Distance = 8192

SWEP.Primary.Ammo = "ar2"
SWEP.Primary.ClipSize = 100
SWEP.Primary.DefaultClip = 100
SWEP.Primary.Delay = 0.08
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 35


SWEP.MaxPlayerSpeed = 221


SWEP.Accuracy = {
    Spread      = 0.00060,

    Crouch      = 0.00687,
    Stand       = 0.00916,
    Jump        = 0.43044,
    Land        = 0.08609,
    Ladder      = 0.10761,
    Move        = 0.09222,
    
    Maximum     = 1.25
}
SWEP.SprayPatternRandomXSwap = true
SWEP.SprayPattern = {

	Angle(0,0,0),
	Angle(-1.1875,-0.5,0),
	Angle(-3.6875,-1.6875,0),
	Angle(-5.65625,-0.375,0),
	Angle(-6.84375,-1.4375,0),
	Angle(-7.5,-2.5,0),
	Angle(-8.6875,-2.75,0),
	Angle(-9.21875,-3.6875,0),
	Angle(-8.4375,-4.21875,0),
	Angle(-8.3125,-5.40625,0),
	Angle(-9.5,-5.65625,0),
	Angle(-9.34375,-6.3125,0),
	Angle(-8.15625,-6.4375,0),
	Angle(-7.125,-5.46875,0),
	Angle(-6.96875,-4.21875,0),
	Angle(-7.90625,-3.15625,0),
	Angle(-8.96875,-2.5,0),
	Angle(-8.5625,-1.84375,0),
	Angle(-7.5,-0.5,0),
	Angle(-8.4375,-0.125,0),
	Angle(-8.6875,0.78125,0),
	Angle(-8.03125,1.1875,0),
	Angle(-7.375,1.6875,0),
	Angle(-7.78125,2.5,0),
	Angle(-8.5625,2.5,0),
	Angle(-8.4375,3.40625,0),
	Angle(-7.625,3.5625,0),
	Angle(-7.90625,4.34375,0),
	Angle(-8.15625,4.875,0),
	Angle(-7.125,5.65625,0),
	Angle(-7.125,6.65625,0),
	Angle(-8.03125,6.84375,0),
	Angle(-8.3125,7.78125,0),
	Angle(-7.25,7.25,0),
	Angle(-7.375,6.0625,0),
	Angle(-8.5625,5.78125,0),
	Angle(-9.21875,5.25,0),
	Angle(-9.09375,4.21875,0),
	Angle(-8.3125,3.40625,0),
	Angle(-9.625,3.03125,0),
	Angle(-9.625,2.375,0),
	Angle(-9.09375,1.6875,0),
	Angle(-9.625,0.78125,0),
	Angle(-9.21875,-0.375,0),
	Angle(-8.84375,-0.90625,0),
	Angle(-9.75,-2.09375,0),
	Angle(-9.5,-3.03125,0),
	Angle(-9.09375,-3.40625,0),
	Angle(-9.5,-4.75,0),
	Angle(-9.09375,-5.78125,0),
	Angle(-7.90625,-5.25,0),
	Angle(-8.3125,-3.6875,0),
	Angle(-8.5625,-2.15625,0),
	Angle(-7.90625,-1.03125,0),
	Angle(-7.90625,0.78125,0),
	Angle(-8.84375,1.96875,0),
	Angle(-8.5625,2.875,0),
	Angle(-8.03125,3.28125,0),
	Angle(-7.5,4.0625,0),
	Angle(-7.5,5.65625,0),
	Angle(-8.4375,6.59375,0),
	Angle(-8.96875,6.84375,0),
	Angle(-8.03125,6.1875,0),
	Angle(-8.6875,6.0625,0),
	Angle(-9.09375,4.34375,0),
	Angle(-8.6875,4.21875,0),
	Angle(-9.09375,3.28125,0),
	Angle(-8.84375,1.4375,0),
	Angle(-8.4375,1.1875,0),
	Angle(-9.5,0.125,0),
	Angle(-8.84375,-0.5,0),
	Angle(-9.09375,-1.5625,0),
	Angle(-8.5625,-2.625,0),
	Angle(-9.21875,-3.6875,0),
	Angle(-8.6875,-4.875,0),
	Angle(-8.96875,-5.40625,0),
	Angle(-8.03125,-5.25,0),
	Angle(-8.96875,-3.5625,0),
	Angle(-8.5625,-2.21875,0),
	Angle(-9.34375,-1.6875,0),
	Angle(-9.09375,-0.25,0),
	Angle(-8.84375,0.25,0),
	Angle(-9.09375,1.96875,0),
	Angle(-9.21875,3.40625,0),
	Angle(-9.34375,5.125,0),
	Angle(-8.6875,6.71875,0),
	Angle(-8.03125,6.96875,0),
	Angle(-7.90625,6.3125,0),
	Angle(-7.90625,4.59375,0),
	Angle(-8.3125,3.28125,0),
	Angle(-8.4375,1.25,0),
	Angle(-8.4375,0,0),
	Angle(-8.6875,-1.96875,0),
	Angle(-8.84375,-4.21875,0),
	Angle(-9.21875,-5.53125,0),
	Angle(-9.21875,-6.71875,0),
	Angle(-9.34375,-4.46875,0),
	Angle(-9.21875,-3.28125,0),
	Angle(-9.09375,-1.1875,0),
	Angle(-8.96875,0.65625,0),

}

SWEP.IconOverride = "vgui/css/m249_icon.png"