function Macros (){
	#macro GUARD_INSTANCE_EXISTS for (var __;; { if (!instance_exists(__)) return; break; }) __ =
}