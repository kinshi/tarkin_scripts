event_juvenile_canyon_krayt_dragon = Creature:new {
	objectName = "@mob/creature_names:juvenile_canyon_krayt",
	customName = "a juvenile canyon krayt dragon",
	socialGroup = "Krayt",
	pvpFaction = "",
	faction = "",
	level = 122,
	chanceHit = 40,
	damageMin = 745,
	damageMax = 1200,
	baseXp = 50000,
	baseHAM = 54000,
	baseHAMmax = 64000,
	armor = 3,
	resists = {50,50,50,50,10,50,50,50,-1},
	meatType = "meat_carnivore",
	meatAmount = 3000,
	hideType = "hide_bristley",
	hideAmount = 3000,
	boneType = "bone_mammal",
	boneAmount = 2000,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,

	templates = {"object/mobile/juvenile_canyon_krayt.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaattack",""},
		{"posturedownattack","postureDownChance=50"}
	}
}

CreatureTemplates:addCreatureTemplate(event_juvenile_canyon_krayt_dragon, "event_juvenile_canyon_krayt_dragon")
