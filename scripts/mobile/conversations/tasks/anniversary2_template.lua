anniversary2_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "anniversary2_convo_handler",
	screens = {}
}

anniversary2_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Hello, I am Raavi Or'zeth.  I'm glad you found me! Please choose one of these Second Anniversary awards.  Keep in mind you only get ONE chance!",
	stopConversation = "false",
	options = {
		{"Painting - Cast Wing in Flight", "painting_01"},
		{"Painting - Decimator", "painting_02"},
		{"Painting - Tatooine Dune Speeder", "painting_03"},
		{"Painting - Weapon of War", "painting_04"},
		{"Painting - Fighter Study", "painting_05"},
		{"Painting - Hutt Greed", "painting_06"},
		{"Painting - Smuggler's Run", "painting_07"},
		{"Painting - Imperial Oppression (TIE Oppressor)", "painting_08"},
		{"Painting - Emperor's Eyes (TIE Sentinel)", "painting_09"},
		{"Flash Speeder", "flash_speeder"},
		{"BARC Speeder", "barc_speeder"},
	}
}
anniversary2_template:addScreen(anniversary2_first_screen);

anniversary2_insufficient_space = ConvoScreen:new {
	id = "insufficient_space",
	leftDialog = "",
	customDialogText = "Whoa, you're carrying a load!  Make some room for this gift, eh?",
	stopConversation = "true",
	options = {

	}
}
anniversary2_template:addScreen(anniversary2_insufficient_space);

anniversary2_painting_01 = ConvoScreen:new {
	id = "painting_01",
	leftDialog = "",
	customDialogText = "Here you are!",
	stopConversation = "true",
	options = {
	
	}
}
anniversary2_template:addScreen(anniversary2_painting_01);

anniversary2_painting_02 = ConvoScreen:new {
	id = "painting_02",
	leftDialog = "",
	customDialogText = "Here you are!",
	stopConversation = "true",
	options = {
	
	}
}
anniversary2_template:addScreen(anniversary2_painting_02);

anniversary2_painting_03 = ConvoScreen:new {
	id = "painting_03",
	leftDialog = "",
	customDialogText = "Here you are!",
	stopConversation = "true",
	options = {
	
	}
}
anniversary2_template:addScreen(anniversary2_painting_03);

anniversary2_painting_04 = ConvoScreen:new {
	id = "painting_04",
	leftDialog = "",
	customDialogText = "Here you are!",
	stopConversation = "true",
	options = {
	
	}
}
anniversary2_template:addScreen(anniversary2_painting_04);

anniversary2_painting_05 = ConvoScreen:new {
	id = "painting_05",
	leftDialog = "",
	customDialogText = "Here you are!",
	stopConversation = "true",
	options = {
	
	}
}
anniversary2_template:addScreen(anniversary2_painting_05);

anniversary2_painting_06 = ConvoScreen:new {
	id = "painting_06",
	leftDialog = "",
	customDialogText = "Here you are!",
	stopConversation = "true",
	options = {
	
	}
}
anniversary2_template:addScreen(anniversary2_painting_06);

anniversary2_painting_07 = ConvoScreen:new {
	id = "painting_07",
	leftDialog = "",
	customDialogText = "Here you are!",
	stopConversation = "true",
	options = {
	
	}
}
anniversary2_template:addScreen(anniversary2_painting_07);

anniversary2_painting_08 = ConvoScreen:new {
	id = "painting_08",
	leftDialog = "",
	customDialogText = "Here you are!",
	stopConversation = "true",
	options = {
	
	}
}
anniversary2_template:addScreen(anniversary2_painting_08);

anniversary2_painting_09 = ConvoScreen:new {
	id = "painting_09",
	leftDialog = "",
	customDialogText = "Here you are!",
	stopConversation = "true",
	options = {
	
	}
}
anniversary2_template:addScreen(anniversary2_painting_09);

anniversary2_barc_speeder= ConvoScreen:new {
	id = "barc_speeder",
	leftDialog = "",
	customDialogText = "Here you are!",
	stopConversation = "true",
	options = {
	
	}

}
anniversary2_template:addScreen(anniversary2_barc_speeder);

anniversary2_flash_speeder= ConvoScreen:new {
	id = "flash_speeder",
	leftDialog = "",
	customDialogText = "Here you are!",
	stopConversation = "true",
	options = {
	
	}
}
anniversary2_template:addScreen(anniversary2_flash_speeder);

anniversary2_done = ConvoScreen:new {
	id = "done",
	leftDialog = "",
	customDialogText = "You cannot claim any more rewards.",
	stopConversation = "true",
	options = {
	

	}
}
anniversary2_template:addScreen(anniversary2_done);

addConversationTemplate("anniversary2_template", anniversary2_template);
