janta_horned_kath_hound_stronghold = Creature:new {
	objectName = "",
	customName = "Janta Horned Kath Hound",
	socialGroup = "janta_tribe",
	pvpFaction = "janta_tribe",
	faction = "janta_tribe",
	level = 150,
	chanceHit = 2.0,
	damageMin = 400,
	damageMax = 600,
	baseXp = 19000,
	baseHAM = 44810,
	baseHAMmax = 57990,
	armor = 2,
	resists = {50,20,50,20,70,5,25,50,-1},
	meatType = "meat_carnivore",
	meatAmount = 400,
	hideType = "hide_wooly",
	hideAmount = 300,
	boneType = "bone_mammal",
	boneAmount = 200,
	milk = 0,
	tamingChance = 0,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ENEMY + ATTACKABLE,
	creatureBitmask = PACK + HERD + KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,
	scale = 0.3,

	templates = {"object/mobile/baby_bol.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareableeding",""},
		{"mediumpoison",""},
		{"creatureareacombo",""}
	}
}

CreatureTemplates:addCreatureTemplate(janta_horned_kath_hound_stronghold, "janta_horned_kath_hound_stronghold")
