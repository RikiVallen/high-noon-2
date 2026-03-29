/// @return {Struct.AbilityData} description
function MolotovData(owner) : AbilityData() constructor {
	self.owner = owner.id
	name = "Molotov"
	speed = 10
	hp = 5
	damage = 1
	effectRate = 20
	cooldown = 0.5
	maxRange = 64
	targetType = TargetType.AOE
	
	return self
}