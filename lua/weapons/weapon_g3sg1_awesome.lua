SWEP.Base = "css_weapon_scoped_base"
SWEP.Type = CSS_Admin
SWEP.Slot = CSS_SelectSlot(SWEP.Type)
SWEP.PrintName = "RU/LER"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "i"

SWEP.AdminOnly = true 

SWEP.HoldType = "ar2"

SWEP.CArmsSettings = {
	offsetPos = Vector(1,3,1),
	offsetAng = Angle(0,0,0)
}

SWEP.Spawnable = CSS_WeaponCompatibility:GetBool()

SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_snip_g3sg1.mdl")
SWEP.WorldModel = Model("models/weapons/w_snip_g3sg1.mdl")

SWEP.CSMuzzleX       = true
SWEP.CSMuzzleScale   = 2

SWEP.Primary.Sound = Sound("weapons/alyx_gun/alyx_gun_fire4.wav")

SWEP.Primary.Distance = 8192

SWEP.Primary.Ammo = CSS_GetAmmo("ar2","BULLET_PLAYER_762MM")
SWEP.Primary.ClipSize = 42
SWEP.Primary.DefaultClip = 42
SWEP.Primary.Delay = 0.01
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 55
SWEP.Primary.Force = 1000

SWEP.Secondary.Automatic = true

SWEP.MaxPlayerSpeed = 300


SWEP.Accuracy = {
    Spread      = 0.00030,

    Crouch      = 0.01935,
    Stand       = 0.02580,
    Jump        = 0.46557,
    Land        = 0.04656,
    Ladder      = 0.11639,
    Move        = 0.11091,
    
    Maximum     = 1.25
}
SWEP.AccuracyUnScoped = {
    Spread      = 0.00030,

    Crouch      = 0.01935,
    Stand       = 0.02580,
    Jump        = 0.46557,
    Land        = 0.04656,
    Ladder      = 0.11639,
    Move        = 0.11091,
    
    Maximum     = 1.25
}
SWEP.AccuracyScoped = {
    Spread      = 0.00030,

    Crouch      = 0.00150,
    Stand       = 0.00200,
    Jump        = 0.46557,
    Land        = 0.04656,
    Ladder      = 0.11639,
    Move        = 0.11091,
    
    Maximum     = 1.25
}

SWEP.SprayPattern = {

	Angle(0,0,0),
	Angle(-1.5625,0,0),
	Angle(-3.28125,0.125,0),
	Angle(-6.3125,0.25,0),
	Angle(-8.4375,0.125,0),
	Angle(-11.34375,0.375,0),
	Angle(-13.59375,0.25,0),
	Angle(-15.28125,0.125,0),
	Angle(-17.28125,0.25,0),
	Angle(-19.375,0.25,0),
	Angle(-21.75,0.25,0),
	Angle(-23.75,0.375,0),
	Angle(-26.25,0.78125,0),
	Angle(-29.40625,0.78125,0),
	Angle(-32.0625,0.65625,0),
	Angle(-35.21875,0.5,0),
	Angle(-38.25,0.375,0),
	Angle(-41.96875,0.125,0),
	Angle(-43.6875,0,0),
	Angle(-46.84375,-0.5,0),
	Angle(-49.34375,-0.5,0),
	Angle(-52.78125,-0.78125,0),
	Angle(-55.9375,-0.25,0),
	Angle(-59.375,0.125,0),
	Angle(-62.28125,0.125,0),
	Angle(-65.71875,0.125,0),
	Angle(-67.96875,0,0),
	Angle(-70.75,0,0),
	Angle(-73.375,0,0),
	Angle(-75.625,0,0),
	Angle(-77.59375,0,0),
	Angle(-79.84375,-0.125,0),
	Angle(-81.6875,-0.125,0),
	Angle(-83.9375,0,0),
	Angle(-85.53125,0,0),
	Angle(-86.96875,0,0),
	Angle(-88.28125,-0.125,0),
	Angle(-89,-0.125,0),
	Angle(-88.1875,-1.03125,0),
	Angle(-86.59375,-1.3125,0),
	Angle(-85.8125,-1.3125,0),

}

SWEP.StayScopedAfterShot = true

SWEP.ScopeLevels 		= { 40, 15 } -- Fov numbers for the scoping level
SWEP.ScopeSensLevels    = { 0.4, 0.10 } -- Sensitivity multipliers for the scoping level


SWEP.IconOverride = "vgui/gfx/vgui/market_sticker_category"