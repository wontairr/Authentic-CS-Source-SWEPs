SWEP.Base = "css_weapon_scoped_base"

SWEP.PrintName = "AUG"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "e"

SWEP.HoldType = "smg"

SWEP.CArmsSettings = {
	offsetPos = Vector(0,6,0),
	offsetAng = Angle(0,0,0)
}

SWEP.Spawnable = CSS_WeaponCompatibility:GetBool()

SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_rif_aug.mdl")
SWEP.WorldModel = Model("models/weapons/w_rif_aug.mdl")

SWEP.CSMuzzleX       = true
SWEP.CSMuzzleScale   = 1.3

SWEP.Primary.Sound = Sound("Weapon_AUG.Single")

SWEP.Primary.Distance = 8192

SWEP.Primary.Ammo = "ar2"
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Delay = 0.09
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 32

SWEP.Secondary.Automatic = true

SWEP.MaxPlayerSpeed = 221


SWEP.Accuracy = {
    Spread      = 0.00060,

    Crouch      = 0.00412,
    Stand       = 0.00549,
    Jump        = 0.36936,
    Land        = 0.07387,
    Ladder      = 0.09234,
    Move        = 0.07268,
    
    Maximum     = 1.25
}
SWEP.AccuracyUnScoped = {
    Spread      = 0.00060,

    Crouch      = 0.00412,
    Stand       = 0.00549,
    Jump        = 0.36936,
    Land        = 0.07387,
    Ladder      = 0.09234,
    Move        = 0.07268,
    
    Maximum     = 1.25
}
SWEP.AccuracyScoped = {
    Spread      = 0.00060,

    Crouch      = 0.00288,
    Stand       = 0.00385,
    Jump        = 0.36936,
    Land        = 0.07387,
    Ladder      = 0.09234,
    Move        = 0.07268,
    
    Maximum     = 1.25
}

SWEP.SprayPatternRandomXSwap = true
SWEP.SprayPattern = {

	Angle(0,0,0),
	Angle(-1.3125,-0.375,0),
	Angle(-1.4375,1.03125,0),
	Angle(-3.15625,0.375,0),
	Angle(-4.59375,-0.5,0),
	Angle(-5.53125,-1.4375,0),
	Angle(-6.0625,-2.875,0),
	Angle(-6.96875,-1.96875,0),
	Angle(-6.96875,-0.90625,0),
	Angle(-6.1875,-0.125,0),
	Angle(-6.84375,1.03125,0),
	Angle(-5.40625,0.78125,0),
	Angle(-6.4375,1.84375,0),
	Angle(-6.96875,3.15625,0),
	Angle(-5.40625,2.375,0),
	Angle(-6.0625,3.8125,0),
	Angle(-6.59375,4.875,0),
	Angle(-5.65625,5.125,0),
	Angle(-4.59375,4.34375,0),
	Angle(-5.125,3.6875,0),
	Angle(-4.46875,2.875,0),
	Angle(-5.25,1.6875,0),
	Angle(-4.75,1.3125,0),
	Angle(-5.53125,0.90625,0),
	Angle(-4.875,0.5,0),
	Angle(-6.1875,-0.375,0),
	Angle(-5.125,-0.90625,0),
	Angle(-5.125,-1.84375,0),
	Angle(-5.9375,-2.625,0),
	Angle(-5.125,-3.28125,0),
}
SWEP.SprayPatternNormal = {

	Angle(0,0,0),
	Angle(-1.3125,-0.375,0),
	Angle(-1.4375,1.03125,0),
	Angle(-3.15625,0.375,0),
	Angle(-4.59375,-0.5,0),
	Angle(-5.53125,-1.4375,0),
	Angle(-6.0625,-2.875,0),
	Angle(-6.96875,-1.96875,0),
	Angle(-6.96875,-0.90625,0),
	Angle(-6.1875,-0.125,0),
	Angle(-6.84375,1.03125,0),
	Angle(-5.40625,0.78125,0),
	Angle(-6.4375,1.84375,0),
	Angle(-6.96875,3.15625,0),
	Angle(-5.40625,2.375,0),
	Angle(-6.0625,3.8125,0),
	Angle(-6.59375,4.875,0),
	Angle(-5.65625,5.125,0),
	Angle(-4.59375,4.34375,0),
	Angle(-5.125,3.6875,0),
	Angle(-4.46875,2.875,0),
	Angle(-5.25,1.6875,0),
	Angle(-4.75,1.3125,0),
	Angle(-5.53125,0.90625,0),
	Angle(-4.875,0.5,0),
	Angle(-6.1875,-0.375,0),
	Angle(-5.125,-0.90625,0),
	Angle(-5.125,-1.84375,0),
	Angle(-5.9375,-2.625,0),
	Angle(-5.125,-3.28125,0),
}
SWEP.SprayPatternScoped = {

	Angle(0,0,0),
	Angle(-1.3125,-0.375,0),
	Angle(-1.4375,1.03125,0),
	Angle(-3.15625,0.375,0),
	Angle(-4.59375,-0.5,0),
	Angle(-5.53125,-1.4375,0),
	Angle(-6.0625,-2.875,0),
	Angle(-6.96875,-1.96875,0),
	Angle(-6.96875,-0.90625,0),
	Angle(-6.1875,-0.125,0),
	Angle(-6.84375,1.03125,0),
	Angle(-5.40625,0.78125,0),
	Angle(-6.4375,1.84375,0),
	Angle(-6.96875,3.15625,0),
	Angle(-5.40625,2.375,0),
	Angle(-6.0625,3.8125,0),
	Angle(-6.59375,4.875,0),
	Angle(-5.65625,5.125,0),
	Angle(-4.59375,4.34375,0),
	Angle(-5.125,3.6875,0),
	Angle(-4.46875,2.875,0),
	Angle(-5.25,1.6875,0),
	Angle(-4.75,1.3125,0),
	Angle(-5.53125,0.90625,0),
	Angle(-4.875,0.5,0),
	Angle(-6.1875,-0.375,0),
	Angle(-5.125,-0.90625,0),
	Angle(-5.125,-1.84375,0),
	Angle(-5.9375,-2.625,0),
	Angle(-5.125,-3.28125,0),
}

CSS_ShrinkSprayPattern(SWEP.SprayPatternScoped,0.75)



SWEP.StayScopedAfterShot = true

SWEP.MaxScopingLevel    = 1

SWEP.ScopeLevels 		= { 55 } -- Fov numbers for the scoping level
SWEP.ScopeSensLevels    = { 0.5 } -- Sensitivity multipliers for the scoping level

SWEP.ScopeDrawOverlay   = false

SWEP.ScopeSoundLevel 	= 0

SWEP.ScopingTime        = 0.2 -- How long it takes to scope in

SWEP.HideCrosshair = false

function SWEP:Deploy()
	self.Primary.Delay = 0.09
	self.SprayPattern = self.SprayPatternNormal
	return self.BaseClass.Deploy(self)
end

function SWEP:SecondaryAttack()
	self:Scope()
    if self:GetScopingIn() then
        self.Primary.Delay = 0.135
		self.SprayPattern = self.SprayPatternScoped
    else
		self.SprayPattern = self.SprayPatternNormal
        self.Primary.Delay = 0.09
    end
end
function SWEP:PostResetScoping(ret,previous)
	self.SprayPattern = self.SprayPatternNormal
    self.Primary.Delay = 0.09
end

SWEP.IconOverride = "vgui/css/aug_icon.png"