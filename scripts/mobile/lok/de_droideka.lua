de_droideka = Creature:new {
	objectName = "@mob/creature_names:droideka",
	socialGroup = "droideka",
	pvpFaction = "",
	faction = "",
	level = 170,
	chanceHit = 10,
	damageMin = 500,
	damageMax = 700,
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
	lootGroups = {
		{
			groups = {
				{group = "droid_loot", chance = 1250000},
				{group = "nyms_common", chance = 2000000},
				{group = "pistols", chance = 1000000},
				{group = "carbines", chance = 1000000},
				{group = "nge_house_mustafar", chance = 625000},
				{group = "nge_house_yt1300", chance = 625000},
				{group = "clothing_attachments", chance = 1250000},
				{group = "av_21_scheme", chance = 1000000},
				{group = "armor_attachments", chance = 1250000}
			},
			lootChance = 3500000
		}
	},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "creaturerangedattack",
}

CreatureTemplates:addCreatureTemplate(de_droideka, "de_droideka")
