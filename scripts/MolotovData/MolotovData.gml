/// @return {Struct.AbilityData} description
function MolotovData(owner) : AbilityData() constructor {
	self.owner = owner.id
	name = "Molotov"
	speed = 10
	hp = 5
	damage = 1
	effectRate = 30
	cooldown = 0.5
	maxRange = 64
	targetType = TargetType.AOE
	lifespan = 5
	
	return self
}