gcw_specops_agent = Creature:new {
	objectName = "",
	customName = "SpecOps Agent",
	socialGroup = "rebel",
	pvpFaction = "rebel",
	faction = "rebel",
	level = 24,
	chanceHit = 0.53,
	damageMin = 299,
	damageMax = 312,
	baseXp = 4543,
	baseHAM = 8840,
	baseHAMmax = 13300,
	armor = 3,
	resists = {30,30,5,20,10,-1,15,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_rebel_specforce_guerilla_human_male_01.iff",
	             "object/mobile/dressed_rebel_specforce_guerilla_moncal_male_01.iff",
	             "object/mobile/dressed_rebel_specforce_guerrilla_human_female_01.iff",
	             "object/mobile/dressed_rebel_specforce_guerrilla_rodian_female_01.iff",
	             "object/mobile/dressed_rebel_specforce_guerrilla_rodian_male_01.iff",
	             "object/mobile/dressed_rebel_specforce_guerrilla_zabrak_female_01.iff",
	},
lootGroups = {
		{
	        groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 5700000},
				{group = "rifles", chance = 1000000},
				{group = "pistols", chance = 1000000},
                {group = "melee_weapons", chance = 1000000},
                {group = "carbines", chance = 1000000},
				{group = "clothing_attachments", chance = 100000},
				{group = "armor_attachments", chance = 100000}
			},
			lootChance = 5000000
		}	
	},
	weapons = {"rebel_weapons_light"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(gcw_specops_agent, "gcw_specops_agent")
