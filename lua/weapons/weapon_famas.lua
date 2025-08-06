SWEP.Base = "css_weapon_base"

SWEP.PrintName = "CLARION 5.56"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "t"

SWEP.HoldType = "ar2"

SWEP.Spawnable = CSS_WeaponCompatibility:GetBool()

SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_rif_famas.mdl")
SWEP.WorldModel = Model("models/weapons/w_rif_famas.mdl")

SWEP.CArmsSettings = {
	offsetPos = Vector(0,4,0.5),
	offsetAng = Angle(0,0,0)
}

SWEP.CSMuzzleX       = true
SWEP.CSMuzzleScale   = 1.3

SWEP.Primary.Sound = Sound("Weapon_FAMAS.Single")

SWEP.Recoil = true
SWEP.Primary.Distance = 8192
SWEP.Primary.Ammo = CSS_GetAmmo("ar2","BULLET_PLAYER_556MM")
SWEP.Primary.ClipSize = 25
SWEP.Primary.DefaultClip = 25
SWEP.Primary.Delay = 0.09
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 30
SWEP.LastBulletThink = true

SWEP.MaxPlayerSpeed = 220

SWEP.ViewModelFlip = false -- required or else due to networking the gun will be seen flipped for a sec
SWEP.ViewModelRightHanded = true

SWEP.Accuracy = {
    Spread      = 0.00060,

    Crouch      = 0.00412,
    Stand       = 0.00549,
    Jump        = 0.36527,
    Land        = 0.07305,
    Ladder      = 0.09132,
    Move        = 0.06980,
    
    Maximum     = 1.25
}
SWEP.AccuracyNormal = {
    Spread      = 0.00060,

    Crouch      = 0.00412,
    Stand       = 0.00549,
    Jump        = 0.36527,
    Land        = 0.07305,
    Ladder      = 0.09132,
    Move        = 0.06980,
    
    Maximum     = 1.25
}
SWEP.AccuracyBurst = {
    Spread      = 0.00060,

    Crouch      = 0.00412,
    Stand       = 0.00549,
    Jump        = 0.36527,
    Land        = 0.07305,
    Ladder      = 0.09132,
    Move        = 0.06980,
    
    Maximum     = 1.25
}

SWEP.SprayPatternRandomXSwap = true
SWEP.SprayPattern = {}
SWEP.SprayPatternNormal = {

	Angle(0,0,0),
	Angle(-0.5,0.125,0),
	Angle(-1.4375,0.5,0),
	Angle(-3.03125,1.4375,0),
	Angle(-4.875,1.3125,0),
	Angle(-5.78125,1.4375,0),
	Angle(-6.59375,2.5,0),
	Angle(-5.53125,2.875,0),
	Angle(-6.71875,1.4375,0),
	Angle(-7.375,0.5,0),
	Angle(-6.3125,0.375,0),
	Angle(-5.40625,-0.125,0),
	Angle(-5.9375,-0.65625,0),
	Angle(-6.59375,-0.78125,0),
	Angle(-6.96875,-1.03125,0),
	Angle(-6.1875,-1.84375,0),
	Angle(-5.40625,-1.4375,0),
	Angle(-5.78125,-2.21875,0),
	Angle(-6.1875,-2.875,0),
	Angle(-6.4375,-3.15625,0),
	Angle(-6.71875,-2.375,0),
	Angle(-6.96875,-1.5625,0),
	Angle(-6.71875,-1.3125,0),
	Angle(-6.0625,-1.1875,0),
	Angle(-6.1875,0.25,0),

}
SWEP.SprayPatternBurst = {

	Angle(0,0,0),
	Angle(-0.15625,-0.01,0),
	Angle(-1.03125,0.375,0),
	Angle(-2.21875,-0.5,0),
	Angle(-3.05625,-0.78125,0),
	Angle(-2.2125,0.2,0),
	Angle(-4.41875,-0.3,0),
	Angle(-6.05625,-0.98125,0),
	Angle(-2.0125,-0.2,0),
	Angle(-4.61875,-0.7,0),
	Angle(-5.85625,-0.58125,0),
	Angle(-2.2125,0.1,0),
	Angle(-4.41875,-0.4,0),
	Angle(-6.05625,-0.98125,0),
	Angle(-2.0125,-0.1,0),
	Angle(-4.61875,-0.6,0),
	Angle(-5.85625,-0.78125,0),
	Angle(-2.2125,0.2,0),
	Angle(-4.41875,-0.5,0),
	Angle(-6.05625,-0.98125,0),
	Angle(-2.0125,-0.2,0),
	Angle(-4.61875,-0.3,0),
	Angle(-5.85625,-0.78125,0),
	Angle(-2.2125,0.1,0),
	Angle(-4.41875,-0.4,0),
	Angle(-6.05625,-0.98125,0),
	Angle(-2.0125,-0.1,0),
	Angle(-4.61875,-0.6,0),
	Angle(-5.85625,-0.78125,0),


}

SWEP.BurstFire = true
SWEP.BurstDelay = 0.5
SWEP.BurstShotDelay = SWEP.Primary.Delay / 2

SWEP.BurstOffMsg = "Switched to automatic"

SWEP.IconOverride = "vgui/css/famas_icon.png"


function SWEP:AfterPrimaryAttack()
    if not self:CanPrimaryAttack() then return end
    
    if self:GetBurst() then
        self.SprayPattern = self.SprayPatternBurst
    else
        self.SprayPattern = self.SprayPatternNormal
	end
end


function SWEP:Think()
    CSSBaseClass.Think(self)
    self:BurstThink()
end