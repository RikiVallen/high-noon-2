direction = MouseDirection()
image_angle = direction
movement.step()
bulletAttack.step(InputCheck(INPUT_VERB.RIGHT_TRIGGER))
molotovAttack.step(InputCheck(INPUT_VERB.LEFT_TRIGGER))
