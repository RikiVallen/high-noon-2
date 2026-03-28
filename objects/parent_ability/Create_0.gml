// Constants
EFFECT_TICK = 60
HEALTH_PER_EFFECT_TICK = 1

// Internal Utility
_timer = 0
_targets = []
_hitList = []
_statusEffectedList = []

_queuedToDestroy = false

_effectActive = false
_owner = owner

#macro EFFECT_ALARM 0
#macro EFFECT_TARGET_ALARM 1
#macro HAS_REACHED_MAX_RANGE distance_to_object(_owner) > maxRange && maxRange != -1

// Composition
healthComponent = new HealthComponent(self, { maxHp: hp })

_effect = function() {
	if (!_queuedToDestroy) {
		alarm[EFFECT_ALARM] = 1
	}
	alarm[EFFECT_TARGET_ALARM] = 1
}