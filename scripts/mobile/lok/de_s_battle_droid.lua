de_s_battle_droid = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_super_battle_droid",
	customName = "Super Battle Droid",
	socialGroup = "death_watch",
	pvpFaction = "death_watch",
	faction = "",
	level = 200,
	chanceHit = 18,
	damageMin = 900,
	damageMax = 1500,
	baseXp = 19000,
	baseHAM = 100000,
	baseHAMmax = 130000,
	armor = 2,
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
	scale = 0.8,

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
			lootChance = 1500000
		},
		{
			groups = {
				{group = "droid_loot", chance = 80000000},
				{group = "nge_house_yt1300", chance = 1000000},
				{group = "nge_house_mustafar", chance = 1000000}
			},
			lootChance = 35000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 25000000
		},
},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "creaturerangedattack"
}

CreatureTemplates:addCreatureTemplate(de_s_battle_droid, "de_s_battle_droid")
