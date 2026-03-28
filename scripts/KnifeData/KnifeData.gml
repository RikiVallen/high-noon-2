/// @return {Struct.AbilityData} description
function KnifeData(owner) : AbilityData() constructor {
	self.owner = owner.id
	name = "Knife"
	damage = 5
	hp =  1
	effectRate = 30
	effectDelay = 0
	cooldown = 0.5
	lifespan = -1
	maxRange = 32
	speed = 10
	heal = 0
	
	targetType = TargetType.Target
	
	return self
}