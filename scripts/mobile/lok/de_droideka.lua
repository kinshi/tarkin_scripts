de_droideka = Creature:new {
	objectName = "@mob/creature_names:droideka",
	socialGroup = "droideka",
	pvpFaction = "",
	faction = "",
	level = 130,
	chanceHit = 4,
	damageMin = 400,
	damageMax = 550,
	baseXp = 15461,
	baseHAM = 35700,
	baseHAMmax = 41900,
	armor = 2,
	resists = {40,40,40,0,40,-1,40,-1,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/droideka.iff"},
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
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "creaturerangedattack",
}

CreatureTemplates:addCreatureTemplate(de_droideka, "de_droideka")
