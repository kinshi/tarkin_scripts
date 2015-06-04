-- Tarkin Travel System
-- www.tarkin.org 2015
-- Function: Conversation Template for the local shuttle ports on all planets.

-- General Section ==============

talusshuttlepilot_template = ConvoTemplate:new {
	initialScreen = "talus_start",
	templateType = "Lua",
	luaClassHandler = "talusshuttlepilot_convo_handler",
	screens = {}
}

talusshuttlepilot_insufficient_funds = ConvoScreen:new {
  id = "insufficient_funds",
  leftDialog = "",
  customDialogText = "Sorry, but you don't have enough credits with you to pay for a trip. Head on over to the bank, I'll be here when ya get back!",
  stopConversation = "true",
  options = { 
  }
}
talusshuttlepilot_template:addScreen(talusshuttlepilot_insufficient_funds);


-- Talus ======================

talusshuttlepilot_talus_start = ConvoScreen:new {
  id = "talus_start",
  leftDialog = "",
  customDialogText = "Howdy, traveler. Where on Talus would you like to go today? All destinations cost 250 credits.",
  stopConversation = "false",
  options = {
    {"Dearic", "dearic"},
    {"Nashal", "nashal"},
  }
}
talusshuttlepilot_template:addScreen(talusshuttlepilot_talus_start);

talusshuttlepilot_dearic = ConvoScreen:new {
  id = "dearic",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
talusshuttlepilot_template:addScreen(talusshuttlepilot_dearic);

talusshuttlepilot_nashal = ConvoScreen:new {
  id = "nashal",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
talusshuttlepilot_template:addScreen(talusshuttlepilot_nashal);


-- Template Footer
addConversationTemplate("talusshuttlepilot_template", talusshuttlepilot_template);