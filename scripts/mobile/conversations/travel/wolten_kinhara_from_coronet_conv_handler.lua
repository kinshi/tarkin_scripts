-- Tarkin Travel System
-- www.tarkin.org 2015
-- Function: Conversation Template for the Coronet dungeon travel pilot, Wolten Kinhara.

-- General Section ==============

woltenkinharafromcoronet_template = ConvoTemplate:new {
	initialScreen = "from_coronet_start",
	templateType = "Lua",
	luaClassHandler = "woltenkinharafromcoronet_convo_handler",
	screens = {}
}

woltenkinharafromcoronet_insufficient_funds = ConvoScreen:new {
  id = "insufficient_funds",
  leftDialog = "",
  customDialogText = "Sorry, but you don't have enough credits with you to pay for a trip. Head on over to the bank, I'll be here when ya get back!",
  stopConversation = "true",
  options = { 
  }
}
woltenkinharafromcoronet_template:addScreen(woltenkinharafromcoronet_insufficient_funds);

-- From Coronet =======================

woltenkinharafromcoronet_from_coronet_start = ConvoScreen:new {
  id = "from_coronet_start",
  leftDialog = "",
  customDialogText = "Looking to cause some trouble, eh? I can take ya a few places that'll be worth your while. And mine... My fee is 10k one way, but I'll wait for ya when we get there and give ya a lift back here.",
  stopConversation = "false",
  options = {
    {"Death Watch Bunker", "dwb"},
    {"Geonosian Cave", "geo"},
    {"Lord Nyax Compound", "nyax"},
    {"Fort Tusken", "tusken"},
    {"Janta Cave", "janta"},
    {"The Warren", "warren"},
    {"Droid Cave", "droid"},
    {"Nightsister Stronghold", "nightsister"}
  }
}
woltenkinharafromcoronet_template:addScreen(woltenkinharafromcoronet_from_coronet_start);

woltenkinharafromcoronet_dwb = ConvoScreen:new {
  id = "dwb",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
woltenkinharafromcoronet_template:addScreen(woltenkinharafromcoronet_dwb);

woltenkinharafromcoronet_geo = ConvoScreen:new {
  id = "geo",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
woltenkinharafromcoronet_template:addScreen(woltenkinharafromcoronet_geo);

woltenkinharafromcoronet_nyax = ConvoScreen:new {
  id = "nyax",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
woltenkinharafromcoronet_template:addScreen(woltenkinharafromcoronet_nyax);

woltenkinharafromcoronet_tusken = ConvoScreen:new {
  id = "tusken",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
woltenkinharafromcoronet_template:addScreen(woltenkinharafromcoronet_tusken);

woltenkinharafromcoronet_janta = ConvoScreen:new {
  id = "janta",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
woltenkinharafromcoronet_template:addScreen(woltenkinharafromcoronet_janta);

woltenkinharafromcoronet_warren = ConvoScreen:new {
  id = "warren",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
woltenkinharafromcoronet_template:addScreen(woltenkinharafromcoronet_warren);

woltenkinharafromcoronet_droid = ConvoScreen:new {
  id = "droid",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
woltenkinharafromcoronet_template:addScreen(woltenkinharafromcoronet_droid);

woltenkinharafromcoronet_nightsister = ConvoScreen:new {
  id = "nightsister",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
woltenkinharafromcoronet_template:addScreen(woltenkinharafromcoronet_nightsister);


-- Template Footer
addConversationTemplate("woltenkinharafromcoronet_template", woltenkinharafromcoronet_template);