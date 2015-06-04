-- Tarkin Travel System
-- www.tarkin.org 2015
-- Function: Conversation Template for the local shuttle ports on all planets.

-- General Section ==============

planetarytravel_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "planetarytravel_convo_handler",
	screens = {}
}

planetarytravel_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "We really should not be having this conversation...",
	stopConversation = "false",
	options = {
	 {"I agree!", "deny"},
	}
}
planetarytravel_template:addScreen(planetarytravel_first_screen);

planetarytravel_insufficient_funds = ConvoScreen:new {
  id = "insufficient_funds",
  leftDialog = "",
  customDialogText = "Sorry, but you don't have enough credits with you to pay for a trip. Head on over to the bank, I'll be here when ya get back!",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_insufficient_funds);

planetarytravel_deny = ConvoScreen:new {
  id = "deny",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_deny);


-- Naboo =========================

planetarytravel_naboo_start = ConvoScreen:new {
  id = "naboo_start",
  leftDialog = "",
  customDialogText = "Howdy, traveler. Where on Naboo would you like to go today? All destinations cost 250 credits.",
  stopConversation = "false",
  options = {
    {"Theed East", "theed_east"},
    {"Theed Palace", "theed_palace"},
    {"Theed West", "theed_west"},
    {"Lake Retreat", "lake_retreat"},
    {"Keren West", "keren_west"},
    {"Keren East", "keren_east"},
    {"Kaadara", "kaadara"},
    {"Deeja Peak", "deeja_peak"},
    {"Moenia", "moenia"},
  }
}
planetarytravel_template:addScreen(planetarytravel_naboo_start);

planetarytravel_theed_east = ConvoScreen:new {
  id = "theed_east",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_theed_east);

planetarytravel_theed_palace = ConvoScreen:new {
  id = "theed_palace",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_theed_palace);

planetarytravel_theed_west = ConvoScreen:new {
	id = "theed_west",
	leftDialog = "",
	stopConversation = "true",
	options = {	
	}
}
planetarytravel_template:addScreen(planetarytravel_theed_west);

planetarytravel_lake_retreat = ConvoScreen:new {
  id = "lake_retreat",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_lake_retreat);

planetarytravel_keren_west = ConvoScreen:new {
  id = "keren_west",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_keren_west);

planetarytravel_keren_east = ConvoScreen:new {
  id = "keren_east",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_keren_east);

planetarytravel_kaadara = ConvoScreen:new {
  id = "kaadara",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_kaadara);

planetarytravel_deeja_peak = ConvoScreen:new {
  id = "deeja_peak",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_deeja_peak);

planetarytravel_moenia = ConvoScreen:new {
  id = "moenia",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_moenia);


-- Corellia =======================

planetarytravel_corellia_start = ConvoScreen:new {
  id = "corellia_start",
  leftDialog = "",
  customDialogText = "Howdy, traveler. Where on Corellia would you like to go today? All destinations cost 250 credits.",
  stopConversation = "false",
  options = {
    {"Coronet West", "coronet_west"},
    {"Coronet East", "coronet_east"},
    {"Kor Vella", "kor_vella"},
    {"Tyrena West", "tyrena_west"},
    {"Tyrena East", "tyrena_east"},
    {"Doaba Guerfel", "doaba_guerfel"},
    {"Bela Vistal North", "bela_vistal_north"},
    {"Bela Vistal South", "bela_vistal_south"},
    {"Vreni Island", "vreni_isaland"},
  }
}
planetarytravel_template:addScreen(planetarytravel_corellia_start);

planetarytravel_coronet_west = ConvoScreen:new {
  id = "coronet_west",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_coronet_west);

planetarytravel_coronet_east = ConvoScreen:new {
  id = "coronet_east",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_coronet_east);

planetarytravel_kor_vella = ConvoScreen:new {
  id = "kor_vella",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_kor_vella);

planetarytravel_tyrena_west = ConvoScreen:new {
  id = "tyrena_west",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_tyrena_west);

planetarytravel_tyrena_east = ConvoScreen:new {
  id = "tyrena_east",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_tyrena_east);

planetarytravel_doaba_guerfel = ConvoScreen:new {
  id = "doaba_guerfel",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_doaba_guerfel);

planetarytravel_bela_vistal_north = ConvoScreen:new {
  id = "bela_vistal_north",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_bela_vistal_north);

planetarytravel_bela_vistal_south = ConvoScreen:new {
  id = "bela_vistal_south",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_bela_vistal_south);

planetarytravel_vreni_isaland = ConvoScreen:new {
  id = "vreni_isaland",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_vreni_isaland);


-- Tatooine ================

planetarytravel_tatooine_start = ConvoScreen:new {
  id = "tatooine_start",
  leftDialog = "",
  customDialogText = "Howdy, traveler. Where on Tatooine would you like to go today? All destinations cost 250 credits.",
  stopConversation = "false",
  options = {
    {"Mos Eisley", "mos_eisley"},
    {"Bestine", "bestine"},
    {"Mos Entha West", "mos_entha_west"},
    {"Mos Entha East", "mos_entha_east"},
    {"Anchorhead", "anchorhead"},
    {"Mos Espa West", "mos_espa_west"},
    {"Mos Espa East", "mos_espa_east"},
    {"Wayfar", "wayfar"},
    {"Mos Taike", "mos_taike"},
  }
}
planetarytravel_template:addScreen(planetarytravel_tatooine_start);

planetarytravel_mos_eisley = ConvoScreen:new {
  id = "mos_eisley",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_mos_eisley);

planetarytravel_bestine = ConvoScreen:new {
  id = "bestine",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_bestine);

planetarytravel_mos_entha_west = ConvoScreen:new {
  id = "mos_entha_west",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_mos_entha_west);

planetarytravel_mos_entha_east = ConvoScreen:new {
  id = "mos_entha_east",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_mos_entha_east);

planetarytravel_anchorhead = ConvoScreen:new {
  id = "anchorhead",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_anchorhead);

planetarytravel_mos_espa_west = ConvoScreen:new {
  id = "mos_espa_west",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_mos_espa_west);

planetarytravel_mos_espa_east = ConvoScreen:new {
  id = "mos_espa_east",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_mos_espa_east);

planetarytravel_wayfar = ConvoScreen:new {
  id = "wayfar",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_wayfar);

planetarytravel_mos_taike = ConvoScreen:new {
  id = "mos_taike",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_mos_taike);


-- Talus ======================

planetarytravel_talus_start = ConvoScreen:new {
  id = "talus_start",
  leftDialog = "",
  customDialogText = "Howdy, traveler. Where on Talus would you like to go today? All destinations cost 250 credits.",
  stopConversation = "false",
  options = {
    {"Dearic", "dearic"},
    {"Nashal", "nashal"},
  }
}
planetarytravel_template:addScreen(planetarytravel_talus_start);

planetarytravel_dearic = ConvoScreen:new {
  id = "dearic",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_dearic);

planetarytravel_nashal = ConvoScreen:new {
  id = "nashal",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_nashal);


-- Rori ======================

planetarytravel_rori_start = ConvoScreen:new {
  id = "rori_start",
  leftDialog = "",
  customDialogText = "Howdy, traveler. Where on Rori would you like to go today? All destinations cost 250 credits.",
  stopConversation = "false",
  options = {
    {"Restus", "restuss"},
    {"Narmle", "narmle"},
  }
}
planetarytravel_template:addScreen(planetarytravel_rori_start);

planetarytravel_restuss = ConvoScreen:new {
  id = "restuss",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_restuss);

planetarytravel_narmle = ConvoScreen:new {
  id = "narmle",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_narmle);


-- Dantooine ======================

planetarytravel_dantooine_start = ConvoScreen:new {
  id = "dantooine_start",
  leftDialog = "",
  customDialogText = "Howdy, traveler. Where on Dantooine would you like to go today? All destinations cost 250 credits.",
  stopConversation = "false",
  options = {
    {"Pirate Outpost", "agro"},
    {"Mining Outpost", "mining"},
  }
}
planetarytravel_template:addScreen(planetarytravel_dantooine_start);

planetarytravel_agro = ConvoScreen:new {
  id = "agro",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_agro);

planetarytravel_mining = ConvoScreen:new {
  id = "mining",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_mining);


-- Dathomir ======================

planetarytravel_dathomir_start = ConvoScreen:new {
  id = "dathomir_start",
  leftDialog = "",
  customDialogText = "Howdy, traveler. Where on Dathomir would you like to go today? All destinations cost 250 credits.",
  stopConversation = "false",
  options = {
    {"Science Outpost", "science"},
    {"Trade Outpost", "trade"},
  }
}
planetarytravel_template:addScreen(planetarytravel_dathomir_start);

planetarytravel_science = ConvoScreen:new {
  id = "science",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_science);

planetarytravel_trade = ConvoScreen:new {
  id = "trade",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_trade);


-- Endor ======================

planetarytravel_endor_start = ConvoScreen:new {
  id = "endor_start",
  leftDialog = "",
  customDialogText = "Howdy, traveler. Where on Endor would you like to go today? All destinations cost 250 credits.",
  stopConversation = "false",
  options = {
    {"Smuggler Outpost", "smuggler"},
    {"Research Outpost", "research"},
  }
}
planetarytravel_template:addScreen(planetarytravel_endor_start);

planetarytravel_smuggler = ConvoScreen:new {
  id = "smuggler",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_smuggler);

planetarytravel_research = ConvoScreen:new {
  id = "research",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_research);


-- Yavin4 ======================

planetarytravel_yavin4_start = ConvoScreen:new {
  id = "yavin4_start",
  leftDialog = "",
  customDialogText = "Howdy, traveler. Where on Yavin4 would you like to go today? All destinations cost 250 credits.",
  stopConversation = "false",
  options = {
    {"Labor Outpost", "labor"},
    {"Mining Outpost", "mining_yavin4"},
  }
}
planetarytravel_template:addScreen(planetarytravel_yavin4_start);

planetarytravel_labor = ConvoScreen:new {
  id = "labor",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_labor);

planetarytravel_mining_yavin4 = ConvoScreen:new {
  id = "mining_yavin4",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_mining_yavin4);

-- Lok ======================
-- Lok doesn't actually have any public shuttle ports. This is here for future convenience!

planetarytravel_lok_start = ConvoScreen:new {
  id = "lok_start",
  leftDialog = "",
  customDialogText = "Howdy, traveler. Where on Lok would you like to go today? All destinations cost 250 credits.",
  stopConversation = "false",
  options = {
    {"Labor Outpost", "labor"},
    {"Mining Outpost", "mining"},
  }
}
planetarytravel_template:addScreen(planetarytravel_lok_start);

planetarytravel_labor_lok = ConvoScreen:new {
  id = "labor_lok",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_labor_lok);

planetarytravel_mining_lok = ConvoScreen:new {
  id = "mining_lok",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_mining_lok);

-- Template Footer
addConversationTemplate("planetarytravel_template", planetarytravel_template);