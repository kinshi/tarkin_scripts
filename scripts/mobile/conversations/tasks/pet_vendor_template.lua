pet_vendor_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "pet",
	screens = {}
}

pet_vendor_template_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Select a mobile to spawn. NOTE: Mobs do NOT despawn on their own. They must be /kill 'ed",
	stopConversation = "false",
	options = {
		{"Stormtrooper", "stormtrooper"},
		{"Jabba the Hutt", "jabba"},
		{"AT-ST", "atst"},
	}
}
pet_vendor_template:addScreen(pet_vendor_template_first_screen);

pet_vendor_template_stormtrooper = ConvoScreen:new {
	id = "stormtrooper",
	leftDialog = "",
	customDialogText = "Here you are!",
	stopConversation = "true",
	options = {
	
	}
}
pet_vendor_template:addScreen(pet_vendor_template_stormtrooper);

pet_vendor_template_jabba = ConvoScreen:new {
	id = "jabba",
	leftDialog = "",
	customDialogText = "Here you are!",
	stopConversation = "true",
	options = {
	
	}
}
pet_vendor_template:addScreen(pet_vendor_template_jabba);

pet_vendor_template_atst = ConvoScreen:new {
	id = "atst",
	leftDialog = "",
	customDialogText = "Here you are!",
	stopConversation = "true",
	options = {
	
	}
}
pet_vendor_template:addScreen(pet_vendor_template_atst);

addConversationTemplate("pet_vendor_template", pet_vendor_template);
