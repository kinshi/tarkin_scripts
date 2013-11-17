gcw_imperial_first_lieutenant = Creature:new {
	objectName = "",
	customName = "Imperial First Lieutenant",
	socialGroup = "imperial",
	pvpFaction = "imperial",
	faction = "imperial",
	level = 75,
	chanceHit = 0.5,
	damageMin = 247,
	damageMax = 260,
	baseXp = 1803,
	baseHAM = 6500,
	baseHAMmax = 15000,
	armor = 2,
	resists = {80,90,55,55,35,35,90,70,-1},
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
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_imperial_lieutenant_m.iff"},
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
			lootChance = 2800000
		}						
	},
	weapons = {"imperial_weapons_medium"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(gcw_imperial_first_lieutenant, "gcw_imperial_first_lieutenant")
