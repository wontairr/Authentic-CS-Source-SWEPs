AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "css_grenade_base"

ENT.PrintName = "smokegrenade"

ENT.Spawnable = false
ENT.Category = "Counter-Strike: Source"

ENT.Sound       = Sound("BaseSmokeEffect.Sound")

ENT.BounceSound = Sound( "SmokeGrenade.Bounce" )

ENT.FuseTime = 1.5

ENT.Model = Model("models/weapons/w_eq_smokegrenade_thrown.mdl")


ENT.ImpactDamage = -1

ENT.Particles = {}

ENT.SmokeIndex = 0

ENT.SmokePos = vector_origin

ENT.DoBadFriction = true

local function ScaleForGravity(desiredGravity)
	local worldGravity = GetConVar("sv_gravity"):GetFloat()
	return worldGravity > 0 and desiredGravity / worldGravity or 0
end

function ENT:Initialize()
    self:SetModel(self.Model)
    self:SetCollisionBounds(vector_origin,vector_origin)
    self:PhysicsInit(SOLID_BBOX)
    self:SetMoveType(MOVETYPE_FLYGRAVITY)
    self:SetSolid(SOLID_BBOX)

    self:SetLocalAngularVelocity(Angle(math.Rand(-100,-500),0,0))
    
    self:SetGravity(ScaleForGravity(648))
    self:SetVelocity(Vector(100,1000,10))
    self:SetFriction(0.6)
    
    self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
    timer.Simple(0.01,function()
        if IsValid(self) then self.soundsplease = true self:SetCollisionGroup(COLLISION_GROUP_NONE) end
    end)

    local phys = self:GetPhysicsObject()

    if phys:IsValid() then phys:Wake() end
    local timerName = self:EntIndex() .. "csssmokegrnde"
    timer.Create(timerName, self.FuseTime,0,function()
        if not IsValid(self) or CLIENT then return end
        self.LastPos = self:GetPos()
        local trace = {}
        trace.start = self.LastPos
        trace.endpos = self.LastPos + Vector(0, 0, -10)
        trace.filter = self

        local tr = util.TraceLine(trace)

        if not tr.Hit then return end
        self:Explode()

        net.Start("toClient_CSSGrenadeExplode")
        net.WriteUInt(self:EntIndex(),12)
        net.Broadcast()

        timer.Remove(timerName)
    end)
    if SERVER then return end

    table.insert(CSSSmokeGrenades,self)
    self.SmokeIndex = #CSSSmokeGrenades
end


function ENT:GetRadius()
    return 80
end

-- from ttt cause smoke scares me
if CLIENT then
    

    local smoke1 = Material("particle/particle_smokegrenade")
    local smoke2 = Material("particle/particle_smokegrenade1")
    

 
    function ENT:CreateSmoke(center)
       local em = ParticleEmitter(center)
 
    

       local r = self:GetRadius()
       for i=1, 128 do
          local prpos = VectorRand() * r
          prpos.z = prpos.z + 32
          local p = em:Add((math.random(0,100) < 50 and smoke1 or smoke2), center + prpos)
          if p then

            --table.insert(self.Particles,p)
             
            p:SetColor(CSSSmokeColor.r,CSSSmokeColor.g,CSSSmokeColor.b)
            p:SetStartAlpha(255)
            p:SetEndAlpha(255)
            p:SetVelocity(VectorRand() * math.Rand(1200, 1300))
            p:SetLifeTime(0)
             
            p:SetDieTime(70)
 
            p:SetStartSize(math.random(140, 150))
            p:SetEndSize(math.random(1, 40))
            p:SetRoll(math.random(-180, 180))
            p:SetRollDelta(math.Rand(-0.5, 0.5))
            p:SetAirResistance(1150)
 
            p:SetCollide(true)
            p:SetBounce(0.4)
 
            p:SetLighting(false)
          end
       end
 
       em:Finish()
    end
end



function ENT:Explode()
    self.Exploded = true
    self:EmitSound(self.Sound)
    
    self.SmokePos = self:GetPos()

    if CLIENT then
        self:CreateSmoke(self.SmokePos)
        local index = self.SmokeIndex or 0
        timer.Simple(18,function()
            table.remove(CSSSmokeGrenades,index)
        end)
        return
    end
    timer.Simple(18,function()
        if IsValid(self) then
            self:Remove()
        end
    end)

end