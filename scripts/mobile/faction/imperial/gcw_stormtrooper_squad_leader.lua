gcw_stormtrooper_squad_leader = Creature:new {
	objectName = "",
	customName = "Stormtrooper Squad Leader",
	socialGroup = "imperial",
	pvpFaction = "imperial",
	faction = "imperial",
	level = 70,
	chanceHit = 0.56,
	damageMin = 338,
	damageMax = 351,
	baseXp = 2822,
	baseHAM = 10530,
	baseHAMmax = 17000,
	armor = 3,
	resists = {25,25,25,-1,40,-1,40,-1,-1},
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

	templates = {"object/mobile/dressed_stormtrooper_squad_leader_white_white.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 6500000},
				{group = "rifles", chance = 550000},
				{group = "pistols", chance = 550000},
                		{group = "melee_weapons", chance = 550000},
                		{group = "carbines", chance = 550000},
				{group = "clothing_attachments", chance = 250000},
				{group = "armor_attachments", chance = 250000},
				{group = "stormtrooper_common", chance = 700000}
			},
			lootChance = 2800000
		}						
	},
	weapons = {"stormtrooper_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(gcw_stormtrooper_squad_leader, "gcw_stormtrooper_squad_leader")
