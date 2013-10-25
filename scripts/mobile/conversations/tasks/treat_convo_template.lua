treat_convo_template = ConvoTemplate:new {
	initialScreen = "treat",
	templateType = "Lua",
	luaClassHandler = "treat_convo_handler",
	screens = {}
}

treat_convo_template_treat = ConvoScreen:new {
	id = "treat",
	leftDialog = "",
	customDialogText = "It's a treat!",
	stopConversation = "true",
	options = {
	
	}
}
treat_convo_template:addScreen(treat_convo_template_treat);

addConversationTemplate("treat_convo_template", treat_convo_template);
