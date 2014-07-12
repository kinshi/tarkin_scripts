minion_of_lord_nyax = Creature:new {
	objectName = "@mob/creature_names:lord_nyax_minion",
	socialGroup = "followers_of_lord_nyax",
	pvpFaction = "followers_of_lord_nyax",
	faction = "followers_of_lord_nyax",
	level = 60,
	chanceHit = 0.6,
	damageMin = 230,
	damageMax = 260,
	baseXp = 7014,
	baseHAM = 30000,
	baseHAMmax = 31400,
	armor = 1,
	resists = {30,30,30,30,30,30,30,-1,-1},
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
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_criminal_smuggler_human_male_01.iff"},
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
			lootChance = 2500000
		}
	},
	weapons = {"nyax_fanatic_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster, swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(minion_of_lord_nyax, "minion_of_lord_nyax")
