enum PLAYER_MOVEMENT_STATE {
	MOVING,
	IDLE
}

function PlayerMovement(owner) constructor {
	
	movement = 4;
	_owner = owner
	_state = PLAYER_MOVEMENT_STATE.IDLE
	
	_update_state = function(state) {
		_state = state
	}
	
	_check_movement = function() {
		return 
			InputCheck(INPUT_VERB.RIGHT) 
			or InputCheck(INPUT_VERB.LEFT) 
			or InputCheck(INPUT_VERB.DOWN) 
			or InputCheck(INPUT_VERB.UP)
	}
	
	_moving = function(dx, dy) {
		var distance = point_distance(0, 0, dx, dy)
		
		if (distance > 0) {
			dx = dx / distance;
			dy = dy / distance;
		}
		
		if (dx == 0 && dy == 0) {
			return _update_state(PLAYER_MOVEMENT_STATE.IDLE)
		}
		
		var mx = dx * movement;
		var my = dy * movement;
	

		
		with (_owner) {
		    move_and_collide(mx, my, obj_platform);
		}
	}
	
	_idle = function(dx, dy) {
		if (dx != 0 || dy != 0) {
			return _update_state(PLAYER_MOVEMENT_STATE.MOVING)
		}
	}
	
	step = function() {
		var dx = InputCheck(INPUT_VERB.RIGHT) - InputCheck(INPUT_VERB.LEFT)
		var dy = InputCheck(INPUT_VERB.DOWN) - InputCheck(INPUT_VERB.UP)
		
		switch (_state) {
			case PLAYER_MOVEMENT_STATE.IDLE:
				_idle(dx, dy)
				break;
			case PLAYER_MOVEMENT_STATE.MOVING:
				_moving(dx, dy)
				break;
		}
	}
}