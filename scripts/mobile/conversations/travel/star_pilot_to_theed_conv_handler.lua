-- Tarkin Travel System
-- www.tarkin.org 2015
-- Function: Conversation Template for the local shuttle ports on all planets.

-- General Section ==============

starpilottotheed_template = ConvoTemplate:new {
	initialScreen = "to_theed_start",
	templateType = "Lua",
	luaClassHandler = "starpilottotheed_convo_handler",
	screens = {}
}

starpilottotheed_insufficient_funds = ConvoScreen:new {
  id = "insufficient_funds",
  leftDialog = "",
  customDialogText = "Sorry, but you don't have enough credits with you to pay for a trip. Head on over to the bank, I'll be here when ya get back!",
  stopConversation = "true",
  options = { 
  }
}
starpilottotheed_template:addScreen(starpilottotheed_insufficient_funds);

-- To Theed from the other planets ======================

starpilottotheed_to_theed_start = ConvoScreen:new {
  id = "to_theed_start",
  leftDialog = "",
  customDialogText = "Good day, traveler. The public transit system will return you to Theed for 1000 credits.",
  stopConversation = "false",
  options = {
    {"Sounds great. Thanks!", "accept"},
  }
}
starpilottotheed_template:addScreen(starpilottotheed_to_theed_start);

starpilottotheed_accept = ConvoScreen:new {
  id = "accept",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
starpilottotheed_template:addScreen(starpilottotheed_accept);



-- Template Footer
addConversationTemplate("starpilottotheed_template", starpilottotheed_template);