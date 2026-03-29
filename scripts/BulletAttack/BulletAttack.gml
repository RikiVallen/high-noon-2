function BulletAttack() : Attack() constructor { 
	/// @param {Asset.GMObject} owner description
	/// @param {Struct.AbilityData} data description
	execute = function(owner, target, data) { 
		var bullet = instance_create_layer(owner.x, owner.y, "Instances", obj_bullet, data)
		bullet.direction = owner.direction
		
		if (data.autoTrack) {
			GUARD_INSTANCE_EXISTS target
			var nearest = instance_nearest(bullet.x, bullet.y, target)
			with bullet
				move_towards_point(nearest.x, nearest.y, data.speed)
		}
	};
}
