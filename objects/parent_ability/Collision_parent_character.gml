GUARD_INSTANCE_EXISTS other
GUARD_INSTANCE_EXISTS _owner

if (_owner.object_index != other.object_index) {
	if (!array_contains(_targets, other)) {
		array_push(_targets, other)
		_effect()
	}
}