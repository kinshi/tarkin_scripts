event_reclusive_gurk_king = Creature:new {
	objectName = "@mob/creature_names:recluse_gurk_king",
	customName = "a reclusive gurk king",
	socialGroup = "gurk",
	pvpFaction = "",
	faction = "",
	level = 145,
	chanceHit = 2,
	damageMin = 450,
	damageMax = 650,
	baseXp = 50000,
	baseHAM = 39700,
	baseHAMmax = 51900,
	armor = 2,
	resists = {40,20,40,-1,40,40,-1,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 200,
	hideType = "hide_leathery",
	hideAmount = 200,
	boneType = "bone_mammal",
	boneAmount = 200,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,
	scale = 1.3,

	templates = {"object/mobile/recluse_gurk_king.iff"},
	lootGroups = {
	 {
	        groups = {
				{group = "gurk_king_common", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "resource_deed", chance = 2500000}
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack","blindChance=75"},
		{"posturedownattack","postureDownChance=60"}
	}
}

CreatureTemplates:addCreatureTemplate(event_reclusive_gurk_king, "event_reclusive_gurk_king")
