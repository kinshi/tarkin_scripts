gcw_rebel_commando = Creature:new {
	objectName = "",
	customName = "Rebel Commando",
	socialGroup = "rebel",
	pvpFaction = "rebel",
	faction = "rebel",
	level = 75,
	chanceHit = 0.47,
	damageMin = 312,
	damageMax = 325,
	baseXp = 2637,
	baseHAM = 9360,
	baseHAMmax = 11440,
	armor = 3,
	resists = {65,75,45,45,30,30,80,65,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_rebel_commando_human_female_01.iff",
		"object/mobile/dressed_rebel_commando_human_male_01.iff",
		"object/mobile/dressed_rebel_commando_moncal_male_01.iff",
		"object/mobile/dressed_rebel_commando_rodian_male_01.iff",
		"object/mobile/dressed_rebel_commando_twilek_female_01.iff",
		"object/mobile/dressed_rebel_commando_zabrak_female_01.iff"},
	lootGroups = {
		{
	        groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 4600000},
				{group = "rifles", chance = 1200000},
				{group = "pistols", chance = 1200000},
				{group = "melee_weapons", chance = 1200000},
				{group = "carbines", chance = 1200000},
				{group = "clothing_attachments", chance = 250000},
				{group = "armor_attachments", chance = 250000}
			},
			lootChance = 3200000
		}	
	},
	weapons = {"rebel_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(commandomaster)
}

CreatureTemplates:addCreatureTemplate(gcw_rebel_commando, "gcw_rebel_commando")
