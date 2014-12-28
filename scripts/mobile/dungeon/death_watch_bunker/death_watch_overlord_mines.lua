death_watch_overlord_mines = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_dthwatch_gold",
	socialGroup = "death_watch",
	pvpFaction = "",
	faction = "",
	level = 221,
	chanceHit = 19,
	damageMin = 622,
	damageMax = 1100,
	baseXp = 20948,
	baseHAM = 175000,
	baseHAMmax = 175000,
	armor = 3,
	resists = {80,80,90,80,45,45,95,70,55},
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

	templates = {"object/mobile/dressed_death_watch_gold.iff"},
	lootGroups = {
		{
			groups = {
				{group = "mandalorian_schemes", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "death_watch_bunker_overlord_shared", chance =  2500000},
				{group = "death_watch_bunker_overlord_quest", chance  = 7500000}
			},
			lootChance = 50000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 50000000
		},
	},
	weapons = {"dark_trooper_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,fencermaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(death_watch_overlord_mines, "death_watch_overlord_mines")
