event_cas_vankoo = Creature:new {
	objectName = "@mob/creature_names:cas_vankoo",
	customName = "Cas Vankoo",
	socialGroup = "kimogila",
	pvpFaction = "bandit",
	faction = "bandit",
	level = 250,
	chanceHit = 34,
	damageMin = 900,
	damageMax = 1460,
	baseXp = 50000,
	baseHAM = 150000,
	baseHAMmax = 189000,
	armor = 3,
	resists = {75,75,0,10,10,10,10,0,0},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,
	scale = 1.2,

	templates = {"object/mobile/dressed_lok_cas_vankoo.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 2000000},
				{group = "crystals_quality", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "resource_deed", chance = 2000000},
				{group = "armor_attachments", chance = 2000000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"cas_vankoo_weapons"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(event_cas_vankoo, "event_cas_vankoo")
