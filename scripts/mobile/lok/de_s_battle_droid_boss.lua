de_s_battle_droid_boss = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_super_battle_droid",
	customName = "Modified Super Battle Droid",
	socialGroup = "death_watch",
	pvpFaction = "death_watch",
	faction = "",
	level = 300,
	chanceHit = 11,
	damageMin = 750,
	damageMax = 1100,
	baseXp = 19000,
	baseHAM = 190000,
	baseHAMmax = 210000,
	armor = 3,
	resists = {65,75,80,40,80,5,20,65,-1},
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
	diet = NONE,
	scale = 1.2,

	templates = {
		"object/mobile/death_watch_s_battle_droid.iff",
		"object/mobile/death_watch_s_battle_droid_02.iff",
		"object/mobile/death_watch_s_battle_droid_03.iff"},
	lootGroups = {
		{
			groups = {
				{group = "av_21_pp", chance = 2000000},
				{group = "av_21_scheme", chance = 8000000}
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "droid_loot", chance = 60000000},
				{group = "resource_deed", chance = 1500000},
				{group = "nge_house_yt1300", chance = 1250000},
				{group = "nge_house_mustafar", chance = 1250000}
			},
			lootChance = 9000000
		},
				{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 50000000
		},
},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "creaturerangedattack"
}

CreatureTemplates:addCreatureTemplate(de_s_battle_droid_boss, "de_s_battle_droid_boss")
