death_watch_s_battle_droid_alt = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_super_battle_droid",
	socialGroup = "death_watch",
	faction = "",
	level = 175,
	chanceHit = 9,
	damageMin = 450,
	damageMax = 650,
	baseXp = 19000,
	baseHAM = 100000,
	baseHAMmax = 100000,
	armor = 2,
	resists = {55,65,70,30,70,5,10,55,30},
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

	templates = {
		"object/mobile/death_watch_s_battle_droid.iff",
		"object/mobile/death_watch_s_battle_droid_02.iff",
		"object/mobile/death_watch_s_battle_droid_03.iff"},
	lootGroups = {
		{
			groups = {
				{group = "death_watch_bunker_commoners", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 4000000
		},
		{
			groups = {
				{group = "av_21_pp", chance = 2000000},
				{group = "av_21_scheme", chance = 8000000}
			},
			lootChance = 1500000
		},
},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "creaturerangedattack"
}

CreatureTemplates:addCreatureTemplate(death_watch_s_battle_droid_alt, "death_watch_s_battle_droid_alt")
