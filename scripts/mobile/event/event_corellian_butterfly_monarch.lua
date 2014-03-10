event_corellian_butterfly_monarch = Creature:new {
	objectName = "@mob/creature_names:corellian_butterfly_monarch",
	socialGroup = "butterfly",
	pvpFaction = "",
	faction = "",
	level = 150,
	chanceHit = 2.0,
	damageMin = 500,
	damageMax = 700,
	baseXp = 50803,
	baseHAM = 44500,
	baseHAMmax = 65500,
	armor = 3,
	resists = {-1,25,-1,5,5,-1,-1,-1,-1},
	meatType = "meat_insect",
	meatAmount = 270,
	hideType = "hide_scaley",
	hideAmount = 270,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 10,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,
	scale = 2.0,

	templates = {"object/mobile/corellian_butterfly_monarch.iff"},
	lootGroups = {
		{
			groups = {
				{group = "clothing_attachments", chance = 3300000},
				{group = "resource_deed", chance = 3300000},
				{group = "armor_attachments", chance = 3400000}
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","intimidationChance=70"},
		{"knockdownattack","knockdownChance=70"}
	}
}

CreatureTemplates:addCreatureTemplate(event_corellian_butterfly_monarch, "event_corellian_butterfly_monarch")
