event_singing_mountain_clan_councilwoman_easy = Creature:new {
	objectName = "@mob/creature_names:singing_mtn_clan_councilwoman",
	customName = "a Singing Mountain clan councilwoman",
	socialGroup = "mtn_clan",
	pvpFaction = "mtn_clan",
	faction = "mtn_clan",
	level = 200,
	chanceHit = 120,
	damageMin = 1520,
	damageMax = 1800,
	baseXp = 50000,
	baseHAM = 201000,
	baseHAMmax = 252000,
	armor = 3,
	resists = {85,25,25,85,85,85,85,85,-1},
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

	templates = {"object/mobile/dressed_dathomir_sing_mt_clan_councilwoman.iff"},
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
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(event_singing_mountain_clan_councilwoman_easy, "event_singing_mountain_clan_councilwoman_easy")
