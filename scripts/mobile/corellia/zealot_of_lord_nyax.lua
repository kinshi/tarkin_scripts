zealot_of_lord_nyax = Creature:new {
	objectName = "@mob/creature_names:lord_nyax_zealot",
	socialGroup = "followers_of_lord_nyax",
	faction = "followers_of_lord_nyax",
	level = 110,
	chanceHit = 0.90,
	damageMin = 250,
	damageMax = 450,
	baseXp = 9637,
	baseHAM = 40100,
	baseHAMmax = 45000,
	armor = 1,
	resists = {30,50,20,60,-1,15,40,10,-1},
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

	templates = {"object/mobile/dressed_force_sensitive_crypt_crawler.iff"},
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
	weapons = {"aakuan_assassin_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/fancy",
	attacks = merge(riflemanmaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(zealot_of_lord_nyax, "zealot_of_lord_nyax")
