jawa = Creature:new {
	objectName = "@mob/creature_names:jawa",
	socialGroup = "jawa",
	pvpFaction = "jawa",
	faction = "jawa",
	level = 40,
	chanceHit = 0.25,
	damageMin = 150,
	damageMax = 270,
	baseXp = 9097,
	baseHAM = 22000,
	baseHAMmax = 29000,
	armor = 0,
	resists = {15,15,15,15,15,15,15,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = 0,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/jawa_male.iff"},
	lootGroups = {
	    {
			groups = {
				{group = "junk", chance = 2400000},
				{group = "jawa_common", chance = 1500000},
				{group = "armor_all", chance = 800000},
				{group = "tailor_components", chance = 1000000},
				{group = "loot_kit_parts", chance = 1500000},
				{group = "nge_house_jabba", chance = 100000},
				{group = "clothing_attachments", chance = 1250000},
				{group = "armor_attachments", chance = 1250000},
				{group = "color_crystals", chance = 200000}
			},
			lootChance = 2500000
		}						
	},
	weapons = {"novice_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmannovice)
}

CreatureTemplates:addCreatureTemplate(jawa, "jawa")
