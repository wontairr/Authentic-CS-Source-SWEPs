SWEP.Base = "css_weapon_base"

SWEP.PrintName = "ES C90"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "m"

SWEP.Type = CSS_Smg

SWEP.HoldType = "smg"


SWEP.CArmsSettings = {
	offsetPos = Vector(0.25,4.5,0.5),
	offsetAng = Angle(0,0,0)
}



SWEP.Spawnable = CSS_WeaponCompatibility:GetBool()

SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_smg_p90.mdl")
SWEP.WorldModel = Model("models/weapons/w_smg_p90.mdl")

SWEP.CSMuzzleX       = true
SWEP.CSMuzzleScale   = 1.2

SWEP.Primary.Sound = Sound("Weapon_P90.Single")

SWEP.Primary.Distance = 4096

SWEP.Primary.Ammo = CSS_GetAmmo("SMG1","BULLET_PLAYER_57MM")
SWEP.Primary.ClipSize = 50
SWEP.Primary.DefaultClip = 50
SWEP.Primary.Delay = 0.07
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 26


SWEP.MaxPlayerSpeed = 245


SWEP.Accuracy = {
    Spread      = 0.00100,

    Crouch      = 0.01463,
    Stand       = 0.01951,
    Jump        = 0.16494,
    Land        = 0.03299,
    Ladder      = 0.04124,
    Move        = 0.01062,
    
    Maximum     = 1.25
}
SWEP.SprayPatternRandomXSwap = true
SWEP.SprayPattern = {

	Angle(0,0,0),
	Angle(0.25,-0.25,0),
	Angle(0.65625,0.78125,0),
	Angle(-1.1875,1.03125,0),
	Angle(-3.8125,2.09375,0),
	Angle(-4.75,1.96875,0),
	Angle(-6.4375,1.3125,0),
	Angle(-5,0.5,0),
	Angle(-7.25,0,0),
	Angle(-6.0625,-0.375,0),
	Angle(-8.03125,-0.90625,0),
	Angle(-5.65625,-1.03125,0),
	Angle(-6.59375,-1.4375,0),
	Angle(-7.78125,-1.96875,0),
	Angle(-5.65625,-1.96875,0),
	Angle(-6.4375,-2.5,0),
	Angle(-7.5,-2.75,0),
	Angle(-6.0625,-2.875,0),
	Angle(-6.84375,-1.6875,0),
	Angle(-5.9375,-1.03125,0),
	Angle(-7.125,-0.375,0),
	Angle(-6.3125,0.65625,0),
	Angle(-7.5,0.78125,0),
	Angle(-6.96875,1.84375,0),
	Angle(-5.78125,1.96875,0),
	Angle(-6.84375,2.75,0),
	Angle(-5.9375,3.15625,0),
	Angle(-6.96875,3.6875,0),
	Angle(-6.1875,3.6875,0),
	Angle(-7.78125,2.625,0),
	Angle(-6.4375,2.21875,0),
	Angle(-8.3125,1.4375,0),
	Angle(-7.25,0.90625,0),
	Angle(-8.4375,0.375,0),
	Angle(-6.84375,-0.25,0),
	Angle(-7.625,-1.5625,0),
	Angle(-6.84375,-1.96875,0),
	Angle(-7.625,-2.75,0),
	Angle(-6.4375,-3.28125,0),
	Angle(-7.625,-3.6875,0),
	Angle(-6.3125,-3.28125,0),
	Angle(-5.78125,-2.5,0),
	Angle(-7.375,-0.90625,0),
	Angle(-6.3125,-0.125,0),
	Angle(-7.375,1.03125,0),
	Angle(-6.59375,1.84375,0),
	Angle(-7.25,2.375,0),
	Angle(-6.3125,2.875,0),
	Angle(-8.15625,3.28125,0),
	Angle(-7.125,3.6875,0),

}


SWEP.IconOverride = "vgui/css/p90_icon.png"