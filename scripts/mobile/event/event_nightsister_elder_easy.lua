event_nightsister_elder_easy = Creature:new {
	objectName = "@mob/creature_names:nightsister_elder",
	customName = "a Nightsister elder (event)",
	socialGroup = "nightsister",
	pvpFaction = "nightsister",
	faction = "nightsister",
	level = 200,
	chanceHit = 120,
	damageMin = 1520,
	damageMax = 1800,
	baseXp = 50000,
	baseHAM = 201000,
	baseHAMmax = 252000,
	armor = 3,
	resists = {85,25,25,85,85,85,85,85,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_elder.iff"},
	lootGroups = {
		{
			groups = {
				{group = "nightsister_rare", chance = 1600000},
				{group = "ns_clothing", chance = 1600000},
				{group = "crystals_premium", chance = 1600000},
				{group = "armor_attachments", chance = 1600000},
				{group = "clothing_attachments", chance = 1600000},
				{group = "resource_deed", chance = 2000000}
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = merge(tkamaster,brawlermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(event_nightsister_elder_easy, "event_nightsister_elder_easy")
