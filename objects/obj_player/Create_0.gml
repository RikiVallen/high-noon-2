movement = new PlayerMovement(self)
healthComponent = new HealthComponent(self, { maxHp: 100 })

bulletData = new BulletData(self)
molotovData = new MolotovData(self)
knifeData = new KnifeData(self)

bulletAttack = new AttackComponent(self, obj_enemy, new BulletAttack(), bulletData)
molotovAttack = new AttackComponent(self, obj_enemy, new MolotovAttack(), molotovData)
knifeAttack = new AttackComponent(self, obj_enemy, new KnifeAttack(), knifeData)