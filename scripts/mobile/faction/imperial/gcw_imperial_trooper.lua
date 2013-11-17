gcw_imperial_trooper = Creature:new {
	objectName = "",
	customName = "Imperial Trooper",
	socialGroup = "imperial",
	pvpFaction = "imperial",
	faction = "imperial",
	level = 80,
	chanceHit = 0.47,
	damageMin = 208,
	damageMax = 221,
	baseXp = 3130,
	baseHAM = 2400,
	baseHAMmax = 8000,
	armor = 3,
	resists = {75,90,40,60,50,50,50,20,-1},
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
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_imperial_soldier_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 7200000},
				{group = "rifles", chance = 550000},
				{group = "pistols", chance = 550000},
                		{group = "melee_weapons", chance = 550000},
                		{group = "carbines", chance = 550000},
				{group = "clothing_attachments", chance = 250000},
				{group = "armor_attachments", chance = 250000}
			},
			lootChance = 4500000
		}						
	},
	weapons = {"imperial_weapons_light"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(gcw_imperial_trooper, "gcw_imperial_trooper")
