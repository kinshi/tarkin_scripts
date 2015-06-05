-- Tarkin Travel System
-- www.tarkin.org 2015
-- Function: Conversation Template for the local shuttle ports on all planets.

-- General Section ==============

dathomirshuttlepilot_template = ConvoTemplate:new {
	initialScreen = "naboo_start",
	templateType = "Lua",
	luaClassHandler = "dathomirshuttlepilot_convo_handler",
	screens = {}
}

dathomirshuttlepilot_insufficient_funds = ConvoScreen:new {
  id = "insufficient_funds",
  leftDialog = "",
  customDialogText = "Sorry, but you don't have enough credits with you to pay for a trip. Head on over to the bank, I'll be here when ya get back!",
  stopConversation = "true",
  options = { 
  }
}
dathomirshuttlepilot_template:addScreen(dathomirshuttlepilot_insufficient_funds);


-- Dathomir ======================

dathomirshuttlepilot_dathomir_start = ConvoScreen:new {
  id = "dathomir_start",
  leftDialog = "",
  customDialogText = "Howdy, traveler. Where on Dathomir would you like to go today? All destinations cost 250 credits.",
  stopConversation = "false",
  options = {
    {"Science Outpost", "science"},
    {"Trade Outpost", "trade"},
  }
}
dathomirshuttlepilot_template:addScreen(dathomirshuttlepilot_dathomir_start);

dathomirshuttlepilot_science = ConvoScreen:new {
  id = "science",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
dathomirshuttlepilot_template:addScreen(dathomirshuttlepilot_science);

dathomirshuttlepilot_trade = ConvoScreen:new {
  id = "trade",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
dathomirshuttlepilot_template:addScreen(dathomirshuttlepilot_trade);


-- Template Footer
addConversationTemplate("dathomirshuttlepilot_template", dathomirshuttlepilot_template);