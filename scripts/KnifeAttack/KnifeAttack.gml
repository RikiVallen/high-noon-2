function KnifeAttack() : Attack() constructor { 
	/// @param {Asset.GMObject} owner description
	/// @param {Struct.AbilityData} data description
	execute = function(owner, target, data) {
		var knife = instance_create_layer(owner.x, owner.y, "Instances", obj_knife, data)
		var nearest = instance_nearest(owner.x, owner.y, target)
		knife.direction = point_direction(owner.x, owner.y, nearest.x, nearest.y)
	};
}
