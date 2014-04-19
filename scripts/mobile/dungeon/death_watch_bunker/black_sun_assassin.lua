black_sun_assassin = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_blksun_assassin",
	socialGroup = "death_watch",
	pvpFaction = "death_watch",
	faction = "",
	level = 107,
	chanceHit = 17.5,
	damageMin = 670,
	damageMax = 1050,
	baseXp = 10081,
	baseHAM = 29000,
	baseHAMmax = 36000,
	armor = 2,
	resists = {55,55,70,45,75,80,55,45,-1},
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
	creatureBitmask = KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_black_sun_assassin.iff"},
	lootGroups = {
         {
			groups = {
				{group = "pistols", chance = 1250000},
				{group = "rifles", chance = 1250000},
				{group = "carbines", chance = 1250000},
				{group = "jetpack_parts", chance = 1000000},				
				{group = "bounty_hunter_armor", chance = 3250000},
				{group = "nge_house_commando", chance = 1500000},
				{group = "jetpack_base", chance = 500000}
			},
			lootChance = 3500000
		}	
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(black_sun_assassin, "black_sun_assassin")
