-- Tarkin Travel System
-- www.tarkin.org 2015
-- Function: Conversation Template for the local shuttle ports on all planets.

-- General Section ==============

planetarytravel_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "planetarytravel_convo_handler",
	screens = {}
}

planetarytravel_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "We really should not be having this conversation...",
	stopConversation = "false",
	options = {
	 {"I agree!", "deny"},
	}
}
planetarytravel_template:addScreen(planetarytravel_first_screen);

planetarytravel_insufficient_funds = ConvoScreen:new {
  id = "insufficient_funds",
  leftDialog = "",
  customDialogText = "Sorry, but you don't have enough credits with you to pay for a trip. Head on over to the bank, I'll be here when ya get back!",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_insufficient_funds);

planetarytravel_deny = ConvoScreen:new {
  id = "deny",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_deny);


-- Naboo =========================

planetarytravel_naboo_start = ConvoScreen:new {
  id = "naboo_start",
  leftDialog = "",
  customDialogText = "Hey, traveler, where on Naboo would you like to go today? All destinations cost 250 credits.",
  stopConversation = "false",
  options = {
    {"Theed East", "theed_east"},
    {"Theed Palace", "theed_palace"},
    {"Theed West", "theed_west"},
    {"Lake Retreat", "lake_retreat"},
    {"Keren West", "keren_west"},
    {"Keren East", "keren_east"},
    {"Kaadara", "kaadara"},
    {"Deeja Peak", "deeja_peak"},
    {"Moenia", "moenia"},
  }
}
planetarytravel_template:addScreen(planetarytravel_naboo_start);

planetarytravel_theed_east = ConvoScreen:new {
  id = "theed_east",
  leftDialog = "",
  customDialogText = "Quick and easy, I like it!",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_theed_east);

planetarytravel_theed_palace = ConvoScreen:new {
  id = "theed_palace",
  leftDialog = "",
  customDialogText = "Doing some sight seeing are ya?",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_theed_palace);

planetarytravel_theed_west = ConvoScreen:new {
	id = "theed_west",
	leftDialog = "",
	customDialogText = "Keep an eye on your pocketbook. Rumor has it there are Rebels in the west end.",
	stopConversation = "true",
	options = {	
	}
}
planetarytravel_template:addScreen(planetarytravel_theed_west);

planetarytravel_lake_retreat = ConvoScreen:new {
  id = "lake_retreat",
  leftDialog = "",
  customDialogText = "Oh, what a beautiful vacation spot!",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_lake_retreat);

planetarytravel_keren_west = ConvoScreen:new {
  id = "keren_west",
  leftDialog = "",
  customDialogText = "I have heard good things about Keren.",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_keren_west);

planetarytravel_keren_east = ConvoScreen:new {
  id = "keren_east",
  leftDialog = "",
  customDialogText = "Sure is nice in Keren this time of year.",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_keren_east);

planetarytravel_kaadara = ConvoScreen:new {
  id = "kaadara",
  leftDialog = "",
  customDialogText = "If you're interested in animals, I hear there's one of them Creature Handler trainers in Kaadara.",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_kaadara);

planetarytravel_deeja_peak = ConvoScreen:new {
  id = "deeja_peak",
  leftDialog = "",
  customDialogText = "If you ask me, Deeja Peak is the jewel of this whole rock. Mountains, fresh air... I think I'll retire there.",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_deeja_peak);

planetarytravel_moenia = ConvoScreen:new {
  id = "moenia",
  leftDialog = "",
  customDialogText = "Careful, there is a heavy Rebel presence in Moenia!",
  stopConversation = "true",
  options = { 
  }
}
planetarytravel_template:addScreen(planetarytravel_moenia);


-- Template Footer
addConversationTemplate("planetarytravel_template", planetarytravel_template);