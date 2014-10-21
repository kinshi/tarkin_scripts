mando_bounty_hunter = Creature:new {
       objectName = "@mob/creature_names:commoner",
       customName = "A Bounty Hunter",
       socialGroup = "townsperson",
       pvpFaction = "",
       faction = "",
       level = 7,
	chanceHit = 0.26,
	damageMin = 55,
	damageMax = 65,
	baseXp = 187,
	baseHAM = 270,
	baseHAMmax = 330,
       armor = 0,
       resists = {0,0,0,0,0,0,0,-1,-1},
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

       templates = {
		"object/mobile/dressed_black_sun_assassin.iff",
		"object/mobile/dressed_black_sun_guard.iff",
		"object/mobile/dressed_black_sun_henchman.iff",
		"object/mobile/dressed_black_sun_thug.iff"},
       lootGroups = {},
       weapons = {},
       conversationTemplate = "",
       attacks = {
       }
    }

CreatureTemplates:addCreatureTemplate(mando_bounty_hunter, "mando_bounty_hunter")

