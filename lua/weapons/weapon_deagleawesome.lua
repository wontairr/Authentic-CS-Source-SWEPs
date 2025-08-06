SWEP.Base = "css_weapon_base"

SWEP.PrintName = "EAGLE MAX"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "f"

SWEP.HoldType = "revolver"

SWEP.Type = CSS_Admin
SWEP.Slot = CSS_SelectSlot(CSS_Admin)

SWEP.Spawnable = CSS_WeaponCompatibility:GetBool()
SWEP.AdminOnly = true


SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_pist_deagle.mdl")
SWEP.WorldModel = Model("models/weapons/w_pist_deagle.mdl")

SWEP.CSMuzzleX       = false
SWEP.CSMuzzleScale   = 1.2

SWEP.Primary.Sound = Sound("weapons/scout/scout_fire-1.wav")

SWEP.Primary.Distance = 4096
SWEP.Primary.Ammo = CSS_GetAmmo("ar2","BULLET_PLAYER_50AE")
SWEP.Primary.ClipSize = 64
SWEP.Primary.DefaultClip = 64
SWEP.Primary.Delay = 0.05
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 54


SWEP.MaxPlayerSpeed = 250


SWEP.Accuracy = {
    Spread      = 0.00900,

    Crouch      = 0.00975,
    Stand       = 0.01300,
    Jump        = 0.34500,
    Land        = 0.06900,
    Ladder      = 0.02300,
    Move        = 0.02070,
    
    Maximum     = 1.25
}
SWEP.SprayPatternRandomXSwap = false

SWEP.SprayPattern = {

	Angle(0,0,0),
	Angle(-0.375,-0.375,0),
	Angle(-1.03125,-0.78125,0),
	Angle(-1.84375,-0.78125,0),
	Angle(-2.375,-0.3125,0),
	Angle(-2.5,0.5,0),
	Angle(-2.21875,1.1875,0),
	Angle(-1.6875,1.3125,0),
	Angle(-1.1875,1.1875,0),
	Angle(-0.90625,0.25,0),
	Angle(-0.65625,-0.5,0),
	Angle(-0.65625,-1.1875,0),
	Angle(-1.03125,-1.6875,0),
	Angle(-1.84375,-2.375,0),
	Angle(-2.625,-2.625,0),
	Angle(-3.9375,-2.625,0),
	Angle(-5.125,-1.6875,0),
	Angle(-5.78125,-1.3125,0),
	Angle(-6.0625,-0.25,0),
	Angle(-6.1875,0.5,0),
	Angle(-5.9375,1.6875,0),
	Angle(-5.46875,2.5,0),
	Angle(-4.46875,3.40625,0),
	Angle(-3.875,3.5625,0),
	Angle(-2.375,3.6875,0),
	Angle(-1.6875,3.5625,0),
	Angle(-0.65625,3.03125,0),
	Angle(-0.5,2.96875,0),
	Angle(0.125,2.21875,0),
	Angle(0.375,1.6875,0),
	Angle(0.78125,0.90625,0),
	Angle(0.90625,0.375,0),
	Angle(1.4375,-1.03125,0),
	Angle(1.3125,-1.5625,0),
	Angle(0.65625,-2.75,0),
	Angle(-0.25,-3.5625,0),
	Angle(-1.4375,-4.21875,0),
	Angle(-2.4375,-4.46875,0),
	Angle(-3.9375,-4.46875,0),
	Angle(-4.9375,-4.21875,0),
	Angle(-6.59375,-3.9375,0),
	Angle(-7.5,-3.15625,0),
	Angle(-8.21875,-2.09375,0),
	Angle(-8.84375,-0.125,0),
	Angle(-8.84375,1.3125,0),
	Angle(-8.4375,3.34375,0),
	Angle(-7.375,4.875,0),
	Angle(-5.46875,5.9375,0),
	Angle(-3.40625,5.53125,0),
	Angle(-0.59375,6.3125,0),
	Angle(0.375,6.1875,0),
	Angle(1.3125,4.875,0),
	Angle(2.625,3.5625,0),
	Angle(2.75,1.3125,0),
	Angle(2.5,-0.5,0),
	Angle(2.375,-2.96875,0),
	Angle(1.5625,-3.9375,0),
	Angle(0.375,-4.875,0),
	Angle(-1.84375,-5.25,0),
	Angle(-4.21875,-5.25,0),
	Angle(-6.125,-4.875,0),
	Angle(-7.5,-3.75,0),
	Angle(-7.90625,-2.6875,0),
	Angle(-8.6875,-0.375,0),

}

SWEP.IconOverride = "vgui/gfx/vgui/market_sticker_category"
