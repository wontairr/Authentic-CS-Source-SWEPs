SWEP.Base = "css_weapon_base"

SWEP.PrintName = "MAVERICK M4A1 CARBINE"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "w"

SWEP.Type = CSS_Rifle

SWEP.HoldType = "ar2"

SWEP.CArmsSettings = {
	offsetPos = Vector(0,2,1),
	offsetAng = Angle(0,0,0)
}


SWEP.Spawnable = false

SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_rif_m4a1.mdl")
SWEP.WorldModel = Model("models/weapons/w_rif_m4a1.mdl")
SWEP.WorldModelUnsilenced = Model("models/weapons/w_rif_m4a1.mdl")
SWEP.WorldModelSilenced   = Model("models/weapons/w_rif_m4a1_silencer.mdl")

SWEP.CSMuzzleX       = true
SWEP.CSMuzzleScale   = 1.6

SWEP.Primary.Sound = Sound("Weapon_M4A1.Single")
SWEP.Primary.SoundSilenced = Sound("Weapon_M4A1.Silenced")

SWEP.Primary.Distance = 8192

SWEP.Primary.Ammo = "ar2"
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Delay = 0.089 -- an iota less than 0.09 because its weird
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 33

SWEP.MaxPlayerSpeed = 230

SWEP.SprayRecoverTime = 0.1

SWEP.Silenced = false
SWEP.SilencingTime = 1.8

SWEP.Accuracy = {
    Spread      = 0.00060,

    Crouch      = 0.00525,
    Stand       = 0.00700,
    Jump        = 0.34151,
    Land        = 0.06830,
    Ladder      = 0.08538,
    Move        = 0.06872,
    
    Maximum     = 1.25
}

SWEP.AccuracyUnSilenced = {
    Spread      = 0.00060,

    Crouch      = 0.00525,
    Stand       = 0.00700,
    Jump        = 0.34151,
    Land        = 0.06830,
    Ladder      = 0.08538,
    Move        = 0.06872,
    
    Maximum     = 1.25
}
SWEP.AccuracySilenced = {
    Spread      = 0.00054,

    Crouch      = 0.00525,
    Stand       = 0.00700,
    Jump        = 0.34846,
    Land        = 0.06969,
    Ladder      = 0.08712,
    Move        = 0.07039,
    
    Maximum     = 1.25
}



SWEP.SprayPattern = {

	Angle(0,0,0),
	Angle(-0.65625,-0.375,0),
	Angle(-0.90625,0.35625,0),
	Angle(-1.96875,-0.2,0),
	Angle(-2.375,0.125,0),
	Angle(-3.8125,-0.25,0),
	Angle(-4.46875,0.35625,0),
	Angle(-5.65625,0.53125,0),
	Angle(-6.4375,2.21875,0),
	Angle(-5.65625,2.875,0),
	Angle(-6.3125,3.8125,0),
	Angle(-5.78125,4.46875,0),
	Angle(-6.1875,5.25,0),
	Angle(-5.25,4.0625,0),
	Angle(-6.0625,3.28125,0),
	Angle(-5.9375,2.21875,0),
	Angle(-6.59375,1.3125,0),
	Angle(-6.0625,0.5,0),
	Angle(-6.71875,-0.125,0),
	Angle(-5.78125,-0.375,0),
	Angle(-6.4375,-1.4375,0),
	Angle(-5.40625,-1.6875,0),
	Angle(-6.0625,-2.625,0),
	Angle(-5.125,-2.5,0),
	Angle(-5.9375,-1.1875,0),
	Angle(-5.25,-0.125,0),
	Angle(-5.78125,1.03125,0),
	Angle(-5.1875,1.6875,0),
	Angle(-5.65625,3.03125,0),
	Angle(-5.65625,3.03125,0),
	Angle(-5.65625,3.03125,0),
}


SWEP.IconOverride = "vgui/css/m4a1_icon.png"

