de_battle_droid = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_battle_droid",
	socialGroup = "death_watch",
	pvpFaction = "death_watch",
	faction = "",
	level = 124,
	chanceHit = 3.5,
	damageMin = 595,
	damageMax = 700,
	baseXp = 15612,
	baseHAM = 65000,
	baseHAMmax = 65000,
	armor = 2,
	resists = {70,75,80,40,80,5,20,65,-1},
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

	templates = {
		"object/mobile/death_watch_battle_droid.iff",
		"object/mobile/death_watch_battle_droid_02.iff",
		"object/mobile/death_watch_battle_droid_03.iff"},
	lootGroups = {
		{
			groups = {
				{group = "droid_loot", chance = 2500000},
				{group = "nyms_common", chance = 5000000},
				{group = "pistols", chance = 1000000},
				{group = "carbines", chance = 1000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 1500000},
				{group = "armor_attachments", chance = 1500000}
			},
			lootChance = 4000000
		},
		{
			groups = {
				{group = "nge_house_mustafar", chance = 750000},
				{group = "nge_house_yt1300", chance = 750000}
			},
			lootChance = 1500000
		},
},
	weapons = {"battle_droid_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(de_battle_droid, "de_battle_droid")
