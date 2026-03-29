array_foreach(_targets, function(target) {
	if (place_meeting(x, y, target)) {
		target.healthComponent.takeHealth(damage)
	}
})

alarm[EFFECT_TARGET_ALARM] = effectRate