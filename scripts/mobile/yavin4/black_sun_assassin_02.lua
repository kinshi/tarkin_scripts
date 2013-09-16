black_sun_assassin_02 = Creature:new {
--	objectName = "@mob/creature_names:mand_bunker_blksun_assassin",
	customName = "Blacksun Assassin Scout",
	socialGroup = "death_watch",
	pvpFaction = "death_watch",
	faction = "",
	level = 107,
	chanceHit = 25.5,
	damageMin = 1050,
	damageMax = 1675,
	baseXp = 10081,
	baseHAM = 36000,
	baseHAMmax = 49000,
	armor = 3,
	resists = {60,60,75,55,80,85,60,50,-1},
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
				{group = "junk", chance = 3500000},
				{group = "pistols", chance = 1750000},
				{group = "melee_blacksun_razor", chance = 750000},
				{group = "carbines", chance = 2750000},
				{group = "jetpack_parts", chance = 500000},				
				{group = "bounty_hunter_armor_looted", chance = 700000},
				{group = "jetpack_base", chance = 50000},
			},
			lootChance = 4500000
		}	
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,bountyhuntermaster)
}

CreatureTemplates:addCreatureTemplate(black_sun_assassin_02, "black_sun_assassin_02")
