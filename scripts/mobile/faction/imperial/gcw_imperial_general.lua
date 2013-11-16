gcw_imperial_general = Creature:new {
	objectName = "",
	customName = "Imperial General",
	pvpFaction = "imperial",
	faction = "imperial",
	level = 120,
	chanceHit = 0.56,
	damageMin = 351,
	damageMax = 364,
	baseXp = 3788,
	baseHAM = 10660,
	baseHAMmax = 21000,
	armor = 2,
	resists = {70,85,45,50,35,65,90,65,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 136,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_imperial_general_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 7200000},
				{group = "rifles", chance = 550000},
				{group = "pistols", chance = 550000},
                {group = "melee_weapons", chance = 550000},
                {group = "carbines", chance = 550000},
				{group = "clothing_attachments", chance = 25000},
				{group = "armor_attachments", chance = 25000},
				{group = "imperial_officer_common", chance = 450000}
			},
			lootChance = 4400000		}						
	},

	weapons = {"imperial_weapons_medium"},
	conversationTemplate = "imperial_recruiter_convotemplate",
	attacks = merge(riflemanmaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(gcw_imperial_general, "gcw_imperial_general")
