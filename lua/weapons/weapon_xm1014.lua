SWEP.Base = "css_weapon_shotgun_base"

SWEP.PrintName = "LEONE YG1265 AUTO SHOTGUN"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "B"

SWEP.HoldType = "shotgun"

SWEP.CArmsSettings = {
	offsetPos = Vector(0,5.5,0),
	offsetAng = Angle(0,0,0)
}

SWEP.Spawnable = CSS_WeaponCompatibility:GetBool()

SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_shot_xm1014.mdl")
SWEP.WorldModel = Model("models/weapons/w_shot_xm1014.mdl")

SWEP.CSMuzzleX       = false 
SWEP.CSMuzzleScale   = 1.3

SWEP.Primary.Sound = Sound("Weapon_XM1014.Single")

SWEP.Primary.Bullets = 6

SWEP.Primary.Distance = 3000

SWEP.Primary.Ammo = "buckshot"
SWEP.Primary.ClipSize = 7
SWEP.Primary.DefaultClip = 7
SWEP.Primary.Delay = 0.25
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 22
SWEP.Primary.Force = 1.25

SWEP.ShotgunReloadAnimSpeed = CSS_UsingArms() and 1.16 or 0.75

SWEP.MaxPlayerSpeed = 240


SWEP.Accuracy = {
    Spread      = 0.04000,

    Crouch      = 0.00750,
    Stand       = 0.01000,
    Jump        = 0.41176,
    Land        = 0.08235,
    Ladder      = 0.07721,
    Move        = 0.03544,
    
    Maximum     = 1.25
}
SWEP.SprayPatternRandomXSwap = false
SWEP.SprayPattern = {

	Angle(0,0,0),
	Angle(-2.625,-0.25,0),
	Angle(-5.53125,-0.375,0),
	Angle(-8.3125,-0.375,0),
	Angle(-10.40625,-0.65625,0),
	Angle(-11.71875,-0.5,0),
	Angle(-13.0625,-0.5,0),

}

SWEP.IconOverride = "vgui/css/xm1014_icon.png"