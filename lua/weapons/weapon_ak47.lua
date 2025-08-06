SWEP.Base = "css_weapon_base"

SWEP.PrintName = "CV-47"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "b"

SWEP.HoldType = "ar2"


SWEP.Spawnable = CSS_WeaponCompatibility:GetBool()

SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_rif_ak47.mdl")
SWEP.WorldModel = Model("models/weapons/w_rif_ak47.mdl")

SWEP.CSMuzzleX       = true
SWEP.CSMuzzleScale   = 1.6

SWEP.Primary.Sound = Sound("Weapon_AK47.Single")

SWEP.Primary.Distance = 8192

SWEP.Primary.Ammo = CSS_GetAmmo("ar2","BULLET_PLAYER_762MM")
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Delay = 0.1
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 36


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
	Angle(-0.90625,-0.78125,0),
	Angle(-1.1875,0,0),
	Angle(-2.375,-0.90625,0),
	Angle(-3.8125,-2.09375,0),
	Angle(-5.125,-3.15625,0),
	Angle(-6.96875,-3.40625,0),
	Angle(-8.84375,-3.6875,0),
	Angle(-10.6875,-3.5625,0),
	Angle(-12.40625,-2.5,0),
	Angle(-10.6875,-1.96875,0),
	Angle(-11.875,-1.1875,0),
	Angle(-10.8125,-0.25,0),
	Angle(-12.53125,0.5,0),
	Angle(-11.46875,1.84375,0),
	Angle(-12.90625,2.375,0),
	Angle(-11.21875,3.9375,0),
	Angle(-12,3.9375,0),
	Angle(-11.21875,2.625,0),
	Angle(-12.65625,0.5,0),
	Angle(-11.46875,-0.25,0),
	Angle(-12.78125,-1.1875,0),
	Angle(-11.71875,-1.96875,0),
	Angle(-12.90625,-2.875,0),
	Angle(-11.59375,-3.9375,0),
	Angle(-12.78125,-4.59375,0),
	Angle(-11.21875,-4.59375,0),
	Angle(-11.875,-2.5,0),
	Angle(-10.9375,-1.3125,0),
	Angle(-11.875,0.90625,0),

}

SWEP.IconOverride = "vgui/css/ak47_icon.png"