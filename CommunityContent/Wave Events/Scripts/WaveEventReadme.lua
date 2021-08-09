--[[
	TLDR, I want to start now:
	
	1. Drag the WaveEvent Template into your Hierarchy in the Default Context
	2. Replace any: Events.BroadcastToAllPlayers("EventName" ... )
			  with: Events.Broadcast("WaveEvent", "EventName" ... )
			  
			   any: Events.BroadcastToPlayer(player, "EventName" ... )
			  with: Events.Broadcast("WaveEventToPlayer", player, "EventName" ... )
	3. You're good to go!
]]--


--[[
	WaveEvent by WaveParadigm
	
	WaveEvents are a module designed to supplement the existing Core Event System, and to help improve Server to Client communication.
	They can be used to broadcast information and events to all clients, some clients, or single clients, with no rate limits or size limits!*
	
	As long as you are not sending events faster than your EventQueueSize, you should see guaranteed delivery and execution order of your events on all desired Clients.
	
	WaveEvents serialize any and all arguments sent to them into a Networked Custom Property String which, upon being received by each client, will be deserialized and then
	broadcast as an event on the client. 
	
	There are three types of WaveEvents:
	
	Events.Broadcast("WaveEvent", "ExampleEvent")   									  -- This will send an Event called "ExampleEvent" to all Clients.
	Events.Broadcast("WaveEventToPlayer", winningPlayer, "ExampleEvent")  				  -- This will send an Event called "ExampleEvent" to the player specified.
	Events.Broadcast("WaveEventToPlayers", {player1, player2, player3}, "ExampleEvent")   -- This will send an Event called "ExampleEvent" to the players specified in the list.
	
	TABLE OF CONTENTS
	1. WaveEvent Quickstart
	2. How it Works
	3. Things to Avoid
	4. *Limits and Considerations
	5. Multiple WaveEvent Objects
	
	1. WaveEvent Quickstart
		Using WaveEvents is extremely easy! First, ensure you've dragged out the WaveEvent template and have it somewhere in your hierarchy, in the default context.
		From there, with minor tweaks to how you are broadcasting events, you can get started with WaveEvents! Below are some examples of how you would tweak existing
		Event broadcasts (only for code which runs on the Server) to use WaveEvents.
		
		Old: Events.BroadcastToAllPlayers("VictoryMessage", winningPlayer)
		New: Events.Broadcast("WaveEvent", "VictoryMessage", winningPlayer)
		
		Old: Events.BroadcastToPlayer(whichPlayer, "EarnedCurrency", 35, 0.25)
		New: Events.Broadcast("WaveEventToPlayer", whichPlayer, "EarnedCurrency", 35, 0.25)
		
		Old: local team1 = Game.GetPlayers({includeTeams = 1})
			 for _,p in pairs(team1) do
			 	Events.BroadcastToPlayer(p, "TeamMessage", "This is a team message.", 5)
			 end

		New: Events.Broadcast("WaveEventToPlayers", Game.GetPlayers({includeTeams = 1}), "TeamMessage", "This is a team message.", 5)
		
		It's as simple as that! In any case where you were using Events.BroadcastToAllPlayers or Events.BroadcastToPlayer you can instead simply Events.Broadcast to a WaveEvent which
		will pipe the info down to the client for you. Any client script can listen for the event just like any other event - using Events.Connect("ExampleEvent", OnExampleEvent)
		
	2. How it Works
		When you broadcast to "WaveEvent", all of the parameters you send are dynamically parsed and turned into string representations of themselves, which are then reconstructed into their original
		types by the Client. Not all datatypes are supported.
		The datatypes currently supported by WaveEvent are:
			- CoreObject
				- When you send a CoreObject, WaveEvent will send its ID as a String to the Client. The Client will use World.FindObjectById() to search for the CoreObject. 
				  If it cannot find it (perhaps because the sent object is in a Server Context), WaveEvent will emit a warning unless WarnOnNilObject is disabled in the Root settings.
			- Player
				- When you send a Player, WaveEvent will send its ID as a String to the Client. The Client will use Game.FindPlayer() to search for the Player.
				  If it cannot find it (perhaps because the player left just as the event was sent), WaveEvent will emit a warning unless WarnOnNilPlayer is disabled in the Root settings.
			- Quaternion
			- Rotation
			- Transform
			- Vector2
			- Vector3
			- Vector4
			- Color
			- boolean
			- number
			- string
			- table*
				- Only one-dimensional tables are supported. Tables cannot be nested, and any keys sent as part of a dictionary structure will be lost in the transition.
				- An example of a supported list would be {Player, Player, Player} or even something like {Color, Player, string, number, Vector3, Rotation}
				- The table {name = "Wave", level = 1, exp = 32} would be crushed down to {"Wave", 1, 32} by a WaveEvent, so be sure to translate more complicated tables 
				  into strings ahead of time, and send them through WaveEvent that way.
		NOTE: nil gets converted to false throughout the WaveEvent process. This was necessary to prevent it from getting lost during table packing/unpacking. 
					(If you are interested in helping me fix this feel free to reach out)
					
			  You can still use truthy/falsey checks with your variables (`if (eventPlayer) then` for example) but make sure you're not using checks like `v == nil`, as they will have issues.
				  
		Other datatypes will throw an error when sent. Consider pulling the desired information out on the server, and broadcasting what you need as strings, numbers, Vectors, and so on.
		
	3. Things to Avoid
		There are a few reserved characters for WaveEvent which it uses to serialize and deserialize strings. I tried to keep these as strange as possible to ensure nobody would accidentally run into them,
		but just to be certain make sure you avoid using the strings:
		
		"]|["
		"]~["
		"]t["
		
		These are used during the serialization/deserialization process. Use of these specific strings of characters will cause your events to parse incorrectly.
		
		As mentioned in section 2, avoid using Tables with keys that are not simple increasing integers, as they will be lost during the serialization/deserialization process. Nested tables will throw an error.
		
		NOTE: nil gets converted to false throughout the WaveEvent process. This was necessary to prevent it from getting lost during table packing/unpacking. 
					(If you are interested in helping me fix this feel free to reach out)
					
			  You can still use truthy/falsey checks with your variables (`if (eventPlayer) then` for example) but make sure you're not using checks like `v == nil`, as they will have issues.
		
	4. Limits and Considerations
		WaveEvents have a much higher rate and size limit than the standard Event System, but this is not entirely free from drawbacks. The main thing is that they will typically replicate a bit more slowly than
		standard Events.
		
		EventQueueSize
			The EventQueueSize tracks how many events are stored in the Networked Custom Property String at a time. The lower the number, the quicker it will be to process the events (the string will take less time
			to replicate) However, if this number is too low while events are coming in too quickly, WaveEvent may overwrite events in the string before they've been processed by Clients.
			A good rule of thumb: This number should be higher than the maximum number of events you expect to be sending in a second. If you're seeing events get lost, consider increasing this number.
		
		Networked strings update less often per second than Tick functions and the like, so at high event frequencies you will see multiple events come through in a single chunk. WaveEvent will
		process these events in the order they were sent, but this can result in multiple things happening simultaneously to the player, as they will all be processed on the same frame the client receives them.
		You may consider adding some artificial delay in the Event handler on the Client to help space these things out.
		
	5. Multiple WaveEvent Objects
		One way to further separate noisy events from important events is to use multiple WaveEvent objects.
		
		Each WaveEvent Template Root has a Custom Property called "ServerBroadcastName" which defaults to "WaveEvent". If you wanted a cheap and noisy event stream for VFX spawns which wouldn't clutter other event
		traffic, you could consider dragging another WaveEvent object into the hierarchy, changing ServerBroadcastName from "WaveEvent" to "VFXEvent" and then simply using:
		
		Events.Broadcast("VFXEvent", "MyVFXEvent", param)
		Events.Broadcast("VFXEventToPlayer", player1, param)
		Events.Broadcast("VFXEventToPlayers", {player1, player2}, param)
		
		To write events to it. Keep its queue size low to limit network traffic, if guaranteed delivery is not important. This way, you can separate your event streams by importance.
]]--