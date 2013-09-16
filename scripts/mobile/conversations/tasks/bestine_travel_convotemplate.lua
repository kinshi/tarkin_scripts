bestine_travel_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "bestinetravel",
	screens = {}
}

bestine_travel_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Where would you like to travel?",
	stopConversation = "false",
	options = {
		{"Coronet", "travelcoronet"},
		{"Theed", "traveltheed"},

	}
}
bestine_travel_template:addScreen(bestine_travel_first_screen);

bestine_travel_travelcoronet= ConvoScreen:new {
	id = "travelcoronet",
	leftDialog = "",
	customDialogText = "Thank you.",
	stopConversation = "true",
	options = {

	}
}
bestine_travel_template:addScreen(bestine_travel_travelcoronet);

bestine_travel_traveltheed = ConvoScreen:new {
	id = "traveltheed",
	leftDialog = "",
	customDialogText = "Thank you.",
	stopConversation = "true",
	options = {

	}
}
bestine_travel_template:addScreen(bestine_travel_traveltheed);

addConversationTemplate("bestine_travel_template", bestine_travel_template);
