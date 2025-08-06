SWEP.Base = "css_weapon_base"

SWEP.PrintName = "IDF DEFENDER"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "v"

SWEP.HoldType = "ar2"

SWEP.CArmsSettings = {
	offsetPos = Vector(0.5,3.5,0.6),
	offsetAng = Angle(0,0,0)
}

SWEP.Spawnable = CSS_WeaponCompatibility:GetBool()

SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_rif_galil.mdl")
SWEP.WorldModel = Model("models/weapons/w_rif_galil.mdl")

SWEP.ViewModelRightHanded = true

SWEP.CSMuzzleX       = true
SWEP.CSMuzzleScale   = 1.6

SWEP.Primary.Sound = Sound("Weapon_Galil.Single")

SWEP.Primary.Distance = 8192

SWEP.Primary.Ammo = CSS_GetAmmo("ar2","BULLET_PLAYER_556MM")
SWEP.Primary.ClipSize = 35
SWEP.Primary.DefaultClip = 35
SWEP.Primary.Delay = 0.09
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 30


SWEP.MaxPlayerSpeed = 215


SWEP.Accuracy = {
    Spread      = 0.00060,

    Crouch      = 0.00939,
    Stand       = 0.01253,
    Jump        = 0.45434,
    Land        = 0.09087,
    Ladder      = 0.11358,
    Move        = 0.10561,
    
    Maximum     = 1.25
}
SWEP.SprayPatternRandomXSwap = true
SWEP.SprayPattern = {

	Angle(0,0,0),
	Angle(0,0.375,0),
	Angle(-0.25,0.78125,0),
	Angle(-2.09375,0.78125,0),
	Angle(-4.75,1.96875,0),
	Angle(-6.1875,1.5625,0),
	Angle(-5.78125,3.03125,0),
	Angle(-6.59375,2.625,0),
	Angle(-6.84375,0.90625,0),
	Angle(-6.1875,0.5,0),
	Angle(-6.59375,-0.125,0),
	Angle(-5.53125,-0.5,0),
	Angle(-6.3125,-1.3125,0),
	Angle(-5.78125,-1.84375,0),
	Angle(-6.4375,-2.875,0),
	Angle(-6.0625,-3.15625,0),
	Angle(-6.84375,-3.40625,0),
	Angle(-7.375,-2.875,0),
	Angle(-7.25,-2.21875,0),
	Angle(-7.125,-0.78125,0),
	Angle(-6.71875,-0.125,0),
	Angle(-6.4375,1.375,0),
	Angle(-7.25,1.96875,0),
	Angle(-7.125,3.03125,0),
	Angle(-6.4375,3.6875,0),
	Angle(-6.3125,4.46875,0),
	Angle(-6.96875,4.21875,0),
	Angle(-7.375,3.6875,0),
	Angle(-6.96875,3.03125,0),
	Angle(-7.125,2.375,0),
	Angle(-7.5,1.4375,0),
	Angle(-6.96875,0.5,0),
	Angle(-7.125,0.125,0),
	Angle(-7.375,-0.5,0),
	Angle(-6.96875,-1.4375,0),

}

SWEP.IconOverride = "vgui/css/galil_icon.png"