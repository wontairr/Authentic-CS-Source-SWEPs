SWEP.Base = "css_weapon_utility_base"

SWEP.Type = CSS_Utility
SWEP.Slot = CSSServerConvars.weapons_sandbox_slots:GetBool() and 4 or 3
SWEP.PrintName = "HE GRENADE"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "h"

SWEP.HoldType = "grenade"

SWEP.Spawnable = CSS_WeaponCompatibility:GetBool()

SWEP.ViewModel  = CSS_Viewmodel("models/weapons/v_eq_fraggrenade.mdl")
SWEP.WorldModel = Model("models/weapons/w_eq_fraggrenade.mdl")


SWEP.Primary.Distance = 4096

SWEP.Primary.Ammo = ""
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = false
SWEP.Primary.Damage = 50

SWEP.Secondary.Automatic = false

SWEP.MaxPlayerSpeed = 250

SWEP.ThrowSpeed = 3500

SWEP.ThrownEntity = "css_hegrenade"