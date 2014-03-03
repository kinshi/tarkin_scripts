aakuan_sentinel = Creature:new {
	objectName = "@mob/creature_names:aakuan_sentinal",
	socialGroup = "aakuans",
	pvpFaction = "aakuans",
	faction = "aakuans",
	level = 35,
	chanceHit = 0.37,
	damageMin = 170,
	damageMax = 180,
	baseXp = 5257,
	baseHAM = 24100,
	baseHAMmax = 30000,
	armor = 1,
	resists = {30,30,30,20,40,50,10,50,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_aakuan_sentinal_rodian_female_01.iff",
		"object/mobile/dressed_aakuan_sentinal_rodian_male_01.iff"},
	lootGroups = {
	    {
		    groups = {
				{group = "junk", chance = 3600000},
				{group = "aakuan_common", chance = 2300000},
				{group = "armor_attachments", chance = 800000},
				{group = "clothing_attachments", chance = 800000},
				{group = "rifles", chance = 900000},
				{group = "carbines", chance = 900000},
				{group = "pistols", chance = 900000}				
			},
		    lootChance = 3000000
		}	
	},
	weapons = {"aakuan_carbine_weapons"},
	conversationTemplate = "",
	attacks = carbineermaster
}

CreatureTemplates:addCreatureTemplate(aakuan_sentinel, "aakuan_sentinel")
