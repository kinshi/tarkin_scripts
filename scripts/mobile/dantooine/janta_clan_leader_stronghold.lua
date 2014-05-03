janta_clan_leader_stronghold = Creature:new {
	objectName = "@mob/creature_names:janta_clan_leader",
	socialGroup = "janta_tribe",
	pvpFaction = "janta_tribe",
	faction = "janta_tribe",
	level = 250,
	chanceHit = 200,
	damageMin = 950,
	damageMax = 2000,
	baseXp = 28549,
	baseHAM = 191000,
	baseHAMmax = 271000,
	armor = 3,
	resists = {50,50,-1,40,30,100,30,-1,-1},
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
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dantari_male.iff"},
	lootGroups = {
	    {
			groups = {
				{group = "janta_common", chance = 4000000},
				{group = "loot_kit_parts", chance = 1000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "armor_attachments", chance = 1000000},
				{group = "binayre_common", chance = 800000},
				{group = "forage_medical_component", chance = 1000000},
				{group = "nge_house_hut", chance = 1000000},
				{group = "forage_rare", chance = 200000}
			},
			lootChance = 7500000
		}	
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = tkamaster
}

CreatureTemplates:addCreatureTemplate(janta_clan_leader_stronghold, "janta_clan_leader_stronghold")
