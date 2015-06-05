-- Tarkin Travel System
-- www.tarkin.org 2015
-- Function: Conversation Template for the local shuttle ports on all planets.

-- General Section ==============

endorshuttlepilot_template = ConvoTemplate:new {
	initialScreen = "endor_start",
	templateType = "Lua",
	luaClassHandler = "endorshuttlepilot_convo_handler",
	screens = {}
}

endorshuttlepilot_insufficient_funds = ConvoScreen:new {
  id = "insufficient_funds",
  leftDialog = "",
  customDialogText = "Sorry, but you don't have enough credits with you to pay for a trip. Head on over to the bank, I'll be here when ya get back!",
  stopConversation = "true",
  options = { 
  }
}
endorshuttlepilot_template:addScreen(endorshuttlepilot_insufficient_funds);


-- Endor ======================

endorshuttlepilot_endor_start = ConvoScreen:new {
  id = "endor_start",
  leftDialog = "",
  customDialogText = "Howdy, traveler. Where on Endor would you like to go today? All destinations cost 250 credits.",
  stopConversation = "false",
  options = {
    {"Smuggler Outpost", "smuggler"},
    {"Research Outpost", "research"},
  }
}
endorshuttlepilot_template:addScreen(endorshuttlepilot_endor_start);

endorshuttlepilot_smuggler = ConvoScreen:new {
  id = "smuggler",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
endorshuttlepilot_template:addScreen(endorshuttlepilot_smuggler);

endorshuttlepilot_research = ConvoScreen:new {
  id = "research",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
endorshuttlepilot_template:addScreen(endorshuttlepilot_research);



-- Template Footer
addConversationTemplate("endorshuttlepilot_template", endorshuttlepilot_template);