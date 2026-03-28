movement = new PlayerMovement(self)
healthComponent = new HealthComponent(self, { maxHp: 100 })
bulletData = new BulletData(self)
molotovData = new MolotovData(self)
knifeData = new KnifeData(self)

bulletAttack = new AttackComponent(self, new BulletAttack(), bulletData)
molotovAttack = new AttackComponent(self, new MolotovAttack(), molotovData)
knifeAttack = new AttackComponent(self, new KnifeAttack(), knifeData)