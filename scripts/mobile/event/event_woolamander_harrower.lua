event_woolamander_harrower = Creature:new {
	objectName = "@mob/creature_names:woolamander_harrower",
	customName = "a woolamander harrower (event)",
	socialGroup = "woolamander",
	pvpFaction = "",
	faction = "",
	level = 251,
	chanceHit = 5,
	damageMin = 600,
	damageMax = 1110,
	baseXp = 50000,
	baseHAM = 100000,
	baseHAMmax = 103000,
	armor = 2,
	resists = {55,55,-1,80,80,80,-1,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 1500,
	hideType = "hide_wooly",
	hideAmount = 1500,
	boneType = "bone_mammal",
	boneAmount = 1000,
	milk = 0,
	tamingChance = 0,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = 0,
	diet = HERBIVORE,
	scale = 1.5,

	templates = {"object/mobile/woolamander.iff"},
	lootGroups = {
	 {
	        groups = {
				{group = "harrower_bone", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "resource_deed", chance = 2500000}
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison",""},
		{"knockdownattack","knockdownChance=75"}
	}
}

CreatureTemplates:addCreatureTemplate(event_woolamander_harrower, "event_woolamander_harrower")
