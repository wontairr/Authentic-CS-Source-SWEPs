AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "css_grenade_base"

ENT.PrintName = "flashgrenade"

ENT.Spawnable = false
ENT.Category = "Counter-Strike: Source"

ENT.Sound       = Sound("Flashbang.Explode")

ENT.BounceSound = Sound( "Flashbang.Bounce" )

ENT.FuseTime = 1.5

ENT.Model = Model("models/weapons/w_eq_flashbang_thrown.mdl")



function ENT:PercentageOfFlashForPlayer(playerIn, flashPos, pevInflictor)

    local MASK = CONTENTS_SOLID + CONTENTS_MOVEABLE + CONTENTS_DEBRIS + CONTENTS_MONSTER



	local retval = 0.0

	local tr = nil

	local pos = playerIn:EyePos()
	local vecRight, vecUp

	local tempAngle = (playerIn:EyePos() - flashPos):Angle()
	
	vecRight = tempAngle:Right()
    vecUp    = tempAngle:Up()


	vecRight:Normalize()
	vecUp:Normalize()
    tr = util.TraceLine({
        start = flashPos,
        endpos = pos,
        mask = MASK,
        filter = pevInflictor,
        collisiongroup = COLLISION_GROUP_NONE
    })

	if ((tr.Fraction == 1.0) || (tr.Entity == playerIn)) then
		return 1.0
    end

	if (!(playerIn:IsPlayer())) then
		// if this entity isn't a playerIn, it's a hostage or some other entity, then don't bother with the expensive checks
		// that come below.
		return 0.0
    end

	// check the point straight up.
	pos = flashPos + vecUp*50

    tr = util.TraceLine({
        start = flashPos,
        endpos = pos,
        mask = MASK,
        filter = pevInflictor,
        collisiongroup = COLLISION_GROUP_NONE
    })

	pos = playerIn:EyePos()

    tr = util.TraceLine({
        start = tr.HitPos,
        endpos = pos,
        mask = MASK,
        filter = pevInflictor,
        collisiongroup = COLLISION_GROUP_NONE
    })

	if ((tr.Fraction == 1.0) || (tr.Entity == playerIn)) then
		retval = retval + 0.167
    end
    

	// check the point up and right.
	pos = flashPos + vecRight*75 + vecUp*10

    tr = util.TraceLine({
        start = flashPos,
        endpos = pos,
        mask = MASK,
        filter = pevInflictor,
        collisiongroup = COLLISION_GROUP_NONE
    })

	pos = playerIn:EyePos()

    tr = util.TraceLine({
        start = tr.HitPos,
        endpos = pos,
        mask = MASK,
        filter = pevInflictor,
        collisiongroup = COLLISION_GROUP_NONE
    })

	if ((tr.Fraction == 1.0) || (tr.Entity == playerIn)) then
		retval = retval + 0.167
    end

	pos = flashPos - vecRight*75 + vecUp*10

    tr = util.TraceLine({
        start = flashPos,
        endpos = pos,
        mask = MASK,
        filter = pevInflictor,
        collisiongroup = COLLISION_GROUP_NONE
    })

	pos = playerIn:EyePos()

    tr = util.TraceLine({
        start = tr.HitPos,
        endpos = pos,
        mask = MASK,
        filter = pevInflictor,
        collisiongroup = COLLISION_GROUP_NONE
    })

	if ((tr.Fraction == 1.0) || (tr.Entity == playerIn)) then
		retval = retval + 0.167
    end

	return retval
end

function ENT:RadiusFlash( vecSrc, pevInflictor, pevAttacker, flDamage)

	vecSrc.z = vecSrc.z + 1// in case grenade is lying on the ground

	if ( !pevAttacker ) then
		pevAttacker = pevInflictor
    end

	local		tr
	local		flAdjustedDamage
	local	    var
	local		vecEyePos
	local		fadeTime, fadeHold
	local		vForward
	local		vecLOS
    local		flDot
	
	local		pEntity = nil
	local   	flRadius = 1500
	local		falloff = flDamage / flRadius

	local bInWater = (util.PointContents(vecSrc) == CONTENTS_WATER)
    
	// iterate on all entities in the vicinity.
    for key, pEntity in ipairs(ents.FindInSphere(vecSrc,flRadius)) do

		local bPlayer = pEntity:IsPlayer()
		local bHostage = ( pEntity:GetClass() == "hostage_entity" )
		
		if( !bPlayer && !bHostage ) then
			continue
        end


		vecEyePos = pEntity:EyePos()

		// blasts don't travel into or out of water
		if ( bInWater && pEntity:WaterLevel() == 0) then
			continue
        end
		if (!bInWater && pEntity:WaterLevel() == 3) then
			continue
        end
		local percentageOfFlash = self:PercentageOfFlashForPlayer(pEntity, vecSrc, pevInflictor)

		if ( percentageOfFlash > 0.0 ) then
		
			// decrease damage for an ent that's farther from the grenade
			flAdjustedDamage = flDamage - ( vecSrc - pEntity:EyePos() ):Length() * falloff
		
			if ( flAdjustedDamage > 0 ) then
			
				// See if we were facing the flash
				vForward = pEntity:EyeAngles():Forward()

				vecLOS = ( vecSrc - vecEyePos )

				local flDistance = vecLOS:Length()

				// Normalize both vectors so the dotproduct is in the range -1.0 <= x <= 1.0 
				vecLOS:Normalize()
					
				flDot = vecLOS:Dot(vForward)
            

				local startingAlpha = 255
	
				// if target is facing the bomb, the effect lasts longer
				if( flDot >= 0.5 ) then
				
					// looking at the flashbang
					fadeTime = flAdjustedDamage * 2.5
					fadeHold = flAdjustedDamage * 1.25
				
				elseif( flDot >= -0.5 ) then
				
					// looking to the side
					fadeTime = flAdjustedDamage * 1.75
					fadeHold = flAdjustedDamage * 0.8
				
				else
				
					// facing away
					fadeTime = flAdjustedDamage * 1.0
					fadeHold = flAdjustedDamage * 0.75
					startingAlpha = 200
                end
        

				fadeTime = fadeTime * percentageOfFlash
				fadeHold = fadeHold * percentageOfFlash

				if ( bPlayer ) then

			        if CLIENT then
                        pEntity:Blind( fadeHold, fadeTime, startingAlpha )
                    
                        pEntity:Deafen( flDistance )
                    end
				
                end
			end	
		end
	end

    if SERVER then return end
    local light = DynamicLight(0,false)
    if (!light) then return end
    light.decay = 768
    light.pos = vecSrc
    light.r = 255
    light.g = 255
    light.b = 255
    light.brightness = 2
    light.size = 400
    light.dietime = CurTime() + 0.1

end

function ENT:Explode()
    self:RadiusFlash(self:GetPos(),self,self:GetOwner(),4);
    self:EmitSound(self.Sound)
    if CLIENT then return end
    timer.Simple(1,function() if IsValid(self) then self:Remove() end end)
end
