/// @return {Struct.AbilityData} description
function BulletData(owner) : AbilityData() constructor {
	self.owner = owner.id
	name = "Bullet"
	speed = 10
	damage = 3
	cooldown = 0.3
	
	return self
}