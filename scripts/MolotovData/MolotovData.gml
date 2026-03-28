/// @return {Struct.AbilityData} description
function MolotovData(owner) : AbilityData() constructor {
	self.owner = owner.id
	name = "Molotov"
	speed = 7
	damage = 1
	effectRate = 0.1
	cooldown = 0.3
	maxRange = 128
	lifespan = 5
	
	return self
}