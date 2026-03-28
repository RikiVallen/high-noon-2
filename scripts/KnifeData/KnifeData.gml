/// @return {Struct.AbilityData} description
function KnifeData(owner) : AbilityData() constructor {
	self.owner = owner.id
	name = "Knife"
	speed = 10
	damage = 5
	maxRange = 24
	cooldown = 0.5
	effectRate = 0.1
	lifespan = 0
	
	return self
}