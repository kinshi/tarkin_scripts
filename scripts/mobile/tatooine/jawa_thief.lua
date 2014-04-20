jawa_thief = Creature:new {
	objectName = "@mob/creature_names:jawa_thief",
	socialGroup = "jawa",
	pvpFaction = "jawa",
	faction = "jawa",
	level = 90,
	chanceHit = 0.4,
	damageMin = 300,
	damageMax = 600,
	baseXp = 16097,
	baseHAM = 35000,
	baseHAMmax = 45000,
	armor = 1,
	resists = {25,25,-1,25,25,25,25,-1,-1},
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
	creatureBitmask = HERD,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/jawa_male.iff"},
	lootGroups = {
	    {
			groups = {
				{group = "junk", chance = 5000000},
				{group = "jawa_common", chance = 1500000},
				{group = "armor_all", chance = 800000},
				{group = "tailor_components", chance = 1000000},
				{group = "loot_kit_parts", chance = 1500000},
				{group = "color_crystals", chance = 200000}
			},
			lootChance = 2900000
		}					
	},
	weapons = {"jawa_warlord_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,riflemannovice)
}

CreatureTemplates:addCreatureTemplate(jawa_thief, "jawa_thief")
