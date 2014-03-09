event_gungan_general = Creature:new {
	objectName = "@mob/creature_names:gungan_general",
	socialGroup = "gungan",
	pvpFaction = "gungan",
	faction = "gungan",
	level = 150,
	chanceHit = 1,
	damageMin = 350,
	damageMax = 560,
	baseXp = 50730,
	baseHAM = 47700,
	baseHAMmax = 59400,
	armor = 3,
	resists = {25,35,25,-1,50,-1,25,-1,-1},
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

	templates = {"object/mobile/gungan_male.iff"},
	lootGroups = {
	    {
			groups = {
				{group = "gungan_common", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "resource_deed", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		}					
	},
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "",
	attacks = merge(brawlernovice,marksmannovice)
}

CreatureTemplates:addCreatureTemplate(event_gungan_general, "event_gungan_general")
