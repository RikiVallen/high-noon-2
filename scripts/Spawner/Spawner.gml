enum SpawnDirection {
	LEFT,
	TOP,
	RIGHT,
	BOTTOM
}


enum SpawnRule {
	CAMERA,
	ROOM
}

/// @param {Asset.GMObject} object description
function Spawner(object) constructor {
	
	_object = object
	_sprite = object_get_sprite(_object)
	
	_padding = 32
		
	/// @param {SpawnRule} rule description
	spawn = function(rule) {
		var position = rule == SpawnRule.CAMERA ? _getPositionCamera() : _getPositionRoom()
		return instance_create_layer(position.x, position.y, "Instances", _object);
	}
	
	_getPositionRoom = function() {
		randomise()
		var spawnDirection = choose(SpawnDirection.LEFT, SpawnDirection.TOP, SpawnDirection.RIGHT, SpawnDirection.BOTTOM)
		
		with _sprite
		switch spawnDirection {
			case SpawnDirection.BOTTOM:
				return {
					x: random_range(-sprite_width - 32, room_width + sprite_width + 32),
					y: room_height + sprite_height + 32
				}
			case SpawnDirection.RIGHT:
				return {
					x: room_width + sprite_width,
					y: random_range(-sprite_height - 32, room_height + sprite_height + 32)
				}
			case SpawnDirection.TOP:
				return {
					x: random_range(-sprite_width - 32, room_width + sprite_width + 32),
					y: -sprite_height - 32
				}
			case SpawnDirection.LEFT:
				return {
					x: -sprite_width - 32,
					y: random_range(-sprite_height - 32, room_height + sprite_height + 32)
				}
		}
	}
	
	_getPositionCamera = function() {
		GUARD_INSTANCE_EXISTS obj_player
		
		randomise()
		var spawnDirection = choose(SpawnDirection.LEFT, SpawnDirection.TOP, SpawnDirection.RIGHT, SpawnDirection.BOTTOM)
		var _camera = view_camera[0]
		var _cameraHeight = camera_get_view_height(_camera)
		var _cameraWidth = camera_get_view_width(_camera)
		
		
		var _camera_x = obj_player.x - _cameraWidth / 2;
    	var _camera_y = obj_player.y - _cameraHeight / 2;
    
    	_camera_x = clamp(_camera_x, 0, room_width - _cameraWidth);
    	_camera_y = clamp(_camera_y, 0, room_height - _cameraHeight);
		
		with _sprite
			
		switch spawnDirection {
			case SpawnDirection.BOTTOM:
				return {
					x: random_range(_camera_x - sprite_width, _camera_x + _cameraWidth + sprite_width),
					y: _camera_y + _cameraHeight + sprite_height + 32
				}
			case SpawnDirection.TOP:
				return {
					x: random_range(_camera_x - sprite_width, _camera_x + _cameraWidth + sprite_width),
					y: _camera_y - sprite_height - 32
				}
			case SpawnDirection.LEFT:
				return {
					x: _camera_x - sprite_width - 32,
					y:  random_range(_camera_y - sprite_height, _camera_y + _cameraHeight + sprite_height),
				}
			case SpawnDirection.RIGHT:
				return {
					x: _camera_x + _cameraWidth + sprite_width + 32,
					y:  random_range(_camera_y - sprite_height, _camera_y + _cameraHeight + sprite_height),
				}
		}
	}
}