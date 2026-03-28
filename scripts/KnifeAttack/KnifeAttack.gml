function KnifeAttack() : Attack() constructor { 
	/// @param {Asset.GMObject} owner description
	/// @param {Struct.AbilityData} data description
	execute = function(owner, data) { 
		var bullet = instance_create_layer(owner.x, owner.y, "Instances", obj_knife, data)
		bullet.direction = owner.direction
	};
}
