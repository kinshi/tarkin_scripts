janta_shaman_stronghold = Creature:new {
	objectName = "@mob/creature_names:janta_shaman",
	socialGroup = "janta_tribe",
	pvpFaction = "janta_tribe",
	faction = "janta_tribe",
	level = 150,
	chanceHit = 45.0,
	damageMin = 700,
	damageMax = 1250,
	baseXp = 18424,
	baseHAM = 50000,
	baseHAMmax = 61000,
	armor = 2,
	resists = {-1,70,-1,50,100,100,50,-1,-1},
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
	creatureBitmask = PACK + HERD + KILLER + HEALER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dantari_male.iff",
		"object/mobile/dantari_female.iff"},
	lootGroups = {
	    {
			groups = {
				{group = "janta_common", chance = 2800000},
				{group = "loot_kit_parts", chance = 1000000},
				{group = "clothing_attachments", chance = 1250000},
				{group = "armor_attachments", chance = 1250000},
				{group = "binayre_common", chance = 1000000},
				{group = "forage_medical_component", chance = 1500000},
				{group = "nge_house_hut", chance = 1000000},
				{group = "forage_rare", chance = 200000}
			},
			lootChance = 65000000
		}	
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = tkamaster
}

CreatureTemplates:addCreatureTemplate(janta_shaman_stronghold, "janta_shaman_stronghold")
