GUARD_INSTANCE_EXISTS other
GUARD_INSTANCE_EXISTS owner

if (owner.object_index == other.object_index) {
	show_debug_message("Ignore")
} else {
	other.healthComponent.takeHealth(damage)
	instance_destroy()
}