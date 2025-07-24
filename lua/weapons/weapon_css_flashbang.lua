SWEP.Base = "css_weapon_utility_base"

SWEP.PrintName = "FLASHBANG"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "g"

SWEP.Type = CSS_Utility
SWEP.Slot = CSSServerConvars.weapons_sandbox_slots:GetBool() and 4 or 3

SWEP.HoldType = "grenade"

SWEP.Spawnable = false

SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_eq_flashbang.mdl")
SWEP.WorldModel = Model("models/weapons/w_eq_flashbang.mdl")


SWEP.Primary.Distance = 4096

SWEP.Primary.Ammo = "none"
SWEP.Primary.ClipSize = 2
SWEP.Primary.DefaultClip = 2
SWEP.Primary.Automatic = false
SWEP.Primary.Damage = 50

SWEP.Secondary.Automatic = false

SWEP.MaxPlayerSpeed = 250

SWEP.ThrowSpeed = 3500

SWEP.ThrownEntity = "css_flashbang"