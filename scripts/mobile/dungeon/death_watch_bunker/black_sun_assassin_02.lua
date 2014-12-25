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
	baseXp = 25057,
	baseHAM = 36000,
	baseHAMmax = 49000,
	armor = 3,
	resists = {60,60,75,55,80,85,60,50,55},
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
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "blacksun_rare", chance = 1000000},
				{group = "jetpack_parts", chance = 1000000},				
				{group = "bounty_hunter_schemes", chance = 3000000}
			},
			lootChance = 6500000
		},
		{
			groups = {
				{group = "deed_voucher", chance = 750000},
				{group = "clothing_attachment", chance = 4500000},
				{group = "armor_attachment", chance = 4500000},
				{group = "jetpack_base", chance = 250000}
			},
			lootChance = 2500000
		},	
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,bountyhuntermaster)
}

CreatureTemplates:addCreatureTemplate(black_sun_assassin_02, "black_sun_assassin_02")
