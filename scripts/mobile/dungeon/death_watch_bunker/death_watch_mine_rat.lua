death_watch_mine_rat = Creature:new {
	objectName = "@mob/creature_names:death_watch_quenker",
	socialGroup = "death_watch",
	pvpFaction = "",
	faction = "",
	level = 102,
	chanceHit = 1,
	damageMin = 645,
	damageMax = 1000,
	baseXp = 9708,
	baseHAM = 24000,
	baseHAMmax = 30000,
	armor = 2,
	resists = {155,155,180,135,135,135,80,135,-1},
	meatType = "meat_wild",
	meatAmount = 100,
	hideType = "hide_scaley",
	hideAmount = 100,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,

	templates = {"object/mobile/womp_rat.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","intimidationChance=50"},
		{"knockdownattack","knockdownChance=50"}
	}
}

CreatureTemplates:addCreatureTemplate(death_watch_mine_rat, "death_watch_mine_rat")
