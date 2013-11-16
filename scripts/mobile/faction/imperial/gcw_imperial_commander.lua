gcw_imperial_commander = Creature:new {
	objectName = "",
	customName = "Imperial Commander",
	socialGroup = "imperial",
	pvpFaction = "imperial",
	faction = "imperial",
	level = 230,
	chanceHit = 1.3,
	damageMin = 839,
	damageMax = 1300,
	baseXp = 11675,
	baseHAM = 31200,
	baseHAMmax = 45000,
	armor = 2,
	resists = {70,85,60,55,35,40,90,75,-1},
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

	templates = {"object/mobile/dressed_imperial_commander_m.iff"},
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
			lootChance = 4200000
		}						
	},
	weapons = {"imperial_weapons_medium"},
	conversationTemplate = "imperial_recruiter_convotemplate",
	attacks = merge(riflemanmaster,carbineermaster,brawlermaster)
	
}

CreatureTemplates:addCreatureTemplate(gcw_imperial_commander, "gcw_imperial_commander")
