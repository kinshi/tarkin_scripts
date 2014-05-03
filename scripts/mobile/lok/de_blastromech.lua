de_blastromech = Creature:new {
	objectName = "@mob/creature_names:blastromech",
	socialGroup = "self",
	pvpFaction = "",
	faction = "",
	level = 90,
	chanceHit = 1.9,
	damageMin = 350,
	damageMax = 450,
	baseXp = 11000,
	baseHAM = 25000,
	baseHAMmax = 55000,
	armor = 1,
	resists = {35,55,95,55,95,20,35,65,-1},
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

	templates = {"object/mobile/blastromech.iff"},
	lootGroups = {
		{
			groups = {
			
				{group = "droid_loot", chance = 2000000},
				{group = "nyms_common", chance = 2500000},
				{group = "pistols", chance = 1000000},
				{group = "carbines", chance = 1000000},
				{group = "nge_house_mustafar", chance = 250000},
				{group = "nge_house_yt1300", chance = 250000},
				{group = "clothing_attachments", chance = 1500000},
				{group = "armor_attachments", chance = 1500000}
			},
			lootChance = 3500000
		}
},
	conversationTemplate = "",
	defaultAttack = "creaturerangedattack",
	defaultWeapon = "object/weapon/ranged/droid/droid_astromech_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(de_blastromech, "de_blastromech")
