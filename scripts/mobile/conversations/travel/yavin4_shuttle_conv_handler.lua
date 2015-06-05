-- Tarkin Travel System
-- www.tarkin.org 2015
-- Function: Conversation Template for the local shuttle ports on all planets.

-- General Section ==============

yavin4shuttlepilot_template = ConvoTemplate:new {
	initialScreen = "yavin4_start",
	templateType = "Lua",
	luaClassHandler = "yavin4shuttlepilot_convo_handler",
	screens = {}
}

yavin4shuttlepilot_insufficient_funds = ConvoScreen:new {
  id = "insufficient_funds",
  leftDialog = "",
  customDialogText = "Sorry, but you don't have enough credits with you to pay for a trip. Head on over to the bank, I'll be here when ya get back!",
  stopConversation = "true",
  options = { 
  }
}
yavin4shuttlepilot_template:addScreen(yavin4shuttlepilot_insufficient_funds);


-- Yavin4 ======================

yavin4shuttlepilot_yavin4_start = ConvoScreen:new {
  id = "yavin4_start",
  leftDialog = "",
  customDialogText = "Howdy, traveler. Where on Yavin4 would you like to go today? All destinations cost 250 credits.",
  stopConversation = "false",
  options = {
    {"Labor Outpost", "labor"},
    {"Mining Outpost", "mining_yavin4"},
  }
}
yavin4shuttlepilot_template:addScreen(yavin4shuttlepilot_yavin4_start);

yavin4shuttlepilot_labor = ConvoScreen:new {
  id = "labor",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
yavin4shuttlepilot_template:addScreen(yavin4shuttlepilot_labor);

yavin4shuttlepilot_mining_yavin4 = ConvoScreen:new {
  id = "mining_yavin4",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
yavin4shuttlepilot_template:addScreen(yavin4shuttlepilot_mining_yavin4);

-- Template Footer
addConversationTemplate("yavin4shuttlepilot_template", yavin4shuttlepilot_template);