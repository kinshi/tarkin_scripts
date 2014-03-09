event_alkhara_champion = Creature:new {
	objectName = "@mob/creature_names:alkhara_champion",
	socialGroup = "alkhara",
	pvpFaction = "alkhara",
	faction = "alkhara",
	level = 250,
	chanceHit = 2.0,
	damageMin = 500,
	damageMax = 900,
	baseXp = 50097,
	baseHAM = 100000,
	baseHAMmax = 150000,
	armor = 3,
	resists = {40,40,60,65,5,60,30,45,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_tatooine_alkhara_champion.iff"},
	lootGroups = {
	    {
		    groups = {
				{group = "clothing_attachments", chance = 3300000},
				{group = "armor_attachments", chance = 3300000},
				{group = "resource_deed", chance = 3400000}			
			},
		    lootChance = 10000000
		}
	},
	weapons = {"pirate_weapons_medium"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(event_alkhara_champion, "event_alkhara_champion")
