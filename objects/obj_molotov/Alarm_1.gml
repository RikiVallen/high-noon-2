array_foreach(_targets, function(target) {
	target.healthComponent.takeHealth(damage)
})

alarm[EFFECT_TARGET_ALARM] = effectRate