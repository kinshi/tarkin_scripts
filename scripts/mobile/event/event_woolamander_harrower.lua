event_woolamander_harrower = Creature:new {
	objectName = "@mob/creature_names:woolamander_harrower",
	customName = "a woolamander harrower",
	socialGroup = "woolamander",
	pvpFaction = "",
	faction = "",
	level = 51,
	chanceHit = 0.51,
	damageMin = 400,
	damageMax = 510,
	baseXp = 0,
	baseHAM = 10000,
	baseHAMmax = 13000,
	armor = 1,
	resists = {55,55,-1,80,80,80,-1,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_wooly",
	hideAmount = 750,
	boneType = "bone_mammal",
	boneAmount = 500,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = 0,
	diet = HERBIVORE,

	templates = {"object/mobile/woolamander.iff"},
	lootGroups = {
	 {
	        groups = {
				{group = "harrower_bone", chance = 2500000},
				{group = "resource_deed", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "armor_attachments", chance = 2500000}
			},
			lootChance = 4650000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison",""},
		{"knockdownattack","knockdownChance=50"}
	}
}

CreatureTemplates:addCreatureTemplate(event_woolamander_harrower, "event_woolamander_harrower")
