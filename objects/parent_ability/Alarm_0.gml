array_foreach(_targets, function(target) {
	if (!array_contains(_hitList, target)) {
		target.healthComponent.takeHealth(damage)
		healthComponent.takeHealth(HEALTH_PER_EFFECT_TICK)
	}
	array_push(_hitList, target)
})

alarm[EFFECT_TARGET_ALARM] = 60