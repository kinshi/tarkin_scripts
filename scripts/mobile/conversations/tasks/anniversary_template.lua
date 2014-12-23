anniversary_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "anniversary",
	screens = {}
}

anniversary_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Hello, I am C-3PO 'human-cyborg relations'. Welcome to the Tarkin Galaxy! I am here to dispense Life Day 2014 rewards! Please choose one. Keep in mind you only get ONE chance!",	stopConversation = "false",
	options = {
		{"Hangar House", "hangar_house"},
		{"Tree House", "tree_house"},
		{"BARC Speeder", "barc_speeder"},
	}
}
anniversary_template:addScreen(anniversary_first_screen);

anniversary_hangar_house = ConvoScreen:new {
	id = "hangar_house",
	leftDialog = "",
	customDialogText = "Here you are!",
	stopConversation = "true",
	options = {
	
	}
}
anniversary_template:addScreen(anniversary_hangar_house);

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


anniversary_tree_house= ConvoScreen:new {
	id = "tree_house",
	leftDialog = "",
	customDialogText = "Here you are!",
	stopConversation = "true",
	options = {
	
	}
}
anniversary_template:addScreen(anniversary_tree_house);

anniversary_tree_house= ConvoScreen:new {
	id = "tree_house",
	leftDialog = "",
	customDialogText = "Here you are!",
	stopConversation = "true",
	options = {
	
	}
}
anniversary_template:addScreen(anniversary_tree_house);

anniversary_barc_speeder= ConvoScreen:new {
	id = "barc_speeder",
	leftDialog = "",
	customDialogText = "Here you are!",
	stopConversation = "true",
	options = {
	
	}
}
anniversary_template:addScreen(anniversary_barc_speeder);

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
