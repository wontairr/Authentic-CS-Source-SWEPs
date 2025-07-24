SWEP.Base = "css_weapon_pistol_base"

SWEP.PrintName = "228 COMPACT"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "a"

SWEP.HoldType = "revolver"

SWEP.Slot = 1

SWEP.CArmsSettings = {
	offsetPos = Vector(0.3,5,1.6),
	offsetAng = Angle(0,0,0)
}

SWEP.Spawnable = false


SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_pist_p228.mdl")
SWEP.WorldModel = Model("models/weapons/w_pist_p228.mdl")

SWEP.CSMuzzleX       = false
SWEP.CSMuzzleScale   = 1

SWEP.Primary.Sound = Sound("Weapon_P228.Single")

SWEP.Primary.Distance = 4096
SWEP.Primary.Ammo = "Pistol"
SWEP.Primary.ClipSize = 13
SWEP.Primary.DefaultClip = 13
SWEP.Primary.Delay = 0.15
SWEP.Primary.Damage = 40


SWEP.MaxPlayerSpeed = 250


SWEP.Accuracy = {
    Spread      = 0.00200,

    Crouch      = 0.00975,
    Stand       = 0.01300,
    Jump        = 0.28500,
    Land        = 0.05700,
    Ladder      = 0.01900,
    Move        = 0.01400,
    
    Maximum     = 1.25
}
SWEP.SprayPatternRandomXSwap = false
SWEP.SprayPattern = {

	Angle(0,0,0),
	Angle(-1.1875,-0.5,0),
	Angle(-0.25,-0.65625,0),
	Angle(-1.5625,1.1875,0),
	Angle(-3.5625,-1.4375,0),
	Angle(-3.6875,0.65625,0),
	Angle(-4.59375,0.125,0),
	Angle(-3.28125,-0.78125,0),
	Angle(-4.21875,0,0),
	Angle(-5.65625,0.78125,0),
	Angle(-5.9375,0,0),
	Angle(-6.3125,-0.65625,0),
	Angle(-5.65625,-1.1875,0),

}

SWEP.IconOverride = "vgui/css/p228_icon.png"