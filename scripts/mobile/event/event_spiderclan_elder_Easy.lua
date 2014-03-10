event_spiderclan_elder_easy = Creature:new {
	objectName = "@mob/creature_names:spider_nightsister_elder",
	customName = "a Spiderclan elder",
	socialGroup = "spider_nightsister",
	pvpFaction = "spider_nightsister",
	faction = "spider_nightsister",
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

	templates = {"object/mobile/dressed_dathomir_spider_nightsister_elder.iff"},
	lootGroups = {
	 {
	        groups = {
				{group = "armor_attachments", chance = 3300000},
				{group = "clothing_attachments", chance = 3300000},
				{group = "resource_deed", chance = 3400000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(event_spiderclan_elder_easy, "event_spiderclan_elder_easy")
