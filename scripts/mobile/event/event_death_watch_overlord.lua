event_death_watch_overlord = Creature:new {
	objectName = "",
	customName = "a Death Watch Overlord",
	socialGroup = "death_watch",
	pvpFaction = "death_watch",
	faction = "",
	level = 300,
	chanceHit = 150,
	damageMin = 1245,
	damageMax = 2200,
	baseXp = 100000,
	baseHAM = 290000,
	baseHAMmax = 420000,
	armor = 3,
	resists = {70,70,80,70,40,40,90,60,5},
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
	creatureBitmask = KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,
	scale = 1.2,

	templates = {"object/mobile/dressed_death_watch_gold.iff"},
	lootGroups = {
		{
			groups = {
				{group = "death_watch_bunker_overlord_shared", chance =  1600000},
				{group = "death_watch_bunker_overlord_shared", chance =  1600000},
				{group = "death_watch_bunker_overlord_quest", chance  = 1600000},
				{group = "armor_attachments", chance = 1600000},
				{group = "resource_deed", chance = 2000000},
				{group = "clothing_attachments", chance = 1600000}
			},
			lootChance = 10000000
		},
	},
	weapons = {"dark_trooper_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(event_death_watch_overlord, "event_death_watch_overlord")
