event_nuna = Creature:new {
	objectName = "@mob/creature_names:nuna",
	socialGroup = "self",
	pvpFaction = "",
	faction = "",
	level = 150,
	chanceHit = 2.0,
	damageMin = 500,
	damageMax = 900,
	baseXp = 50092,
	baseHAM = 70675,
	baseHAMmax = 150825,
	armor = 3,
	resists = {20,20,30,-1,-1,80,80,80,-1},
	meatType = "meat_avian",
	meatAmount = 300,
	hideType = "hide_leathery",
	hideAmount = 400,
	boneType = "bone_avian",
	boneAmount = 200,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = 128,
	diet = CARNIVORE,
	scale = 4.0,

	templates = {"object/mobile/nuna.iff"},
	controlDeviceTemplate = "object/intangible/pet/nuna_hue.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(event_nuna, "event_nuna")
