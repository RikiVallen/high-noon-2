function PlayerManager() constructor {
	static _instance = undefined
	
	if (is_undefined(_instance)) {
		_instance = self
	}
}