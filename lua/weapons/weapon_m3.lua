SWEP.Base = "css_weapon_shotgun_base"

SWEP.PrintName = "LEONE 12 GAUGE SUPER"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "k"

SWEP.Type = CSS_Shotgun

SWEP.HoldType = "shotgun"

SWEP.CArmsSettings = {
	offsetPos = Vector(0,5.5,1),
	offsetAng = Angle(0,0,0)
}


SWEP.Spawnable = CSS_WeaponCompatibility:GetBool()

SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_shot_m3super90.mdl")
SWEP.WorldModel = Model("models/weapons/w_shot_m3super90.mdl")

SWEP.CSMuzzleX       = false 
SWEP.CSMuzzleScale   = 1.3

SWEP.Primary.Sound = Sound("Weapon_M3.Single")

SWEP.Primary.Bullets = 9

SWEP.Primary.Distance = 3000

SWEP.Primary.Ammo = CSS_GetAmmo("buckshot","BULLET_PLAYER_BUCKSHOT")
SWEP.Primary.ClipSize = 8
SWEP.Primary.DefaultClip = 8
SWEP.Primary.Delay = 0.88
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 26
SWEP.Primary.Force = 1.25

SWEP.MaxPlayerSpeed = 220


SWEP.ShotgunReloadAnimSpeed = CSS_UsingArms() and 1.2 or 1



SWEP.Accuracy = {
    Spread      = 0.04000,

    Crouch      = 0.00750,
    Stand       = 0.01000,
    Jump        = 0.42000,
    Land        = 0.08400,
    Ladder      = 0.07875,
    Move        = 0.04320,
    
    Maximum     = 1.25
}
SWEP.SprayPatternRandomXSwap = false
SWEP.SprayPattern = {

	"none"

}

SWEP.IconOverride = "vgui/css/m3_icon.png"