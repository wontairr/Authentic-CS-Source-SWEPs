AddCSLuaFile()


function EFFECT:Init( data )
	-- Because CEffectData is a shared object, we can't just store it and use its' properties later
	-- Instead, we store the properties themselves
	self.offset = data:GetOrigin() + Vector( 0, 0, 0.2 )
	self.angles = data:GetAngles()
	self.particles = 4

end

function EFFECT:Think()
	return true
end

function EFFECT:Render()
	local emitter = ParticleEmitter( self.offset, false )
		for i=0, self.particles do
			local particle = emitter:Add( "effects/softglow", self.offset )
			if particle then
				particle:SetAngles( self.angles )
				particle:SetVelocity( Vector( 0, 0, 15 ) )
				particle:SetColor( 255, 102, 0 )
				particle:SetLifeTime( 0 )
				particle:SetDieTime( 0.2 )
				particle:SetStartAlpha( 255 )
				particle:SetEndAlpha( 0 )
				particle:SetStartSize( 1.6 )
				particle:SetStartLength( 1 )
				particle:SetEndSize( 1.2 )
				particle:SetEndLength( 4 )
			end
		end
	emitter:Finish()
end