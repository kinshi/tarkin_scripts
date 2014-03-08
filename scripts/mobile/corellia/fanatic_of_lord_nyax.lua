fanatic_of_lord_nyax = Creature:new {
	objectName = "@mob/creature_names:lord_nyax_fanatic",
	socialGroup = "followers_of_lord_nyax",
	pvpFaction = "followers_of_lord_nyax",
	faction = "followers_of_lord_nyax",
	level = 100,
	chanceHit = 0.90,
	damageMin = 180,
	damageMax = 375,
	baseXp = 9803,
	baseHAM = 37500,
	baseHAMmax = 40500,
	armor = 1,
	resists = {50,20,5,25,70,-1,25,50,-1},
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

	templates = {"object/mobile/dressed_dark_jedi_human_female_01.iff"},
	lootGroups = {
		{
		groups = {
				{group = "junk", chance = 1500000},
				{group = "melee_two_handed", chance = 2500000},
				{group = "armor_attachments", chance = 1500000},
               			{group = "clothing_attachments", chance = 1500000},
				{group = "force_color_crystal", chance = 1000000},
				{group = "printer_parts", chance = 1500000},
				{group = "holocron_splinters", chance = 500000}
			},
			lootChance = 2700000
		}
	},
	weapons = {"nyax_fanatic_weapons"},
	conversationTemplate = "",
	attacks = merge(swordsmanmaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(fanatic_of_lord_nyax, "fanatic_of_lord_nyax")
