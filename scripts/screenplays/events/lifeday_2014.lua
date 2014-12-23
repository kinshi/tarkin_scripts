life_day_2014 = ScreenPlay:new { 
	numberOfActs = 1,
	questString = "LD2014", 
	states = {
		accepted = 2,
		bonus = 4,	
	}, 
	questdata = Object:new {
		
		activePlayerName = "initial",
	}
}

registerScreenPlay("life_day_2014", true)

function life_day_2014:start() 
	printf("life_day_2014.screenplaystart\n")

	local pNpc = spawnMobile("corellia", "intro_droid", 1, -155.6, 28.0, -4709.3, 121, 0 )
	local collector = LuaSceneObject(pNpc)
	collector:setCustomObjectName("\\#ee3377Life Day 2014 Gift Vendor")
	local col2creo = LuaCreatureObject(pNpc)
end


function life_day_2014:getActivePlayerName()

	return self.questdata.activePlayerName
end
function life_day_2014:setActivePlayerName(playerName)

	print("Changing playername from " .. self.questdata.activePlayerName .. " to " .. playerName)
	self.questdata.activePlayerName = playerName
	
end



anniversary = Object:new {
	
	
 }


function anniversary:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	
	
	print("------------------------------\n")
	
	-- now let's get the last conversation to really determine whetehr or not we're in the first
	-- screen
	
	local creature = LuaCreatureObject(conversingPlayer)
	
	local convosession = creature:getConversationSession()
	
	
	lastConversation = nil
	
	
	print("getNextConversation() called")
	
	local conversation = LuaConversationTemplate(conversationTemplate)
	
	local nextConversationScreen 
	
	
	if ( conversation ~= nil ) then
		
		-- checking to see if we have a next screen
		if ( convosession ~= nil ) then
			 
			 local session = LuaConversationSession(convosession)
			 
			 if ( session ~= nil ) then
			 	print("casting getlastconversationsreen()")
			 	lastConversationScreen = session:getLastConversationScreen()
			 end
			
	 
		end
		
		
		
		if ( lastConversationScreen == nil ) then
			print("Last conversation is null.  let's try to get the first screen")

			local creature = LuaCreatureObject(conversingPlayer)
			local hasAccepted = creature:hasScreenPlayState(life_day_2014.states.accepted, life_day_2014.questString)
			local resourcedeed = creature:hasScreenPlayState(life_day_2014.states.bonus, life_day_2014.questString)
			
			print("hasAccepted() is " .. hasAccepted) 

			if ( hasAccepted == 0 ) then
			
				print("no screenplaystate so must not have accepted it yet")
				--nextConversationScreen = conversation:getInitialScreen()
				nextConversationScreen = conversation:getScreen("first_screen")
				--self:addQuestOptions(nextConversationScreen)
				
			elseif ( resourcedeed == 1 ) then
				nextConversationScreen = conversation:getScreen("done")

			elseif ( resourcedeed == 0 ) then
				nextConversationScreen = conversation:getScreen("completed")
		end		
			
		else
			
			local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)

			local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
		
			print("optionLink fromn the last screen is .. " .. optionLink)
		
			nextConversationScreen = conversation:getScreen(optionLink)
			
		end
		
	
	end
	

	return nextConversationScreen
	
end

function anniversary:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	
	print("\ntest_convo_handler:runScreenHandlers() called\n")

		
	local screen = LuaConversationScreen(conversationScreen)
	
	local screenID = screen:getScreenID()
	
	print("screenID is " .. screenID)

	if ( screenID == "hangar_house" ) then
		local player = LuaCreatureObject(conversingPlayer)
		local taker = LuaSceneObject(conversingPlayer)
		local playerInv = LuaSceneObject(conversingPlayer)
		local pInv = playerInv:getSlottedObject("inventory")	
		local pItem = giveItem(pInv, "object/tangible/deed/player_house_deed/hangar_house_deed.iff", -1)	
			if (pItem ~= nil) then	
				local item = LuaSceneObject(pItem)	
				item:sendTo(player:_getObject())
				player:sendSystemMessage("Thanks for playing with us!")
				player:setScreenPlayState(life_day_2014.states.accepted, life_day_2014.questString)
			end		

	elseif ( screenID == "tree_house" ) then
		local player = LuaCreatureObject(conversingPlayer)
		local taker = LuaSceneObject(conversingPlayer)
		local playerInv = LuaSceneObject(conversingPlayer)
		local pInv = playerInv:getSlottedObject("inventory")	
		local pItem = giveItem(pInv, "object/tangible/deed/player_house_deed/tree_house_deed.iff", -1)	
			if (pItem ~= nil) then	
				local item = LuaSceneObject(pItem)	
				item:sendTo(player:_getObject())
				player:sendSystemMessage("Thanks for playing with us!")
				player:setScreenPlayState(life_day_2014.states.accepted, life_day_2014.questString)
			end

	elseif ( screenID == "barc_speeder" ) then
			local player = LuaCreatureObject(conversingPlayer)
			local taker = LuaSceneObject(conversingPlayer)
			local playerInv = LuaSceneObject(conversingPlayer)
			local pInv = playerInv:getSlottedObject("inventory")	
			local pItem = giveItem(pInv, "object/tangible/deed/vehicle_deed/barc_speeder_deed.iff", -1)	
				if (pItem ~= nil) then	
					local item = LuaSceneObject(pItem)	
					item:sendTo(player:_getObject())
					player:sendSystemMessage("Thanks for playing with us!")
					player:setScreenPlayState(life_day_2014.states.accepted, life_day_2014.questString)
			end

	elseif ( screenID == "resourcedeed" ) then
			local player = LuaCreatureObject(conversingPlayer)
			local taker = LuaSceneObject(conversingPlayer)
			local playerInv = LuaSceneObject(conversingPlayer)
			local pInv = playerInv:getSlottedObject("inventory")	
			local pItem = giveItem(pInv, "object/tangible/veteran_reward/resource.iff", -1)	
				if (pItem ~= nil) then	
					local item = LuaSceneObject(pItem)	
					item:sendTo(player:_getObject())
					player:sendSystemMessage("Thanks for your continued support!")
					player:setScreenPlayState(life_day_2014.states.bonus, life_day_2014.questString)
			end

		end
	
	return conversationScreen

end
