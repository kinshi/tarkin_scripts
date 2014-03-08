servant_of_lord_nyax = Creature:new {
	objectName = "@mob/creature_names:lord_nyax_servant",
	socialGroup = "followers_of_lord_nyax",
	pvpFaction = "followers_of_lord_nyax",
	faction = "followers_of_lord_nyax",
	level = 60,
	chanceHit = 0.6,
	damageMin = 250,
	damageMax = 265,
	baseXp = 7235,
	baseHAM = 30405,
	baseHAMmax = 31495,
	armor = 1,
	resists = {40,20,40,20,50,10,-1,-1,-1},
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

	templates = {
		"object/mobile/dressed_criminal_organized_human_male_01.iff",
		"object/mobile/dressed_emperors_hand_zabrak_male_01.iff"},
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
			lootChance = 2500000
		}
	},
	weapons = {"aakuan_polearm_weapons"},
	conversationTemplate = "",
	attacks = {
		{"creatureareaknockdown","knockdownChance=20"},
		{"creatureareacombo",""},
		{"dizzyattack","dizzyChance=20"},
		{"blindattack","blindChance=20"},

	}
}

CreatureTemplates:addCreatureTemplate(servant_of_lord_nyax, "servant_of_lord_nyax")
