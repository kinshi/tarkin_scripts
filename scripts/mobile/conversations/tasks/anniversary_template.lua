anniversary_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "anniversary",
	screens = {}
}

anniversary_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Hello, I am C-3PO 'human-cyborg relations'. Welcome to the Tarkin Galaxy! Before you ask - No, I don't know any Luke Skywalker. I am here to dispense DOT-Day rewards! Please choose one. Keep in mind you only get ONE chance!",
	stopConversation = "false",
	options = {
		{"Dark Jedi Chair", "vader_victory"},
		{"Light Jedi Chair", "falcon_chair"},
		{"Flash Speeder", "flash_speeder"},
	}
}
anniversary_template:addScreen(anniversary_first_screen);

anniversary_vader_victory = ConvoScreen:new {
	id = "vader_victory",
	leftDialog = "",
	customDialogText = "Here you are!",
	stopConversation = "true",
	options = {
	
	}
}
anniversary_template:addScreen(anniversary_vader_victory);

anniversary_completed = ConvoScreen:new {
	id = "completed",
	leftDialog = "",
	customDialogText = "You have already claimed a reward. We are however offering ONE free resource deed.",
	stopConversation = "false",
	options = {
		{"Resource Deed", "resourcedeed"},	

	}
}
anniversary_template:addScreen(anniversary_completed);


anniversary_falcon_chair= ConvoScreen:new {
	id = "falcon_chair",
	leftDialog = "",
	customDialogText = "Here you are!",
	stopConversation = "true",
	options = {
	
	}
}
anniversary_template:addScreen(anniversary_falcon_chair);

anniversary_falcon_chair= ConvoScreen:new {
	id = "falcon_chair",
	leftDialog = "",
	customDialogText = "Here you are!",
	stopConversation = "true",
	options = {
	
	}
}
anniversary_template:addScreen(anniversary_falcon_chair);

anniversary_flash_speeder= ConvoScreen:new {
	id = "flash_speeder",
	leftDialog = "",
	customDialogText = "Here you are!",
	stopConversation = "true",
	options = {
	
	}
}
anniversary_template:addScreen(anniversary_flash_speeder);

anniversary_fireworks= ConvoScreen:new {
	id = "fireworks",
	leftDialog = "",
	customDialogText = "Here you are!",
	stopConversation = "true",
	options = {
	
	}
}
anniversary_template:addScreen(anniversary_fireworks);

anniversary_resourcedeed = ConvoScreen:new {
	id = "resourcedeed",
	leftDialog = "",
	customDialogText = "Here you are!",
	stopConversation = "true",
	options = {
	

	}
}
anniversary_template:addScreen(anniversary_resourcedeed);


anniversary_done = ConvoScreen:new {
	id = "done",
	leftDialog = "",
	customDialogText = "You cannot claim any more rewards.",
	stopConversation = "true",
	options = {
	

	}
}
anniversary_template:addScreen(anniversary_done);

addConversationTemplate("anniversary_template", anniversary_template);
