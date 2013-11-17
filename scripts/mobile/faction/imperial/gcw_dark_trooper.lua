gcw_dark_trooper = Creature:new {
	objectName = "",
	customName = "Dark Trooper",
	socialGroup = "imperial",
	pvpFaction = "imperial",
	faction = "imperial",
	level = 60,
	chanceHit = 0.8,
	damageMin = 396,
	damageMax = 416,
	baseXp = 3465,
	baseHAM = 11700,
	baseHAMmax = 13000,
	armor = 2,
	resists = {52,25,25,65,65,65,65,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + OVERT,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dark_trooper.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 150000},
				{group = "junk", chance = 7300000},
				{group = "rifles", chance = 600000},
				{group = "holocron_dark", chance = 150000},
				{group = "holocron_light", chance = 150000},
				{group = "carbines", chance = 600000},
				{group = "pistols", chance = 600000},
				{group = "clothing_attachments", chance = 200000},
				{group = "armor_attachments", chance = 250000}
			},
			lootChance = 3900000
		}
	},
	weapons = {"dark_trooper_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(gcw_dark_trooper, "gcw_dark_trooper")
