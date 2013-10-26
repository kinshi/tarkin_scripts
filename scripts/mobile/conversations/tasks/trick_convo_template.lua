trick_convo_template = ConvoTemplate:new {
	initialScreen = "trick",
	templateType = "Lua",
	luaClassHandler = "trick_convo_handler",
	screens = {}
}

trick_convo_template_trick = ConvoScreen:new {
	id = "trick",
	leftDialog = "",
	customDialogText = "It's a trick!",
	stopConversation = "true",
	options = {
	
	}
}
trick_convo_template:addScreen(trick_convo_template_trick);

addConversationTemplate("trick_convo_template", trick_convo_template);
