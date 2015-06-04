-- Tarkin Travel System
-- www.tarkin.org 2015
-- Function: Conversation Template for the local shuttle ports on all planets.

-- General Section ==============

rorishuttlepilot_template = ConvoTemplate:new {
	initialScreen = "rori_start",
	templateType = "Lua",
	luaClassHandler = "rorishuttlepilot_convo_handler",
	screens = {}
}

rorishuttlepilot_insufficient_funds = ConvoScreen:new {
  id = "insufficient_funds",
  leftDialog = "",
  customDialogText = "Sorry, but you don't have enough credits with you to pay for a trip. Head on over to the bank, I'll be here when ya get back!",
  stopConversation = "true",
  options = { 
  }
}
rorishuttlepilot_template:addScreen(rorishuttlepilot_insufficient_funds);

-- Rori ======================

rorishuttlepilot_rori_start = ConvoScreen:new {
  id = "rori_start",
  leftDialog = "",
  customDialogText = "Howdy, traveler. Where on Rori would you like to go today? All destinations cost 250 credits.",
  stopConversation = "false",
  options = {
    {"Restus", "restuss"},
    {"Narmle", "narmle"},
  }
}
rorishuttlepilot_template:addScreen(rorishuttlepilot_rori_start);

rorishuttlepilot_restuss = ConvoScreen:new {
  id = "restuss",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
rorishuttlepilot_template:addScreen(rorishuttlepilot_restuss);

rorishuttlepilot_narmle = ConvoScreen:new {
  id = "narmle",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
rorishuttlepilot_template:addScreen(rorishuttlepilot_narmle);


-- Template Footer
addConversationTemplate("rorishuttlepilot_template", rorishuttlepilot_template);