event_gungan_leader = Creature:new {
	objectName = "",
	customName = "Gungan Leader",
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
	armor = 1,
	resists = {95,95,95,90,90,90,95,90,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + AGGRESSIVE + ENEMY,
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

CreatureTemplates:addCreatureTemplate(event_gungan_leader, "event_gungan_leader")
