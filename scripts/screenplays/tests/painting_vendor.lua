painting_vendor = ScreenPlay:new { 
	numberOfActs = 1,
	questString = "painting05", 
	states = {
		accepted = 2,	
	}, 
	questdata = Object:new {
		
		activePlayerName = "initial",
	}
}

registerScreenPlay("painting_vendor", true)

function painting_vendor:start() 

	local pNpc = spawnMobile("talus", "painting_artist", 1, 4300.4, 6.0, 1013.3, 111, 40, 0 )
end

function painting_vendor:getActivePlayerName()

	return self.questdata.activePlayerName
end

function painting_vendor:setActivePlayerName(playerName)

	print("Changing playername from " .. self.questdata.activePlayerName .. " to " .. playerName)
	self.questdata.activePlayerName = playerName
end

painting_convo_handler = Object:new {
	tstring = "myconversation"
 }


function painting_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	-- Assign the player to variable creature for use inside this function.
	local creature = LuaCreatureObject(conversingPlayer)
	-- Get the last conversation to determine whether or not we're  on the first screen
	local convosession = creature:getConversationSession()
	lastConversation = nil
	local conversation = LuaConversationTemplate(conversationTemplate)
	local nextConversationScreen 
	
	-- If there is a conversation open, do stuff with it
	if ( conversation ~= nil ) then
		-- check to see if we have a next screen
		if ( convosession ~= nil ) then
			 local session = LuaConversationSession(convosession)
			 if ( session ~= nil ) then
			 	lastConversationScreen = session:getLastConversationScreen()
			 end
		end
		
		-- Last conversation was nil, so get the first screen
		if ( lastConversationScreen == nil ) then
			local hasAccepted = creature:hasScreenPlayState(painting_vendor.states.accepted, painting_vendor.questString)

			print("hasAccepted() is " .. hasAccepted) 

			if ( hasAccepted == 0 ) then
			
				print("no screenplaystate so must not have accepted it yet")
				--nextConversationScreen = conversation:getInitialScreen()
				nextConversationScreen = conversation:getScreen("first_screen")
				--self:addQuestOptions(nextConversationScreen)
				
			elseif ( hasAccepted == 1 ) then
				nextConversationScreen = conversation:getScreen("done")

		end		
			


		else
			-- Start playing the rest of the conversation based on user input
			local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
			
			-- Set variable to track what option the player picked and get the option picked
			local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
			nextConversationScreen = conversation:getScreen(optionLink)
			
			-- Get some information about the player.
			local credits = creature:getCashCredits()
			local pInventory = creature:getSlottedObject("inventory")
			local inventory = LuaSceneObject(pInventory)
			local reward = "object/tangible/painting/painting_food_baking_s02.iff"
			-- Take action when the player makes a purchase.
			if (inventory:hasFullContainerObjects() == true) then
				-- Bail if the player doesn't have enough space in their inventory.
				-- Plays a chat box message from the NPC as well as a system message.
				nextConversationScreen = conversation:getScreen("insufficient_space")
				creature:sendSystemMessage("You do not have enough inventory space")
			elseif (optionLink == "mystery_painting" and credits < 25000) then				
				-- Bail if the player doesn't have enough cash on hand.
				-- Plays a chat box message from the NPC as well as a system message.
				nextConversationScreen = conversation:getScreen("insufficient_funds")
				creature:sendSystemMessage("You have insufficient funds")
			elseif (optionLink == "mystery_painting" and credits >= 25000) then
				-- Take 25,000 credits from the player's cash on hand and give player a painting
				creature:subtractCashCredits(25000)
				local pItem = giveItem(pInventory, reward, -1)
				nextConversationScreen = conversation:getScreen("mystery_painting")
				creature:sendSystemMessage("You get a painting!")
				creature:setScreenPlayState(painting_vendor.states.accepted, painting_vendor.questString)
			elseif (optionLink == "negotiate" and creature:hasSkill("combat_smuggler_master") and credits < 18000) then
				-- Bail if the player doesn't have enough cash on hand.
				-- Plays a chat box message from the NPC as well as a system message.
				nextConversationScreen = conversation:getScreen("insufficient_funds")
			elseif (optionLink == "negotiate" and creature:hasSkill("combat_smuggler_master") and credits >= 18000) then
				-- Succeed in the negotiaton
				nextConversationScreen = conversation:getScreen("negotiate_success")
			elseif (optionLink == "negotiate" and creature:hasSkill("combat_smuggler_novice") and credits < 20000) then
				-- Bail if the player doesn't have enough cash on hand.
				-- Plays a chat box message from the NPC as well as a system message.
				nextConversationScreen = conversation:getScreen("insufficient_funds")
			elseif (optionLink == "negotiate" and creature:hasSkill("combat_smuggler_novice") and credits >= 20000) then
				-- Partially succeed in the negotiaton
				nextConversationScreen = conversation:getScreen("negotiate_mid")
			elseif (optionLink == "negotiate") then
				-- Fail the negotiation
				nextConversationScreen = conversation:getScreen("negotiate_fail")
			elseif (optionLink =="mystery_painting_neg_suc") then
				-- Take 18,000 credits from the player's cash on hand and give player a painting
				creature:subtractCashCredits(18000)
				local pItem = giveItem(pInventory, reward, -1)
				nextConversationScreen = conversation:getScreen("mystery_painting")
				creature:sendSystemMessage("You get a painting!")
				creature:setScreenPlayState(painting_vendor.states.accepted, painting_vendor.questString)
			elseif (optionLink =="mystery_painting_neg_mid") then
				-- Take 20,000 credits from the player's cash on hand and give player a painting
				creature:subtractCashCredits(20000)
				local pItem = giveItem(pInventory, reward, -1)
				nextConversationScreen = conversation:getScreen("mystery_painting")
				creature:sendSystemMessage("You get a painting!")
				creature:setScreenPlayState(painting_vendor.states.accepted, painting_vendor.questString)
			end
		end
	end
	-- end of the conversation logic.
	return nextConversationScreen
	
end


function painting_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	-- Plays the screens of the conversation.
	return conversationScreen
end
