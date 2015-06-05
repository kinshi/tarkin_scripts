-- Tarkin Travel System
-- www.tarkin.org 2015
-- Function: Conversation Template for the local shuttle ports on all planets.

-- General Section ==============

lokshuttlepilot_template = ConvoTemplate:new {
	initialScreen = "lok_start",
	templateType = "Lua",
	luaClassHandler = "lokshuttlepilot_convo_handler",
	screens = {}
}

lokshuttlepilot_insufficient_funds = ConvoScreen:new {
  id = "insufficient_funds",
  leftDialog = "",
  customDialogText = "Sorry, but you don't have enough credits with you to pay for a trip. Head on over to the bank, I'll be here when ya get back!",
  stopConversation = "true",
  options = { 
  }
}
lokshuttlepilot_template:addScreen(lokshuttlepilot_insufficient_funds);

-- Lok ======================
-- Lok doesn't actually have any public shuttle ports. This is here for future convenience!

lokshuttlepilot_lok_start = ConvoScreen:new {
  id = "lok_start",
  leftDialog = "",
  customDialogText = "Howdy, traveler. Where on Lok would you like to go today? All destinations cost 250 credits.",
  stopConversation = "false",
  options = {
    {"Example 1", "example_1"},
    {"Example 2", "example_2"},
  }
}
lokshuttlepilot_template:addScreen(lokshuttlepilot_lok_start);

lokshuttlepilot_example_1 = ConvoScreen:new {
  id = "example_1",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
lokshuttlepilot_template:addScreen(lokshuttlepilot_example_1);

lokshuttlepilot_example_2 = ConvoScreen:new {
  id = "example_2",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
lokshuttlepilot_template:addScreen(lokshuttlepilot_example_2);

-- Template Footer
addConversationTemplate("lokshuttlepilot_template", lokshuttlepilot_template);