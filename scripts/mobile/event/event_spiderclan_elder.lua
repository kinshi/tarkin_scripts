event_spiderclan_elder = Creature:new {
	objectName = "@mob/creature_names:spider_nightsister_elder",
	customName = "a Spiderclan elder",
	socialGroup = "spider_nightsister",
	pvpFaction = "spider_nightsister",
	faction = "spider_nightsister",
	level = 277,
	chanceHit = 272.5,
	damageMin = 1520,
	damageMax = 2750,
	baseXp = 0,
	baseHAM = 321000,
	baseHAMmax = 392000,
	armor = 3,
	resists = {80,100,85,80,100,100,90,100,-1},
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

CreatureTemplates:addCreatureTemplate(event_spiderclan_elder, "event_spiderclan_elder")
