function HealthComponent(owner, stats) constructor {
	_owner = owner
	_maxHp = stats.maxHp
	_currentHp = _maxHp
	
	takeHealth = function(health) {
		_currentHp = max(0, _currentHp - health)
		if (_currentHp <= 0) {
			show_debug_message("Should DIE")
			instance_destroy(_owner)
		}
	}
	
	addHealth = function(health) {
		_currentHp = min(_maxHp, _currentHp + health)
	}
	
	getMaxHp = function() {
		return _maxHp
	}
	
	getCurrentHp = function() {
		return _currentHp
	}
}