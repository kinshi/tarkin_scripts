event_tusken_witch_doctor = Creature:new {
	objectName = "@mob/creature_names:tusken_witch_doctor",
	customName = "a Tusken Witch Doctor",
	socialGroup = "tusken_raider",
	pvpFaction = "tusken_raider",
	faction = "tusken_raider",
	level = 202,
	chanceHit = 80,
	damageMin = 900,
	damageMax = 1600,
	baseXp = 50000,
	baseHAM = 120000,
	baseHAMmax = 160000,
	armor = 3,
	resists = {55,85,25,90,0,20,35,70,-1},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/tusken_raider.iff"},
	lootGroups = {
	 {
	        groups = {
				{group = "armor_attachments", chance = 3300000},
				{group = "clothing_attachments", chance = 3300000},
				{group = "resource_deed", chance = 3400000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlernovice,marksmannovice)
}

CreatureTemplates:addCreatureTemplate(event_tusken_witch_doctor, "event_tusken_witch_doctor")
