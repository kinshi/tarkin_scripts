-- Tarkin Travel System
-- www.tarkin.org 2015
-- Function: Conversation Template for the local shuttle ports on all planets.

-- General Section ==============

tatooineshuttlepilot_template = ConvoTemplate:new {
	initialScreen = "tatooine_start",
	templateType = "Lua",
	luaClassHandler = "tatooineshuttlepilot_convo_handler",
	screens = {}
}

tatooineshuttlepilot_insufficient_funds = ConvoScreen:new {
  id = "insufficient_funds",
  leftDialog = "",
  customDialogText = "Sorry, but you don't have enough credits with you to pay for a trip. Head on over to the bank, I'll be here when ya get back!",
  stopConversation = "true",
  options = { 
  }
}
tatooineshuttlepilot_template:addScreen(tatooineshuttlepilot_insufficient_funds);


-- Tatooine ================

tatooineshuttlepilot_tatooine_start = ConvoScreen:new {
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
tatooineshuttlepilot_template:addScreen(tatooineshuttlepilot_tatooine_start);

tatooineshuttlepilot_mos_eisley = ConvoScreen:new {
  id = "mos_eisley",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
tatooineshuttlepilot_template:addScreen(tatooineshuttlepilot_mos_eisley);

tatooineshuttlepilot_bestine = ConvoScreen:new {
  id = "bestine",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
tatooineshuttlepilot_template:addScreen(tatooineshuttlepilot_bestine);

tatooineshuttlepilot_mos_entha_west = ConvoScreen:new {
  id = "mos_entha_west",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
tatooineshuttlepilot_template:addScreen(tatooineshuttlepilot_mos_entha_west);

tatooineshuttlepilot_mos_entha_east = ConvoScreen:new {
  id = "mos_entha_east",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
tatooineshuttlepilot_template:addScreen(tatooineshuttlepilot_mos_entha_east);

tatooineshuttlepilot_anchorhead = ConvoScreen:new {
  id = "anchorhead",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
tatooineshuttlepilot_template:addScreen(tatooineshuttlepilot_anchorhead);

tatooineshuttlepilot_mos_espa_west = ConvoScreen:new {
  id = "mos_espa_west",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
tatooineshuttlepilot_template:addScreen(tatooineshuttlepilot_mos_espa_west);

tatooineshuttlepilot_mos_espa_east = ConvoScreen:new {
  id = "mos_espa_east",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
tatooineshuttlepilot_template:addScreen(tatooineshuttlepilot_mos_espa_east);

tatooineshuttlepilot_wayfar = ConvoScreen:new {
  id = "wayfar",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
tatooineshuttlepilot_template:addScreen(tatooineshuttlepilot_wayfar);

tatooineshuttlepilot_mos_taike = ConvoScreen:new {
  id = "mos_taike",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
tatooineshuttlepilot_template:addScreen(tatooineshuttlepilot_mos_taike);

-- Template Footer
addConversationTemplate("tatooineshuttlepilot_template", tatooineshuttlepilot_template);