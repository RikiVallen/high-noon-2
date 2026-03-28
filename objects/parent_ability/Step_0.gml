if (HAS_REACHED_MAX_RANGE && !_queuedToDestroy) {
	_queuedToDestroy = true
	alarm[EFFECT_ALARM] = 1
}