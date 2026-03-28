array_foreach(_targets, function(target) {
	healthComponent.takeHealth(HEALTH_PER_EFFECT_TICK)
})
speed = 0
alarm[EFFECT_ALARM] = EFFECT_TICK