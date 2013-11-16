gcw_specforce_marine = Creature:new {
	objectName = "",
	customName = "Specforce Marine",
	socialGroup = "rebel",
	pvpFaction = "rebel",
	faction = "rebel",
	level = 60,
	chanceHit = 0.8,
	damageMin = 350,
	damageMax = 370,
	baseXp = 3000,
	baseHAM = 5330,
	baseHAMmax = 6500,
	armor = 2,
	resists = {50,20,25,65,65,65,65,-1,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
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
			lootChance = 3500000
		}	
	},
	weapons = {"imperial_weapons_medium"},
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(gcw_specforce_marine, "gcw_specforce_marine")
