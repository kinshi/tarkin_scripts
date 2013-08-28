bh_force_trained_archaist = Creature:new {
	objectName = "@mob/creature_names:force_trained_archaist",
	socialGroup = "force",
	pvpFaction = "",
	faction = "",
	level = 90,
	chanceHit = 0.9,
	damageMin = 640,
	damageMax = 990,
	baseXp = 8593,
	baseHAM = 13000,
	baseHAMmax = 16000,
	armor = 2,
	resists = {45,45,45,45,45,45,45,45,-1},
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

	templates = {"object/mobile/dressed_force_trained_archaist.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 5000000},
				{group = "holocron_dark", chance = 500000},
				{group = "holocron_light", chance = 500000},
				{group = "melee_weapons", chance = 1000000},
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
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(bh_force_trained_archaist, "bh_force_trained_archaist")
