function XpComponent(owner, stats) constructor {
	_owner = owner
	_xp = stats.xp
	
	spawnXp = function() {
		var rMin = sprite_get_width(object_get_sprite(obj_upgrade)) / 2;   // tweak: ~half pickup sprite size 
		var rMax = 24;
		for (var i = 0; i < _xp; i++) {
			var dir = random(360);
			var dist = random_range(rMin, rMax);
			var ox = lengthdir_x(dist, dir);
			var oy = lengthdir_y(dist, dir);
			instance_create_layer(_owner.x + ox, _owner.y + oy, "Instances", obj_upgrade);
		}
	}
}