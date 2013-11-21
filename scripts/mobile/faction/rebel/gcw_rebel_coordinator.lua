gcw_rebel_coordinator = Creature:new {
	objectName = "",
	customName = "Rebel Coordinator",
	socialGroup = "rebel",
	pvpFaction = "rebel",
	faction = "rebel",
	level = 80,
	chanceHit = 0.47,
	damageMin = 208,
	damageMax = 221,
	baseXp = 3130,
	baseHAM = 2400,
	baseHAMmax = 8000,
	armor = 3,
	resists = {75,90,40,60,50,50,50,20,-1},
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

	templates = {"object/mobile/dressed_rebel_commando_zabrak_female_01.iff"},
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
			lootChance = 3200000
		}	
	},
	weapons = {"rebel_weapons_light"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(gcw_rebel_coordinator, "gcw_rebel_coordinator")
