-- Tarkin Travel System
-- www.tarkin.org 2015
-- Function: Conversation Template for Wolten, who is the dungeon run pilot.

-- General Section ==============

woltenkinharatocoronet_template = ConvoTemplate:new {
	initialScreen = "to_coronet_start",
	templateType = "Lua",
	luaClassHandler = "woltenkinharatocoronet_convo_handler",
	screens = {}
}

woltenkinharatocoronet_insufficient_funds = ConvoScreen:new {
  id = "insufficient_funds",
  leftDialog = "",
  customDialogText = "Sorry about your luck, but you don't have enough credits with you to pay for a ride. However, I might have an umbrella I could loan you for your walk, if you'd like.",
  stopConversation = "true",
  options = { 
  }
}
woltenkinharatocoronet_template:addScreen(woltenkinharatocoronet_insufficient_funds);

-- To Theed from the other planets ======================

woltenkinharatocoronet_to_coronet_start = ConvoScreen:new {
  id = "to_coronet_start",
  leftDialog = "",
  customDialogText = "You didn't die, eh? Good thing, cause someone needs to pay for the trip back to Coronet! Standard rate of 10k, of course.",
  stopConversation = "false",
  options = {
    {"Oh, of course! Here you go...", "accept"},
  }
}
woltenkinharatocoronet_template:addScreen(woltenkinharatocoronet_to_coronet_start);

woltenkinharatocoronet_accept = ConvoScreen:new {
  id = "accept",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
woltenkinharatocoronet_template:addScreen(woltenkinharatocoronet_accept);



-- Template Footer
addConversationTemplate("woltenkinharatocoronet_template", woltenkinharatocoronet_template);