visionary_of_lord_nyax = Creature:new {
	objectName = "@mob/creature_names:lord_nyax_visionary",
	socialGroup = "followers_of_lord_nyax",
	pvpFaction = "followers_of_lord_nyax",
	faction = "followers_of_lord_nyax",
	level = 120,
	chanceHit = 1,
	damageMin = 280,
	damageMax = 500,
	baseXp = 10188,
	baseHAM = 45300,
	baseHAMmax = 48100,
	armor = 1,
	resists = {30,45,10,50,40,10,50,-1,-1},
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

	templates = {
		"object/mobile/dressed_patron_chiss_f_01.iff",
		"object/mobile/dressed_patron_chiss_f_01.iff"},
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
			lootChance = 3000000
		}	
	},
	weapons = {"aakuan_pistol_weapons"},
	conversationTemplate = "",
	attacks = {
		{"creatureareaknockdown","knockdownChance=50"},
		{"creatureareacombo",""},
		{"dizzyattack","dizzyChance=50"},
		{"blindattack","blindChance=50"},

	}
}

CreatureTemplates:addCreatureTemplate(visionary_of_lord_nyax, "visionary_of_lord_nyax")
