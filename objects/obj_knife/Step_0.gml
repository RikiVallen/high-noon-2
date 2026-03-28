
if (maxRange > 0 && distance_to_object(owner) > maxRange) {

	instance_destroy()
}

if (target) {
	target.healthComponent.takeHealth(damage)
	instance_destroy()
}