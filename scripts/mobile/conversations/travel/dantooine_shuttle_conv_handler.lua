-- Tarkin Travel System
-- www.tarkin.org 2015
-- Function: Conversation Template for the local shuttle ports on all planets.

-- General Section ==============

dantooineshuttlepilot_template = ConvoTemplate:new {
	initialScreen = "dantooine_start",
	templateType = "Lua",
	luaClassHandler = "dantooineshuttlepilot_convo_handler",
	screens = {}
}

dantooineshuttlepilot_insufficient_funds = ConvoScreen:new {
  id = "insufficient_funds",
  leftDialog = "",
  customDialogText = "Sorry, but you don't have enough credits with you to pay for a trip. Head on over to the bank, I'll be here when ya get back!",
  stopConversation = "true",
  options = { 
  }
}
dantooineshuttlepilot_template:addScreen(dantooineshuttlepilot_insufficient_funds);


-- Dantooine ======================

dantooineshuttlepilot_dantooine_start = ConvoScreen:new {
  id = "dantooine_start",
  leftDialog = "",
  customDialogText = "Howdy, traveler. Where on Dantooine would you like to go today? All destinations cost 250 credits.",
  stopConversation = "false",
  options = {
    {"Pirate Outpost", "agro"},
    {"Mining Outpost", "mining_dant"},
  }
}
dantooineshuttlepilot_template:addScreen(dantooineshuttlepilot_dantooine_start);

dantooineshuttlepilot_agro = ConvoScreen:new {
  id = "agro",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
dantooineshuttlepilot_template:addScreen(dantooineshuttlepilot_agro);

dantooineshuttlepilot_mining_dant = ConvoScreen:new {
  id = "mining_dant",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
dantooineshuttlepilot_template:addScreen(dantooineshuttlepilot_mining_dant);


-- Template Footer
addConversationTemplate("dantooineshuttlepilot_template", dantooineshuttlepilot_template);