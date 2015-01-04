disciple_of_lord_nyax = Creature:new {
	objectName = "@mob/creature_names:lord_nyax_disciple",
	socialGroup = "followers_of_lord_nyax",
	pvpFaction = "followers_of_lord_nyax",
	faction = "followers_of_lord_nyax",
	level = 80,
	chanceHit = 0.75,
	damageMin = 250,
	damageMax = 300,
	baseXp = 8102,
	baseHAM = 33400,
	baseHAMmax = 35000,
	armor = 1,
	resists = {5,15,60,5,40,50,5,-1,-1},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_patron_nikto_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 5000000},
				{group = "melee_two_handed", chance = 1500000},
				{group = "force_color_crystal", chance = 2000000},
				{group = "printer_parts", chance = 1500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 5000000},
   		            	{group = "clothing_attachments", chance = 5000000}
			},
			lootChance = 4000000
		},
		{
			groups = {
				{group = "crystals_premium", chance = 5000000},
				{group = "nge_house_bespin", chance = 4000000},
				{group = "holocron_splinters", chance = 1000000}
			},
			lootChance = 1500000
		},
	
	},
	weapons = {"aakuan_2h_weapons"},
	conversationTemplate = "",
	attacks = swordsmanmaster
}

CreatureTemplates:addCreatureTemplate(disciple_of_lord_nyax, "disciple_of_lord_nyax")
