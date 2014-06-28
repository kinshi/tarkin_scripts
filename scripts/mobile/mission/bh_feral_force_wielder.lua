bh_feral_force_wielder = Creature:new {
	objectName = "@mob/creature_names:feral_force_wilder",
	socialGroup = "force",
	pvpFaction = "",
	faction = "",
	level = 115,
	chanceHit = 1,
	damageMin = 820,
	damageMax = 1350,
	baseXp = 10921,
	baseHAM = 24000,
	baseHAMmax = 30000,
	armor = 0,
	resists = {65,65,70,55,55,70,70,65,55},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_feral_force_wielder.iff"},
	lootGroups = {
		{
			groups = {
				{group = "holocron_dark", chance = 500000},
				{group = "holocron_light", chance = 500000},
				{group = "melee_weapons", chance = 1500000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1500000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "melee_weapons", chance = 4500000},
				{group = "armor_attachments", chance = 2750000},
				{group = "clothing_attachments", chance = 2750000}
			},
			lootChance = 6000000
		},			
	},
	weapons = {"light_jedi_weapons"},
	conversationTemplate = "",
	attacks = merge(swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(bh_feral_force_wielder, "bh_feral_force_wielder")
