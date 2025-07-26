SWEP.Base = "css_weapon_pistol_base"

SWEP.PrintName = "9X19MM SIDEARM"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "c"

SWEP.HoldType = "revolver"

SWEP.CArmsSettings = {
	offsetPos = Vector(0.3,5,1.6),
	offsetAng = Angle(0,0,0)
}

SWEP.Spawnable = CSS_WeaponCompatibility:GetBool()


SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_pist_glock18.mdl")
SWEP.WorldModel = Model("models/weapons/w_pist_glock18.mdl")

SWEP.CSMuzzleX       = false
SWEP.CSMuzzleScale   = 1.0

SWEP.Primary.Sound = Sound("Weapon_Glock.Single")

SWEP.Recoil = false
SWEP.Primary.Distance = 4096
SWEP.Primary.Ammo = "pistol"
SWEP.Primary.ClipSize = 20
SWEP.Primary.DefaultClip = 20
SWEP.Primary.Delay = 0.15
SWEP.Primary.Damage = 25


SWEP.MaxPlayerSpeed = 250


SWEP.Accuracy = {
    Spread      = 0.00300,

    Crouch      = 0.00600,
    Stand       = 0.00800,
    Jump        = 0.27750,
    Land        = 0.05500,
    Ladder      = 0.01850,
    Move        = 0.01330,
    
    Maximum     = 1.25
}
SWEP.AccuracyNormal = {
    Spread      = 0.00300,

    Crouch      = 0.00600,
    Stand       = 0.00800,
    Jump        = 0.27750,
    Land        = 0.05500,
    Ladder      = 0.01850,
    Move        = 0.01330,
    
    Maximum     = 1.25
}
SWEP.AccuracyBurst = {
    Spread      = 0.0500,

    Crouch      = 0.00600,
    Stand       = 0.00800,
    Jump        = 0.27750,
    Land        = 0.05500,
    Ladder      = 0.01850,
    Move        = 0.01330,
    
    Maximum     = 1.25
}

SWEP.SprayPatternRandomXSwap = false
SWEP.SprayPattern = {
	"none"
}

SWEP.BurstFire = true 
SWEP.BurstAmount = 3
SWEP.BurstDelay = 0.45
SWEP.BurstShotDelay = 0.05

SWEP.IconOverride = "vgui/css/glock18_icon.png"


function SWEP:BurstShoot()
    
	self:TakePrimaryAmmo(self.Primary.BulletTake)
    self:EmitSound(self:GetSound("PrimaryFire"),140,100,1,(self:Clip1() > 0 and CHAN_WEAPON or CHAN_AUTO))

    if SERVER and self.BurstLeft == self.BurstAmount then
        self:SendAnimation(ACT_VM_SECONDARYATTACK,PLAYER_ATTACK1)
    end

    
	self:ShootBullet(self.Primary.Damage,self.Primary.Bullets,self:GetAccuracyFloat(),self:DoRecoil(),self.Primary.Distance,true)
	self:SetNextEmptyCheck()
end

function SWEP:Think()
    self.BaseClass.Think(self)
    self:BurstThink()
end