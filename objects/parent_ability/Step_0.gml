if (_timer > 0) _timer -= DeltaToSeconds(delta_time);
if (_timer <= 0) {
	_timer = effectRate
}

