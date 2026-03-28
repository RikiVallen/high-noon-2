/// @param {Struct.Spawner} spawner description
function EnemyManager(spawner) constructor {
	
	_timer = 0
	_cooldown = 1
	_spawner = spawner
	
	step = function() {
		if (_timer > 0) _timer -= DeltaToSeconds(delta_time);
        if (_timer <= 0) {
            _spawner.spawn(SpawnRule.CAMERA)
            _timer = _cooldown;
        }
	}
}