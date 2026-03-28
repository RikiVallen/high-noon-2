direction = MouseDirection()
image_angle = direction
movement.step()
bulletAttack.step(InputCheck(INPUT_VERB.RIGHT_TRIGGER))
knifeAttack.step(InputCheck(INPUT_VERB.LEFT_TRIGGER))
