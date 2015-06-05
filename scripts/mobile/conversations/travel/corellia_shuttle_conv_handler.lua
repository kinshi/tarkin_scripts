-- Tarkin Travel System
-- www.tarkin.org 2015
-- Function: Conversation Template for the local shuttle ports on all planets.

-- General Section ==============

corelliashuttlepilot_template = ConvoTemplate:new {
	initialScreen = "corellia_start",
	templateType = "Lua",
	luaClassHandler = "corelliashuttlepilot_convo_handler",
	screens = {}
}

corelliashuttlepilot_insufficient_funds = ConvoScreen:new {
  id = "insufficient_funds",
  leftDialog = "",
  customDialogText = "Sorry, but you don't have enough credits with you to pay for a trip. Head on over to the bank, I'll be here when ya get back!",
  stopConversation = "true",
  options = { 
  }
}
corelliashuttlepilot_template:addScreen(corelliashuttlepilot_insufficient_funds);

-- Corellia =======================

corelliashuttlepilot_corellia_start = ConvoScreen:new {
  id = "corellia_start",
  leftDialog = "",
  customDialogText = "Howdy, traveler. Where on Corellia would you like to go today? All destinations cost 250 credits.",
  stopConversation = "false",
  options = {
    {"Coronet West", "coronet_west"},
    {"Coronet East", "coronet_east"},
    {"Kor Vella", "kor_vella"},
    {"Tyrena West", "tyrena_west"},
    {"Tyrena East", "tyrena_east"},
    {"Doaba Guerfel", "doaba_guerfel"},
    {"Bela Vistal North", "bela_vistal_north"},
    {"Bela Vistal South", "bela_vistal_south"},
    {"Vreni Island", "vreni_isaland"},
  }
}
corelliashuttlepilot_template:addScreen(corelliashuttlepilot_corellia_start);

corelliashuttlepilot_coronet_west = ConvoScreen:new {
  id = "coronet_west",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
corelliashuttlepilot_template:addScreen(corelliashuttlepilot_coronet_west);

corelliashuttlepilot_coronet_east = ConvoScreen:new {
  id = "coronet_east",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
corelliashuttlepilot_template:addScreen(corelliashuttlepilot_coronet_east);

corelliashuttlepilot_kor_vella = ConvoScreen:new {
  id = "kor_vella",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
corelliashuttlepilot_template:addScreen(corelliashuttlepilot_kor_vella);

corelliashuttlepilot_tyrena_west = ConvoScreen:new {
  id = "tyrena_west",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
corelliashuttlepilot_template:addScreen(corelliashuttlepilot_tyrena_west);

corelliashuttlepilot_tyrena_east = ConvoScreen:new {
  id = "tyrena_east",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
corelliashuttlepilot_template:addScreen(corelliashuttlepilot_tyrena_east);

corelliashuttlepilot_doaba_guerfel = ConvoScreen:new {
  id = "doaba_guerfel",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
corelliashuttlepilot_template:addScreen(corelliashuttlepilot_doaba_guerfel);

corelliashuttlepilot_bela_vistal_north = ConvoScreen:new {
  id = "bela_vistal_north",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
corelliashuttlepilot_template:addScreen(corelliashuttlepilot_bela_vistal_north);

corelliashuttlepilot_bela_vistal_south = ConvoScreen:new {
  id = "bela_vistal_south",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
corelliashuttlepilot_template:addScreen(corelliashuttlepilot_bela_vistal_south);

corelliashuttlepilot_vreni_isaland = ConvoScreen:new {
  id = "vreni_isaland",
  leftDialog = "",
  stopConversation = "true",
  options = { 
  }
}
corelliashuttlepilot_template:addScreen(corelliashuttlepilot_vreni_isaland);


-- Template Footer
addConversationTemplate("corelliashuttlepilot_template", corelliashuttlepilot_template);