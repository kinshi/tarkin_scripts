gcw_rebel_commander = Creature:new {
	objectName = "",
	customName = "Rebel Commander",
	socialGroup = "rebel",
	pvpFaction = "rebel",
	faction = "rebel",
	level = 150,
	chanceHit = 1,
	damageMin = 800,
	damageMax = 1300,
	baseXp = 12336,
	baseHAM = 31200,
	baseHAMmax = 45000,
	armor = 2,
	resists = {90,90,20,45,-1,30,90,-1,-1},
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
	optionsBitmask = 136,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_rebel_commando_zabrak_female_01.iff"},
	lootGroups = {
		{
	        groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 5250000},
				{group = "rifles", chance = 1000000},
				{group = "pistols", chance = 1000000},
                {group = "melee_weapons", chance = 1000000},
                {group = "carbines", chance = 1000000},
				{group = "clothing_attachments", chance = 100000},
				{group = "armor_attachments", chance = 100000},
				{group = "rebel_officer_common", chance = 450000}
			},
			lootChance = 5000000
		}	
	},
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "rebel_recruiter_convotemplate",
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(gcw_rebel_commander, "gcw_rebel_commander")
