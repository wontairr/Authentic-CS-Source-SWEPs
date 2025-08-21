SWEP.Base = "css_weapon_scoped_base"

SWEP.PrintName = "KRIEG 552"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "A"

SWEP.HoldType = "ar2"

SWEP.CArmsSettings = {
	offsetPos = Vector(1,4,1),
	offsetAng = Angle(0,0,0)
}

SWEP.Spawnable = CSS_WeaponCompatibility:GetBool()

SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_rif_sg552.mdl")
SWEP.WorldModel = Model("models/weapons/w_rif_sg552.mdl")

SWEP.CSMuzzleX       = true
SWEP.CSMuzzleScale   = 1.3

SWEP.Primary.Sound = Sound("Weapon_SG552.Single")

SWEP.Primary.Distance = 8192

SWEP.Primary.Ammo = CSS_GetAmmo("ar2","BULLET_PLAYER_556MM")
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Delay = 0.09
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 33

SWEP.Secondary.Automatic = true

SWEP.MaxPlayerSpeed = 235


SWEP.Accuracy = {
    Spread      = 0.00060,

    Crouch      = 0.00405,
    Stand       = 0.00540,
    Jump        = 0.33464,
    Land        = 0.06693,
    Ladder      = 0.08366,
    Move        = 0.06132,
    
    Maximum     = 1.25
}
SWEP.AccuracyUnScoped = {
    Spread      = 0.00060,

    Crouch      = 0.00405,
    Stand       = 0.00540,
    Jump        = 0.33464,
    Land        = 0.06693,
    Ladder      = 0.08366,
    Move        = 0.06132,
    
    Maximum     = 1.25
}
SWEP.AccuracyScoped = {
    Spread      = 0.00060,

    Crouch      = 0.00284,
    Stand       = 0.00378,
    Jump        = 0.33464,
    Land        = 0.06693,
    Ladder      = 0.08366,
    Move        = 0.06132,
    
    Maximum     = 1.25
}

SWEP.SprayPatternRandomXSwap = true
SWEP.SprayPatternNormal = {

	Angle(0,0,0),
	Angle(-1.1875,-0.25,0),
	Angle(-2.09375,-0.5,0),
	Angle(-4.21875,-1.96875,0),
	Angle(-6.3125,-2.875,0),
	Angle(-7.125,-3.28125,0),
	Angle(-7.90625,-3.9375,0),
	Angle(-9.21875,-3.03125,0),
	Angle(-7.90625,-2.625,0),
	Angle(-9.15625,-2.09375,0),
	Angle(-7.78125,-1.3125,0),
	Angle(-9.09375,-0.78125,0),
	Angle(-8.15625,0,0),
	Angle(-8.84375,0.90625,0),
	Angle(-7.78125,1.5625,0),
	Angle(-8.96875,2.375,0),
	Angle(-7.90625,2.875,0),
	Angle(-8.96875,3.28125,0),
	Angle(-7.90625,4.0625,0),
	Angle(-9.09375,4.46875,0),
	Angle(-7.78125,3.15625,0),
	Angle(-8.4375,1.84375,0),
	Angle(-7.375,1.3125,0),
	Angle(-8.6875,0.125,0),
	Angle(-7.78125,-0.5,0),
	Angle(-8.5625,-1.03125,0),
	Angle(-7.90625,-1.4375,0),
	Angle(-8.6875,-2.21875,0),
	Angle(-7.90625,-3.03125,0),
	Angle(-8.84375,-3.6875,0),

}
SWEP.SprayPattern = SWEP.SprayPatternNormal
SWEP.SprayPatternScoped = {

	Angle(0,0,0),
	Angle(-1.1875,-0.25,0),
	Angle(-2.09375,-0.5,0),
	Angle(-4.21875,-1.96875,0),
	Angle(-6.3125,-2.875,0),
	Angle(-7.125,-3.28125,0),
	Angle(-7.90625,-3.9375,0),
	Angle(-9.21875,-3.03125,0),
	Angle(-7.90625,-2.625,0),
	Angle(-9.15625,-2.09375,0),
	Angle(-7.78125,-1.3125,0),
	Angle(-9.09375,-0.78125,0),
	Angle(-8.15625,0,0),
	Angle(-8.84375,0.90625,0),
	Angle(-7.78125,1.5625,0),
	Angle(-8.96875,2.375,0),
	Angle(-7.90625,2.875,0),
	Angle(-8.96875,3.28125,0),
	Angle(-7.90625,4.0625,0),
	Angle(-9.09375,4.46875,0),
	Angle(-7.78125,3.15625,0),
	Angle(-8.4375,1.84375,0),
	Angle(-7.375,1.3125,0),
	Angle(-8.6875,0.125,0),
	Angle(-7.78125,-0.5,0),
	Angle(-8.5625,-1.03125,0),
	Angle(-7.90625,-1.4375,0),
	Angle(-8.6875,-2.21875,0),
	Angle(-7.90625,-3.03125,0),
	Angle(-8.84375,-3.6875,0),

}
CSS_ShrinkSprayPattern(SWEP.SprayPatternScoped,0.65)

SWEP.StayScopedAfterShot = true

SWEP.MaxScopingLevel    = 1

SWEP.ScopeLevels 		= { 65 } -- Fov numbers for the scoping level
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
        self.Primary.Delay = 0.13
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


SWEP.IconOverride = "vgui/css/sg552_icon.png"
