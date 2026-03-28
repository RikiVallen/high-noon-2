GUARD_INSTANCE_EXISTS obj_player

direction = point_direction(x, y, obj_player.x, obj_player.y)
var _blocked = collision_line(x, y, obj_player.y, obj_player.x, obj_platform, true, true)
//
if (!_blocked) {
	//move_towards_point(obj_player.x, obj_player.y, 1)
}


if (distance_to_object(obj_player) <= knifeData.maxRange) {
	//knifeAttack.step(true)
}

