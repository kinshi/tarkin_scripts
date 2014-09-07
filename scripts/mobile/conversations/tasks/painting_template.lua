painting_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "painting_convo_handler",
	screens = {}
}

painting_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Good to see you!  What a view, eh?  I'm always inspired to paint in a place like this.  I've actually just finished my latest work.  It's 25,000 credits if you'd like to buy it.",
	stopConversation = "false",
	options = {
		{"Sure, I'll buy your painting for 25k.", "mystery_painting"},
		{"Hmm...25k?  I don't  know.  What would you say to 18k?", "negotiate"},
		{"No thanks, I'm not really that into artwork.", "deny_quest"},
	}
}
painting_template:addScreen(painting_first_screen);

painting_mystery_painting = ConvoScreen:new {
	id = "mystery_painting",
	leftDialog = "",
	customDialogText = "Enjoy that painting!  Maybe I'll see you again next week, somewhere else.",
	stopConversation = "true",
	options = {
	
	}
}
painting_template:addScreen(painting_mystery_painting);

painting_done = ConvoScreen:new {
	id = "done",
	leftDialog = "",
	customDialogText = "Pleasure doing business with you.  Hope to see you next week!",
	stopConversation = "true",
	options = {
	}
}
painting_template:addScreen(painting_done);

painting_insufficient_funds = ConvoScreen:new {
   id = "insufficient_funds",
   leftDialog = "",
   customDialogText = "Cash only, I don't take credit.  Come back with hard credits, or I'll find another buyer.",
   stopConversation = "true",
   options = {   
   }
}
painting_template:addScreen(painting_insufficient_funds);

painting_insufficient_space = ConvoScreen:new {
   id = "insufficient_space",
   leftDialog = "",
   customDialogText = "Sorry, but you don't have enough space in your inventory to accept the painting. Please make some space and try again.",
   stopConversation = "true",
   options = {   
   }
}
painting_template:addScreen(painting_insufficient_space);

painting_negotiate_fail = ConvoScreen:new {
   id = "negotiate_fail",
   leftDialog = "",
   customDialogText = "Do you know who I am?  This is an Or'zeth original.  It's 25k or no deal.",
   stopConversation = "false",
   options = { 
		{"Fine, I'll buy your painting for 25k.", "mystery_painting"},  
		{"That's highway robbery!  I'm not paying that much for some paint on canvas!", "deny_quest"},
   }
}
painting_template:addScreen(painting_negotiate_fail);

painting_negotiate_mid = ConvoScreen:new {
   id = "negotiate_mid",
   leftDialog = "",
   customDialogText = "This one's pretty special.  I can do 20,000, but that's as low as I'm willing to go.",
   stopConversation = "false",
   options = { 
		{"Fine, I'll buy your painting for 20k.", "mystery_painting_neg_mid"},  
		{"I think I'll pass.", "deny_quest"},
   }
}
painting_template:addScreen(painting_negotiate_mid);

painting_negotiate_success = ConvoScreen:new {
   id = "negotiate_success",
   leftDialog = "",
   customDialogText = "You drive a hard bargain, but a man's got to eat.  I'll sell it for 18,000.",
   stopConversation = "false",
   options = { 
		{"Great, I'll take it!", "mystery_painting_neg_suc"},  
		{"I think I'll pass.", "deny_quest"},
   }
}
painting_template:addScreen(painting_negotiate_success);

painting_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "Well, more's the pity.  I'll find another buyer.",
   stopConversation = "true",
   options = {   
   }
}
painting_template:addScreen(painting_deny_quest);

addConversationTemplate("painting_template", painting_template);
