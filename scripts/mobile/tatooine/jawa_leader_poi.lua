jawa_leader_poi = Creature:new {
	objectName = "@mob/creature_names:jawa_leader",
	socialGroup = "jawa",
	pvpFaction = "jawa",
	faction = "jawa",
	level = 130,
	chanceHit = 0.65,
	damageMin = 500,
	damageMax = 900,
	baseXp = 25097,
	baseHAM = 50000,
	baseHAMmax = 65000,
	armor = 3,
	resists = {40,40,40,40,40,40,-1,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/jawa_male.iff"},
	lootGroups = {
	    {
			groups = {
				{group = "jawa_common", chance = 2000000},
				{group = "armor_all", chance = 800000},
				{group = "tailor_components", chance = 1000000},
				{group = "loot_kit_parts", chance = 1000000},
				{group = "nge_house_jabba", chance = 1500000},
				{group = "resource_deed", chance = 1000000},
				{group = "clothing_attachments", chance = 1250000},
				{group = "clothing_attachments", chance = 1250000},
				{group = "color_crystals", chance = 200000}
			},
			lootChance = 6000000
		}							
	},
	weapons = {"jawa_warlord_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,riflemannovice)
}

CreatureTemplates:addCreatureTemplate(jawa_leader_poi, "jawa_leader_poi")
