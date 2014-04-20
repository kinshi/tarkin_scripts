event_lord_nyax = Creature:new {
	objectName = "@mob/creature_names:lord_nyax",
	customName = "Lord Nyax)",
	socialGroup = "followers_of_lord_nyax",
	pvpFaction = "followers_of_lord_nyax",
	faction = "followers_of_lord_nyax",
	level = 300,
	chanceHit = 5.3,
	damageMin = 775,
	damageMax = 1260,
	baseXp = 15235,
	baseHAM = 58000,
	baseHAMmax = 81000,
	armor = 2,
	resists = {80,45,40,20,50,100,10,15,5},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_lord_nyax.iff"},
	lootGroups = {
		{
		groups = {
				{group = "resource_deed", chance = 2000000},
				{group = "crystals_quality", chance = 500000},
				{group = "nyax", chance = 3500000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"nyaxs_weapons"},
	conversationTemplate = "",
	attacks = swordsmanmaster
}

CreatureTemplates:addCreatureTemplate(event_lord_nyax, "event_lord_nyax")
