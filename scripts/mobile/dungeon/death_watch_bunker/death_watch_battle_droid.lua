death_watch_battle_droid = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_battle_droid",
	socialGroup = "death_watch",
	pvpFaction = "",
	faction = "",
	level = 134,
	chanceHit = 3.5,
	damageMin = 350,
	damageMax = 550,
	baseXp = 12612,
	baseHAM = 55000,
	baseHAMmax = 55000,
	armor = 2,
	resists = {35,35,60,10,60,5,20,45,-1},
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
				{group = "droid_loot", chance = 5000000},
				{group = "death_watch_bunker_commoners", chance = 5000000}
			},
			lootChance = 6500000
		},
		{
			groups = {
				{group = "nge_house_commando", chance = 10000000}
			},
			lootChance = 5000000
		}
	},
	weapons = {"battle_droid_weapons"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,carbineermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(death_watch_battle_droid, "death_watch_battle_droid")
