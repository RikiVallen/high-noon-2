function MolotovAttack() : Attack() constructor { 
	/// @param {Asset.GMObject} owner description
	/// @param {Struct.AbilityData} data description
	
	execute = function(owner, target, data) { 
		var molotov = instance_create_layer(owner.x, owner.y, "Instances", obj_molotov, data)
		molotov.direction = owner.direction
	};
}
