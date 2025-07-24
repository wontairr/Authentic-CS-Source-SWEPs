SWEP.Base = "css_weapon_shotgun_base"

SWEP.Type = CSS_Admin

SWEP.PrintName = "SHOTBLAST 9000"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "B"

SWEP.HoldType = "shotgun"

SWEP.Spawnable = false

SWEP.AdminOnly = true

SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_shot_xm1014.mdl")
SWEP.WorldModel = Model("models/weapons/w_shot_xm1014.mdl")

SWEP.CSMuzzleX       = true
SWEP.CSMuzzleScale   = 4

SWEP.Primary.Sound = Sound("Weapon_XM1014.Single")

SWEP.Primary.Bullets = 7

SWEP.Primary.Distance = 3000

SWEP.Primary.Ammo = "buckshot"
SWEP.Primary.ClipSize = 37
SWEP.Primary.DefaultClip = 37
SWEP.Primary.Delay = 0.12
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 25

SWEP.ShotgunReloadAnimSpeed = CSS_UsingArms() and 2.5 or 1.5


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

SWEP.IconOverride = "vgui/gfx/vgui/market_sticker_category"