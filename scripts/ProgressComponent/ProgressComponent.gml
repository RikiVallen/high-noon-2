function ProgressComponent(owner) constructor {
	
	_owner = owner
	_level = 1
	_xp = 0
	_xpBase = 20 // first level-up cost
	_xpStep = 25
	
	_totalXpToReachLevel = function(lvl) {
		if (lvl <= 1) return 0
		var n = lvl - 1
		return n * _xpBase + _xpStep * (n * (n - 1)) / 2
	}
	
	_levelFromTotalXp = function(total) {
		var lvl = 1
		while (total >= _totalXpToReachLevel(lvl + 1)) {
			lvl += 1
		}
		return lvl
	}
	
	addXp = function(amount) {
		_xp += amount
		var newLevel = _levelFromTotalXp(_xp)
		while (_level < newLevel) {
			_owner.healthComponent.addHealth(_owner.healthComponent.getCurrentHp())
			_owner.bulletData.autoTrack = true
			_owner.bulletData.damage += 1
			_level += 1
		}
	}
	
	getXp = function() {
		return _xp
	}
	
	getLevel = function() {
		return _level
	}
}