-- Tarkin Travel System
-- www.tarkin.org 2015
-- Function: Conversation Template for the local shuttle ports on all planets.

-- General Section ==============

nabooshuttlepilot_template = ConvoTemplate:new {
	initialScreen = "naboo_start",
	templateType = "Lua",
	luaClassHandler = "nabooshuttlepilot_convo_handler",
	screens = {}
}

nabooshuttlepilot_insufficient_funds = ConvoScreen:new {
  id = "insufficient_funds",
  leftDialog = "",
  customDialogText = "Sorry, but you don't have enough credits with you to pay for a trip. Head on over to the bank, I'll be here when ya get back!",
  stopConversation = "true",
  options = { 
  }
}
nabooshuttlepilot_template:addScreen(nabooshuttlepilot_insufficient_funds);


-- Naboo =========================

nabooshuttlepilot_naboo_start = ConvoScreen:new {
  id = "naboo_start",
  leftDialog = "",
  customDialogText = "Howdy, traveler. Where on Naboo would you like to go today? All destinations cost 250 credits.",
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
nabooshuttlepilot_template:addScreen(nabooshuttlepilot_naboo_start);

nabooshuttlepilot_theed_east = ConvoScreen:new {
  id = "theed_east",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
nabooshuttlepilot_template:addScreen(nabooshuttlepilot_theed_east);

nabooshuttlepilot_theed_palace = ConvoScreen:new {
  id = "theed_palace",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
nabooshuttlepilot_template:addScreen(nabooshuttlepilot_theed_palace);

nabooshuttlepilot_theed_west = ConvoScreen:new {
	id = "theed_west",
	leftDialog = "",
	stopConversation = "true",
	options = {	
	}
}
nabooshuttlepilot_template:addScreen(nabooshuttlepilot_theed_west);

nabooshuttlepilot_lake_retreat = ConvoScreen:new {
  id = "lake_retreat",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
nabooshuttlepilot_template:addScreen(nabooshuttlepilot_lake_retreat);

nabooshuttlepilot_keren_west = ConvoScreen:new {
  id = "keren_west",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
nabooshuttlepilot_template:addScreen(nabooshuttlepilot_keren_west);

nabooshuttlepilot_keren_east = ConvoScreen:new {
  id = "keren_east",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
nabooshuttlepilot_template:addScreen(nabooshuttlepilot_keren_east);

nabooshuttlepilot_kaadara = ConvoScreen:new {
  id = "kaadara",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
nabooshuttlepilot_template:addScreen(nabooshuttlepilot_kaadara);

nabooshuttlepilot_deeja_peak = ConvoScreen:new {
  id = "deeja_peak",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
nabooshuttlepilot_template:addScreen(nabooshuttlepilot_deeja_peak);

nabooshuttlepilot_moenia = ConvoScreen:new {
  id = "moenia",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
nabooshuttlepilot_template:addScreen(nabooshuttlepilot_moenia);

-- Template Footer
addConversationTemplate("nabooshuttlepilot_template", nabooshuttlepilot_template);