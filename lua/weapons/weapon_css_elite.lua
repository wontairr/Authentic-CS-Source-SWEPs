SWEP.Base = "css_weapon_pistol_base"

SWEP.PrintName = ".40 DUAL ELITES"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "s"

SWEP.HoldType = "duel"


SWEP.CArmsSettings = {
	offsetPos = Vector(0,6.2,1),
	offsetAng = Angle(0,0,0)
}

SWEP.Spawnable = CSS_WeaponCompatibility:GetBool()



SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_pist_elite.mdl")
SWEP.WorldModel = Model("models/weapons/w_pist_elite.mdl")

SWEP.CSMuzzleX       = false
SWEP.CSMuzzleScale   = 1.2

SWEP.Primary.Sound = Sound("Weapon_Elite.Single")

SWEP.Primary.Distance = 4096
SWEP.Primary.Ammo = "Pistol"
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Delay = 0.12
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 45


SWEP.MaxPlayerSpeed = 250


SWEP.Accuracy = {
    Spread      = 0.00200,

    Crouch      = 0.00750,
    Stand       = 0.01000,
    Jump        = 0.29625,
    Land        = 0.05925,
    Ladder      = 0.01975,
    Move        = 0.01505,
    
    Maximum     = 1.25
}
SWEP.SprayPatternRandomXSwap = false
SWEP.SprayPattern = {

	Angle(0,0,0),
	Angle(-1.3125,-0.125,0),
	Angle(-2.75,-0.25,0),
	Angle(-4.46875,1.1875,0),
	Angle(-6.0625,0,0),
	Angle(-7.625,-1.1875,0),
	Angle(-8.15625,-0.125,0),
	Angle(-8.4375,0.5,0),
	Angle(-9.625,1.03125,0),
	Angle(-10.9375,1.03125,0),
	Angle(-11.71875,0.25,0),
	Angle(-12.53125,-1.4375,0),
	Angle(-13.3125,-0.375,0),
	Angle(-14.25,-0.125,0),
	Angle(-14.90625,0.90625,0),
	Angle(-15.4375,0.25,0),
	Angle(-15.4375,-0.5,0),
	Angle(-16.09375,-0.65625,0),
	Angle(-16.34375,0.5,0),
	Angle(-16.34375,1.4375,0),
	Angle(-17,0.90625,0),
	Angle(-17.15625,-0.125,0),
	Angle(-17.15625,-0.65625,0),
	Angle(-17.9375,-0.65625,0),
	Angle(-17.9375,0.78125,0),
	Angle(-18.46875,1.03125,0),
	Angle(-18.59375,0.375,0),
	Angle(-18.875,-0.25,0),
	Angle(-19.375,-0.3125,0),
	Angle(-19.53125,0.78125,0),

}


SWEP.IconOverride = "vgui/css/elites_icon.png"

SWEP.Alternate = false





if not CSSServerConvars.weapons_pistols_automatic:GetBool() then
	SWEP.Primary.Automatic = false
end

function SWEP:PrimaryAttack()
	if not self:CanPrimaryAttack() then return false end
	if IsFirstTimePredicted() then		
		self.Alternate = !self.Alternate
		self.MuzzleAttachment = (self.Alternate and 1 or 2)
		self:SharedSetVar("MuzzleAttachment",(self.Alternate and 1 or 2),true)
	end
	self:PostCanPrimaryAttack()
end	




function SWEP:GetAnimation(animation)
	if animation == "Fire" then 
		return (self.Alternate and ACT_VM_SECONDARYATTACK or ACT_VM_PRIMARYATTACK)
	end
	if animation == "Reload" then 
		if self.Silenced then return ACT_VM_RELOAD else return ACT_VM_RELOAD_SILENCED end
	end
end

