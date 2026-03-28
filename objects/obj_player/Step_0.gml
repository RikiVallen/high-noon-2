direction = MouseDirection()
image_angle = direction
movement.step()
bulletAttack.step(InputCheck(INPUT_VERB.RIGHT_TRIGGER))
molotovAttack.step(InputCheck(INPUT_VERB.LEFT_TRIGGER))

var nearest = instance_nearest(x, y, obj_enemy)

if (distance_to_object(nearest) < knifeData.maxRange) {
	knifeAttack.step(true)
}
