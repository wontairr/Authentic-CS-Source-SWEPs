SWEP.Base = "css_weapon_pistol_base"

SWEP.PrintName = "K&M .45 TACTICAL"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "a"

SWEP.HoldType = "revolver"

SWEP.Slot = 1

SWEP.CArmsSettings = {
	offsetPos = Vector(0.3,5,1.6),
	offsetAng = Angle(0,0,0)
}

SWEP.Spawnable = CSS_WeaponCompatibility:GetBool()

SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_pist_usp.mdl")
SWEP.WorldModel = Model("models/weapons/w_pist_usp.mdl")
SWEP.WorldModelUnsilenced = Model("models/weapons/w_pist_usp.mdl")
SWEP.WorldModelSilenced   = Model("models/weapons/w_pist_usp_silencer.mdl")

SWEP.CSMuzzleX       = false
SWEP.CSMuzzleScale   = 1.6

SWEP.Primary.Sound = Sound("Weapon_USP.Single")
SWEP.Primary.SoundSilenced = Sound("Weapon_USP.SilencedShot")

SWEP.Primary.Distance = 4096

SWEP.Primary.Ammo = "pistol"
SWEP.Primary.ClipSize = 12
SWEP.Primary.DefaultClip = 12
SWEP.Primary.Delay = 0.15
SWEP.Primary.Pistol = true
SWEP.Primary.Damage = 34

SWEP.MaxPlayerSpeed = 250

SWEP.SprayRecoverTime = 0.1

SWEP.Silenced = false
SWEP.SilencingTime = 2.65

SWEP.Accuracy = {
    Spread      = 0.00400,

    Crouch      = 0.00600,
    Stand       = 0.00800,
    Jump        = 0.28725,
    Land        = 0.05745,
    Ladder      = 0.01915,
    Move        = 0.01724,
    
    Maximum     = 1.25
}

SWEP.AccuracyUnSilenced = {
    Spread      = 0.00400,

    Crouch      = 0.00600,
    Stand       = 0.00800,
    Jump        = 0.28725,
    Land        = 0.05745,
    Ladder      = 0.01915,
    Move        = 0.01724,
    
    Maximum     = 1.25
}
SWEP.AccuracySilenced = {
    Spread      = 0.00300,

    Crouch      = 0.00600,
    Stand       = 0.00800,
    Jump        = 0.29625,
    Land        = 0.05925,
    Ladder      = 0.01975,
    Move        = 0.01778,
    
    Maximum     = 1.25
}



SWEP.SprayPattern = {

	Angle(0,0,0),
	Angle(-1.1875,0.5,0),
	Angle(-1.4375,-0.375,0),
	Angle(-2.625,0.375,0),
	Angle(-3.9375,-0.5,0),
	Angle(-4.75,0.375,0),
	Angle(-5.9375,-0.90625,0),
	Angle(-6.59375,0.0625,0),
	Angle(-7.25,-0.5,0),
	Angle(-7.78125,0.125,0),
	Angle(-8.4375,-0.375,0),
	Angle(-8.6875,0.375,0),

}

SWEP.IconOverride = "vgui/css/usp45_icon.png"

