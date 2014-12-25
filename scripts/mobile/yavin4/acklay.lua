acklay = Creature:new {
	objectName = "@mob/creature_names:",
	customName = "Acklay",
	socialGroup = "kliknik",
	pvpFaction = "",
	faction = "",
	level = 157,
	chanceHit = 92.5,
	damageMin = 935,
	damageMax = 1580,
	baseXp = 14884,
	baseHAM = 96000,
	baseHAMmax = 118000,
	armor = 3,
	resists = {130,145,155,155,145,30,30,30,-1},
	meatType = "",
	meatAmount = 100,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 100,
	milk = 0,
	tamingChance = 0,
	ferocity = 25,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,
	Scale = 1.3,

	templates = {"object/mobile/acklay_hue.iff"},
	lootGroups = {
		{
			groups = {
				{group = "acklay", chance = 10000000}
			},
			lootChance = 8000000
		},
		{
			groups = {
				{group = "clothing_attachment", chance = 5000000},
				{group = "armor_attachment", chance = 5000000}
			},
			lootChance = 4000000
		},
	},
	weapons = {"creature_spit_large_yellow"},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo",""},
		{"posturedownattack","postureDownChance=50"}
	}
}

CreatureTemplates:addCreatureTemplate(acklay, "acklay")
