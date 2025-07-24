AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "css_grenade_base"

ENT.PrintName = "hegrenade"

ENT.Spawnable = false
ENT.Category = "Counter-Strike: Source"

ENT.Sound       = Sound("CSSGrenadeExplosion")

ENT.BounceSound = Sound( "HEGrenade.Bounce" )

ENT.FuseTime = 1.5

ENT.Model = Model("models/weapons/w_eq_fraggrenade_thrown.mdl")


ENT.ImpactDamage = -1

function ENT:Explode()
    local explosion = ents.Create("env_explosion")
    if !explosion then return end
    explosion:SetPos(self:GetPos())
    explosion:SetKeyValue("iMagnitude", 4096/50)
    explosion:SetKeyValue("iRadiusOverride", (4096/50)*2)
    explosion:SetSpawnFlags(64)
    explosion:SetOwner(self:GetOwner())
    explosion:Spawn()
    explosion:Activate()
    explosion:Fire("Explode", 0, 0)
    explosion:EmitSound(self.Sound)

    self:Remove()
end
