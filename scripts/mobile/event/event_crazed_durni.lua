event_crazed_durni = Creature:new {
	objectName = "@mob/creature_names:crazed_durni",
	socialGroup = "self",
	pvpFaction = "",
	faction = "",
	level = 150,
	chanceHit = 2.0,
	damageMin = 500,
	damageMax = 900,
	baseXp = 50092,
	baseHAM = 700675,
	baseHAMmax = 150825,
	armor = 3,
	resists = {20,20,30,-1,-1,80,80,80,-1},
	meatType = "meat_herbivore",
	meatAmount = 500,
	hideType = "hide_wooly",
	hideAmount = 400,
	boneType = "bone_mammal",
	boneAmount = 300,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = NONE,
	optionsBitmask = 128,
	diet = CARNIVORE,
	scale = 3.0,

	templates = {"object/mobile/crazed_durni.iff"},
	controlDeviceTemplate = "object/intangible/pet/durni_hue.iff",
	lootGroups = {
	  {
			groups = {
                                {group = "clothing_attachments", chance = 1600000},
				{group = "armor_attachments", chance = 1600000},
				{group = "resource_dead", chance = 2000000}
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack","postureDownChance=70"}
	}
}

CreatureTemplates:addCreatureTemplate(event_crazed_durni, "event_crazed_durni")
