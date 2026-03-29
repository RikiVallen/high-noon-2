/// @return {Struct.AbilityData} description
function BulletData(owner) : AbilityData() constructor {
	self.owner = owner.id
	
	name = "Bullet"
	damage = 1
	hp =  3
	effectRate = 10
	effectDelay = 0
	cooldown = 0.2
	lifespan = -1
	maxRange = -1
	speed = 10
	heal = 0
	
	autoTrack = false
	
	targetType = TargetType.Target
	
	return self
}