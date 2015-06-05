-- Tarkin Travel System
-- www.tarkin.org 2015
-- Function: Conversation Template for the Theed galactic travel hub.

-- General Section ==============

starpilotfromtheed_template = ConvoTemplate:new {
	initialScreen = "from_theed_start",
	templateType = "Lua",
	luaClassHandler = "starpilotfromtheed_convo_handler",
	screens = {}
}

starpilotfromtheed_insufficient_funds = ConvoScreen:new {
  id = "insufficient_funds",
  leftDialog = "",
  customDialogText = "Sorry, but you don't have enough credits with you to pay for a trip. Head on over to the bank, I'll be here when ya get back!",
  stopConversation = "true",
  options = { 
  }
}
starpilotfromtheed_template:addScreen(starpilotfromtheed_insufficient_funds);

-- From Theed =======================

starpilotfromtheed_from_theed_start = ConvoScreen:new {
  id = "from_theed_start",
  leftDialog = "",
  customDialogText = "Hello, traveller! Where can I take you today? Here are my prices...",
  stopConversation = "false",
  options = {
    {"Corellia (1000)", "corellia"},
    {"Danootine (5000)", "dantooine"},
    {"Dathomir (6500)", "dathomir"},
    {"Endor (4000)", "endor"},
    {"Lok (3500)", "lok"},
    {"Rori (500)", "rori"},
    {"Talus (1500)", "talus"},
    {"Tatooine (1000)", "tatooine"},
    {"Yavin4 (4500)", "yavin4"},
  }
}
starpilotfromtheed_template:addScreen(starpilotfromtheed_from_theed_start);

starpilotfromtheed_corellia = ConvoScreen:new {
  id = "corellia",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
starpilotfromtheed_template:addScreen(starpilotfromtheed_corellia);

starpilotfromtheed_dantooine = ConvoScreen:new {
  id = "dantooine",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
starpilotfromtheed_template:addScreen(starpilotfromtheed_dantooine);

starpilotfromtheed_dathomir = ConvoScreen:new {
  id = "dathomir",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
starpilotfromtheed_template:addScreen(starpilotfromtheed_dathomir);

starpilotfromtheed_endor = ConvoScreen:new {
  id = "endor",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
starpilotfromtheed_template:addScreen(starpilotfromtheed_endor);

starpilotfromtheed_lok = ConvoScreen:new {
  id = "lok",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
starpilotfromtheed_template:addScreen(starpilotfromtheed_lok);

starpilotfromtheed_rori = ConvoScreen:new {
  id = "rori",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
starpilotfromtheed_template:addScreen(starpilotfromtheed_rori);

starpilotfromtheed_talus = ConvoScreen:new {
  id = "talus",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
starpilotfromtheed_template:addScreen(starpilotfromtheed_talus);

starpilotfromtheed_tatooine = ConvoScreen:new {
  id = "tatooine",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
starpilotfromtheed_template:addScreen(starpilotfromtheed_tatooine);

starpilotfromtheed_yavin4 = ConvoScreen:new {
  id = "yavin4",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
starpilotfromtheed_template:addScreen(starpilotfromtheed_yavin4);


-- Template Footer
addConversationTemplate("starpilotfromtheed_template", starpilotfromtheed_template);