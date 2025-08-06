SWEP.Base = "css_weapon_base"

SWEP.Type = CSS_Admin
SWEP.Slot = CSS_SelectSlot(SWEP.Type)
SWEP.PrintName = "GLOCKINATOR"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "d"

SWEP.HoldType = "smg"

SWEP.Spawnable = CSS_WeaponCompatibility:GetBool()
SWEP.AdminOnly = true

SWEP.UseHands = false 
SWEP.ViewModel  = Model("models/weapons/v_smg_glockinator.mdl")
SWEP.WorldModel = Model("models/weapons/w_pist_glock18.mdl")

SWEP.CSMuzzleX       = false
SWEP.CSMuzzleScale   = 1.2
SWEP.Primary.Sound = Sound("Weapon_Glock.Single")

SWEP.Primary.Distance = 4096

SWEP.Primary.Ammo = CSS_GetAmmo("SMG1","BULLET_PLAYER_9MM")
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Delay = 0.07
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 26


SWEP.MaxPlayerSpeed = 250


SWEP.Accuracy = {
    Spread      = 0.00100,

    Crouch      = 0.01500,
    Stand       = 0.02000,
    Jump        = 0.11180,
    Land        = 0.02236,
    Ladder      = 0.02795,
    Move        = 0.00389,
    
    Maximum     = 1.65
}
SWEP.SprayPatternRandomXSwap = true
SWEP.SprayPattern = {

	Angle(0,0,0),
	Angle(-0.5,0.375,0),
	Angle(-1.3125,1.1875,0),
	Angle(-4.59375,1.03125,0),
	Angle(-5.40625,-0.125,0),
	Angle(-6.3125,-0.90625,0),
	Angle(-5.40625,-1.4375,0),
	Angle(-5.40625,-2.875,0),
	Angle(-6.71875,-3.03125,0),
	Angle(-6.71875,-4.0625,0),
	Angle(-5.9375,-4.0625,0),
	Angle(-6.4375,-2.375,0),
	Angle(-7.125,-1.84375,0),
	Angle(-6.71875,-0.375,0),
	Angle(-6.3125,-0.125,0),
	Angle(-6.71875,0.78125,0),
	Angle(-7.25,1.1875,0),
	Angle(-6.3125,1.1875,0),
	Angle(-6.1875,2.09375,0),
	Angle(-6.96875,2.09375,0),
	Angle(-6.96875,2.75,0),
	Angle(-5.9375,3.03125,0),
	Angle(-5.40625,3.03125,0),
	Angle(-5.78125,4.34375,0),
	Angle(-5,3.15625,0),
	Angle(-5.78125,2.21875,0),
	Angle(-6.0625,1.3125,0),
	Angle(-5.40625,-0.375,0),
	Angle(-6.0625,-1.03125,0),
	Angle(-6.0625,-1.5625,0),

}

SWEP.IconOverride = "vgui/gfx/vgui/market_sticker_category"