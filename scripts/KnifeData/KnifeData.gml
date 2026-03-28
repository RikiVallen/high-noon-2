/// @return {Struct.AbilityData} description
function KnifeData(owner) : AbilityData() constructor {
	self.owner = owner.id
	name = "Knife"
	hp = 1
	speed = 15
	damage = 5
	maxRange = 36
	cooldown = 0.3
	effectRate = 1
	lifespan = 100
	targetType = TargetType.Target
	
	return self
}