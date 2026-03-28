enum TargetType {
	AOE,
	Target
}

function AbilityData() {
	return {
		name: "Ability",
		damage: 0,
		hp: 1,
		effectRate: 0,
		effectDelay: 0,
		cooldown: 0,
		lifespan: -1,
		maxRange: -1,
		speed: 0,
		heal: 0,
		targetType: TargetType.AOE
	}
}