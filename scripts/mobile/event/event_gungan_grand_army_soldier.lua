event_gungan_grand_army_soldier = Creature:new {
	objectName = "@mob/creature_names:gungan_grand_army_soldier",
	socialGroup = "gungan",
	pvpFaction = "gungan",
	faction = "gungan",
	level = 150,
	chanceHit = 1,
	damageMin = 350,
	damageMax = 560,
	baseXp = 50730,
	baseHAM = 47700,
	baseHAMmax = 59400,
	armor = 2,
	resists = {45,55,35,20,80,20,45,20,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/gungan_male.iff"},
	lootGroups = {
	    {
			groups = {
				{group = "gungan_common", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "resource_deed", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		}					
	},
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "",
	attacks = merge(brawlernovice,marksmannovice)
}

CreatureTemplates:addCreatureTemplate(event_gungan_grand_army_soldier, "event_gungan_grand_army_soldier")
