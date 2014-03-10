event_graul_mangler = Creature:new {
	objectName = "@mob/creature_names:graul_mangler",
	socialGroup = "a Ferocious Graul",
	pvpFaction = "",
	faction = "",
	level = 200,
	chanceHit = 2.0,
	damageMin = 800,
	damageMax = 950,
	baseXp = 53915,
	baseHAM = 68800,
	baseHAMmax = 110800,
	armor = 2,
	resists = {40,15,60,60,60,25,-1,25,-1},
	meatType = "meat_carnivore",
	meatAmount = 1950,
	hideType = "hide_leathery",
	hideAmount = 1875,
	boneType = "bone_mammal",
	boneAmount = 1775,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,
	scale = 1.5,

	templates = {"object/mobile/graul_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/graul_hue.iff",
	lootGroups = {
	 {
	        groups = {
				{group = "armor_attachments", chance = 3300000},
				{group = "resource_deed", chance = 3400000},
				{group = "clothing_attachments", chance = 3300000}
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack","blindChance=50"},
		{"posturedownattack","postureDownChance=50"}
	}
}

CreatureTemplates:addCreatureTemplate(event_graul_mangler, "event_graul_mangler")
