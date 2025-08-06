SWEP.Base = "css_weapon_base"

SWEP.PrintName = "MACDAD SPRAYMASTER"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "l"

SWEP.Type = CSS_Admin
SWEP.Slot = CSS_SelectSlot(SWEP.Type)

SWEP.HoldType = "smg"

SWEP.Spawnable = CSS_WeaponCompatibility:GetBool()

SWEP.AdminOnly = true

SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_smg_mac10.mdl")
SWEP.WorldModel = Model("models/weapons/w_smg_mac10.mdl")

SWEP.CSMuzzleX       = true
SWEP.CSMuzzleScale   = 1.5

SWEP.Primary.Sound = Sound("Weapon_MAC10.Single")

SWEP.Primary.Distance = 4096

SWEP.Primary.Ammo = CSS_GetAmmo("SMG1","BULLET_PLAYER_45ACP")
SWEP.Primary.ClipSize = 64
SWEP.Primary.DefaultClip = 64
SWEP.Primary.Delay = 0.05
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 31


SWEP.MaxPlayerSpeed = 250


SWEP.Accuracy = {
    Spread      = 0.00100,

    Crouch      = 0.01425,
    Stand       = 0.01900,
    Jump        = 0.13704,
    Land        = 0.02741,
    Ladder      = 0.03426,
    Move        = 0.00620,
    
    Maximum     = 1.65
}
SWEP.SprayPatternRandomXSwap = true
SWEP.SprayPattern = {

	Angle(0,0,0),
	Angle(0.25,-0.78125,0),
	Angle(0.125,-1.5625,0),
	Angle(0.125,-1.625,0),
	Angle(-0.125,-3.9375,0),
	Angle(-0.125,-5.53125,0),
	Angle(-0.375,-8.09375,0),
	Angle(-0.5,-9.09375,0),
	Angle(-0.125,-7.78125,0),
	Angle(0.25,-6.59375,0),
	Angle(0.375,-5.53125,0),
	Angle(-0.25,-1.6875,0),
	Angle(-0.25,-0.71875,0),
	Angle(-0.25,-0.1875,0),
	Angle(-0.0625,2.625,0),
	Angle(0,3.9375,0),
	Angle(-0.375,6.90625,0),
	Angle(-0.5,8.90625,0),
	Angle(-0.5,11.21875,0),
	Angle(-0.5,13.0625,0),
	Angle(-0.25,10.6875,0),
	Angle(0.25,5.53125,0),
	Angle(-0.59375,2.5625,0),
	Angle(-1.3125,-0.1875,0),
	Angle(-0.84375,-2.6875,0),
	Angle(0.125,-7.71875,0),
	Angle(0.5,-11.46875,0),
	Angle(0,-9.34375,0),
	Angle(-0.90625,-5.84375,0),
	Angle(-0.65625,-3.8125,0),
	Angle(0.375,0.4375,0),
	Angle(0.25,3.75,0),
	Angle(-0.125,9.15625,0),
	Angle(0.5,12.84375,0),
	Angle(1.5625,13.59375,0),
	Angle(0,10.15625,0),
	Angle(-0.25,7.625,0),
	Angle(-0.1875,6.71875,0),
	Angle(-0.5,2.875,0),
	Angle(-0.25,0.375,0),
	Angle(0.84375,-5.125,0),
	Angle(1.5625,-12,0),
	Angle(0.65625,-14.25,0),
	Angle(-0.375,-12.40625,0),
	Angle(-1.3125,-6.71875,0),
	Angle(0.90625,2.6875,0),
	Angle(1.4375,4.15625,0),
	Angle(1.4375,5.40625,0),
	Angle(2.375,9.625,0),
	Angle(0.0625,14.625,0),
	Angle(-0.375,17,0),
	Angle(-1.3125,8.03125,0),
	Angle(0.375,5.78125,0),
	Angle(0.375,2.4375,0),
	Angle(0.125,-2.96875,0),
	Angle(0.90625,-6.71875,0),
	Angle(-1.4375,-10.6875,0),
	Angle(-1.96875,-12.25,0),
	Angle(-0.65625,-13.71875,0),
	Angle(0,-14.25,0),
	Angle(2.21875,-6.53125,0),
	Angle(1.03125,-1.1875,0),
	Angle(0.375,2.6875,0),
	Angle(-0.125,6.4375,0),

}

SWEP.IconOverride = "vgui/gfx/vgui/market_sticker_category"