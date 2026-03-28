if (maxRange > 0 && distance_to_object(obj_player) > maxRange) {
	speed = 0
	if (lifespan > 0 && !isQueuedToDestroy) {
		isQueuedToDestroy = true
		alarm[0] = lifespan * 60
	}
}

if (_timer > 0) _timer -= DeltaToSeconds(delta_time);
if (_timer <= 0 && target) {
	_timer = effectRate;
	target.healthComponent.takeHealth(damage)
	target = undefined
}