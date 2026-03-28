function ControllerDirection() {
	var dx = InputValue(INPUT_VERB.AIM_RIGHT) - InputValue(INPUT_VERB.AIM_LEFT)
	var dy = InputValue(INPUT_VERB.AIM_UP) - InputValue(INPUT_VERB.AIM_DOWN)
	
	return point_direction(x, y, x + dx, y + dy)
}