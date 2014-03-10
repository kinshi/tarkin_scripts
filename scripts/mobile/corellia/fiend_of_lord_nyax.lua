fiend_of_lord_nyax = Creature:new {
	objectName = "@mob/creature_names:lord_nyax_fiend",
	socialGroup = "followers_of_lord_nyax",
	pvpFaction = "followers_of_lord_nyax",
	faction = "followers_of_lord_nyax",
	level = 90,
	chanceHit = 0.8,
	damageMin = 305,
	damageMax = 320,
	baseXp = 8005,
	baseHAM = 35000,
	baseHAMmax = 37100,
	armor = 1,
	resists = {50,65,10,50,-1,-1,50,60,-1},
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

	templates = {"object/mobile/dressed_dark_jedi_human_male_01.iff"},
	lootGroups = {
		{
		groups = {
				{group = "junk", chance = 1700000},
				{group = "melee_two_handed", chance = 2700000},
				{group = "armor_attachments", chance = 1000000},
               			{group = "clothing_attachments", chance = 1000000},
				{group = "force_color_crystal", chance = 1200000},
				{group = "printer_parts", chance = 1700000},
				{group = "holocron_splinters", chance = 700000}
			},
			lootChance = 2700000
		}
	},
	weapons = {"aakuan_rifle_weapons"},
	conversationTemplate = "",
	attacks = riflemanmaster
}

CreatureTemplates:addCreatureTemplate(fiend_of_lord_nyax, "fiend_of_lord_nyax")
