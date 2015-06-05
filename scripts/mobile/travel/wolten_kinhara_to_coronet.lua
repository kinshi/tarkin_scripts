wolten_kinhara_to_coronet = Creature:new {
  objectName = "@mob/creature_names:commoner",
  customName = "Wolten Kinhara (Master Pilot)",
  socialGroup = "townsperson",
  pvpFaction = "townsperson",
  faction = "townsperson",
  level = 1,
  chanceHit = 0.25,
  damageMin = 50,
  damageMax = 55,
  baseXp = 113,
  baseHAM = 180,
  baseHAMmax = 220,
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
  pvpBitmask = NONE,
  creatureBitmask = NONE,
  optionsBitmask = 264, --for conversation
  diet = HERBIVORE,

	templates = {"object/mobile/dressed_corsair_captain_hum_m.iff"},
  lootGroups = {},
  weapons = {},
  conversationTemplate = "woltenkinharatocoronet_template",
  attacks = {
  }
}

CreatureTemplates:addCreatureTemplate(wolten_kinhara_to_coronet, "wolten_kinhara_to_coronet")
