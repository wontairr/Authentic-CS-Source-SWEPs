SWEP.Base = "css_weapon_base"

SWEP.DontDrop = true

SWEP.PrintName = "KNIFE"
SWEP.Header = "Melee"
SWEP.Category = "Counter-Strike: Source"
SWEP.IconLetter = "j"

SWEP.Type = CSS_Misc

SWEP.HoldType = "knife"

SWEP.Slot = CSSServerConvars.weapons_sandbox_slots:GetBool() and 0 or 2

SWEP.CArmsSettings = {
	offsetPos = Vector(0,4,1),
	offsetAng = Angle(0,-5,5)
}
local carms = CSSServerConvars.weapons_carms:GetBool()

SWEP.Spawnable = CSS_WeaponCompatibility:GetBool() 

SWEP.ViewModel = CSS_Viewmodel("models/weapons/v_knife_t.mdl")
SWEP.WorldModel = Model("models/weapons/w_knife_t.mdl")
SWEP.ViewModelRightHanded = true

SWEP.Primary.Sound = Sound("Weapon_Knife.Slash")
SWEP.Recoil = false

SWEP.Primary.Distance = 50

SWEP.Primary.Ammo = "none"
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Delay   = 0.5
SWEP.Secondary.Delay = 1
SWEP.Primary.Automatic = true 
SWEP.Primary.Damage = 50

SWEP.MaxPlayerSpeed = 250

SWEP.Secondary.Automatic = true

SWEP.Accuracy = {
    Spread      = 0.00000,

    Crouch      = 0.00000,
    Stand       = 0.00000,
    Jump        = 0.00000,
    Land        = 0.00000,
    Ladder      = 0.00000,
    Move        = 0.00000,
    
    Maximum     = 0
}

SWEP.SprayPattern = {
    "none"
}
SWEP.IconOverride = "vgui/css/knife_icon.png"


local stab = 1
local backstab = 2

local deploy = Sound("Weapon_Knife.Deploy")

function SWEP:IdleEnd()
    timer.Simple(0.0,function()
        if IsValid(self) then
            self:DelayedEvent(self.Event.Idle,11)
        end
    end)
end

function SWEP:Deploy()
    self:EmitSound(deploy)
    timer.Simple(1,function()
        if IsValid(self) then
            self:DelayedEvent(self.Event.Idle,2)
        end
    end)
    return CSSBaseClass.Deploy(self)
end

local soundHitWall = Sound("Weapon_Knife.HitWall")
local soundHitFlesh = Sound("Weapon_Knife.Hit")
local soundBackstab = Sound("Weapon_Knife.Stab")
local function Bullet(attacker,tr,dmginfo)
    if not IsValid(attacker) then return end
    local wep = attacker:GetActiveWeapon()
    if not IsValid(wep) or wep:GetClass() != "weapon_knife" then return end
    wep.LASTHIT = true
    if tr.Hit then
        if carms then
            wep:SendAnimation(
                wep.SECONDARY and ACT_VM_SECONDARYATTACK or ACT_VM_PRIMARYATTACK,
                PLAYER_ATTACK1
            )
        else            
            wep:SendAnimation(
                ACT_VM_HITCENTER,
                PLAYER_ATTACK1
            )
        end
        
        local ent = tr.Entity 
        local dontPlayNormal = false
        if IsValid(ent) then
            if ent:IsNPC() or ent:IsPlayer() then
                dontPlayNormal = true 
                local dir = (ent:GetPos() - wep:GetOwner():GetPos()):GetNormalized()
                local entForward = ent:GetForward()
                local dot = entForward:Dot(dir)
                if dot > 0.8 and wep.SECONDARY then
                    dmginfo:SetDamage(dmginfo:GetDamage() * 3)
                    wep:EmitSound(soundBackstab)
                else
                    wep:EmitSound(soundHitFlesh)
                end
            end
        end
        if not dontPlayNormal then
            wep:EmitSound(soundHitWall)  
        end
        if SERVER and not (tr.Entity and (tr.Entity:IsNPC() or tr.Entity:IsPlayer())) then
            
            util.Decal("ManhackCut",tr.HitPos - tr.HitNormal,tr.HitPos + tr.HitNormal * 2)
        end
    end
    return {effects = false,damage = true}
end
function SWEP:PrimaryAttack()
    if CurTime() < self:GetNextPrimaryFire() then return false end
    self:DelayedEvent(self.Event.Idle,2)
    
    local owner = self:GetOwner()
    if not IsValid(owner) then return false end
    self.LASTHIT = false
    local bullet = {}
    bullet.Num     	= 1
	bullet.Dir     	= owner:EyeAngles():Forward()  -- Affected by spray pattern
    bullet.Src     	= owner:GetShootPos()
	bullet.Spread	= 0
	bullet.Distance = self.Primary.Distance
	bullet.Tracer	= 0
	bullet.Force	= 1
	bullet.Damage	= self.Primary.Damage
	bullet.AmmoType = "none"
	bullet.Callback = Bullet
    self.SECONDARY = false
    owner:FireBullets(bullet)
    if not self.LASTHIT then
        self:EmitSound(self.Primary.Sound)
        self:SendAnimation(ACT_VM_MISSCENTER,PLAYER_ATTACK1)
    end
    
    self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
end

function SWEP:SecondaryAttack()
    if CurTime() < self:GetNextPrimaryFire() then return false end
    self:DelayedEvent(self.Event.Idle,2)
    
    local owner = self:GetOwner()
    if not IsValid(owner) then return false end
    self.LASTHIT = false
    local bullet = {}
    bullet.Num     	= 1
	bullet.Dir     	= owner:EyeAngles():Forward()  -- Affected by spray pattern
    bullet.Src     	= owner:GetShootPos()
	bullet.Spread	= 0
	bullet.Distance = self.Primary.Distance
	bullet.Tracer	= 0
	bullet.Force	= 1
	bullet.Damage	= self.Primary.Damage
	bullet.AmmoType = "none"
	bullet.Callback = Bullet
    self.SECONDARY = true
    owner:FireBullets(bullet)
    if not self.LASTHIT then
        self:EmitSound(self.Primary.Sound)
        self:SendAnimation(ACT_VM_MISSCENTER,PLAYER_ATTACK1)
    end
    
    self:SetNextPrimaryFire(CurTime() + self.Secondary.Delay)
end

function SWEP:GetAnimation(miss)
    local animation = ACT_VM_PRIMARYATTACK
    if carms then
        if name == stab or backstab then
            animation = ACT_VM_HITCENTER
        end
    else
        if name == stab then
            animation = ACT_VM_PRIMARYATTACK
        elseif name == backstab then
            animation = ACT_VM_SECONDARYATTACK
        end
    end
    return animation
end