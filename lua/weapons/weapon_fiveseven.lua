SWEP.Base = "css_weapon_pistol_base"

SWEP.PrintName = "ES FIVE-SEVEN"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "u"

SWEP.HoldType = "revolver"


SWEP.CArmsSettings = {
	offsetPos = Vector(0.3,5,1.6),
	offsetAng = Angle(0,0,0)
}

SWEP.Spawnable = CSS_WeaponCompatibility:GetBool()


SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_pist_fiveseven.mdl")
SWEP.WorldModel = Model("models/weapons/w_pist_fiveseven.mdl")

SWEP.CSMuzzleX       = false
SWEP.CSMuzzleScale   = 1

SWEP.Primary.Sound = Sound("Weapon_FiveSeven.Single")

SWEP.Primary.Distance = 4096
SWEP.Primary.Ammo = CSS_GetAmmo("Pistol","BULLET_PLAYER_57MM")
SWEP.Primary.ClipSize = 20
SWEP.Primary.DefaultClip = 20
SWEP.Primary.Delay = 0.15
SWEP.Primary.Damage = 25


SWEP.MaxPlayerSpeed = 250


SWEP.Accuracy = {
    Spread      = 0.00200,

    Crouch      = 0.00750,
    Stand       = 0.01000,
    Jump        = 0.25636,
    Land        = 0.05127,
    Ladder      = 0.01709,
    Move        = 0.01133,
    
    Maximum     = 1.25
}
SWEP.SprayPatternRandomXSwap = false
SWEP.SprayPattern = {

	Angle(0,0,0),
	Angle(-0.78125,-0.25,0),
	Angle(-1.1875,0.25,0),
	Angle(-1.6875,-0.375,0),
	Angle(-2.375,0.5,0),
	Angle(-2.875,0,0),
	Angle(-3.5625,0.78125,0),
	Angle(-3.6875,0,0),
	Angle(-4.21875,-0.5,0),
	Angle(-4.59375,0.5,0),
	Angle(-5.53125,0,0),
	Angle(-5.78125,-0.5,0),
	Angle(-5.78125,0.5,0),
	Angle(-6.71875,0.125,0),
	Angle(-6.96875,-0.375,0),
	Angle(-7.5,0.25,0),
	Angle(-8.03125,0,0),
	Angle(-8.3125,0.125,0),
	Angle(-8.96875,0.375,0),
	Angle(-9.34375,-0.25,0),

}


SWEP.IconOverride = "vgui/css/fiveseven_icon.png"