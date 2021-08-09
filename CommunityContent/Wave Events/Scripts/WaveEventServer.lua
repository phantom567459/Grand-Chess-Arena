--[[
	WaveEventServer.lua
	- WaveParadigm

	This script connects to all server broadcasts made to WaveEvent, WaveEventToPlayer, and WaveEventToPlayers
	
	It will serialize all arguments sent to those as events written to a networked string, which are then
	parsed by WaveEventClient, their arguments deserialized, and Events fired on each client.
]]--


local eventId = 0 -- starts at 0, increments up forever
local argumentSeparator = "]|["
local eventStringSeparator = "]~["
local tableSeparator = "]t["

local LZW = require(script:GetCustomProperty("LZW"))

local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local SPHERE = script:GetCustomProperty("Sphere"):WaitForObject()
local maxEventsInString = ROOT:GetCustomProperty("EventQueueSize") or 100
if (maxEventsInString <= 0) then
	warn("EventQueueSize must be greater than 0.")
	maxEventsInString = 100
end
local serverEventName = ROOT:GetCustomProperty("ServerBroadcastName") or "WaveEvent"

local events = {}

function GetArgs(...)
	local n = select("#", ...)
	local arg = {}
	for i = 1, n, 1 do
		local a = select(i, ...)
		if (a == nil) then
			a = false -- we're crunching nil down to false so that it will be preserved in lists
		end
		arg[i] = a
	end
		
	return arg
end

function OnWaveEvent(eventName, ...)
	local arg = GetArgs(...)
	if (type(eventName) ~= "string") then
		error("First argument sent to WaveEvent must be EventName")
	end
		
	local eventString = MakeEventString(eventName, "*", arg)
	WriteEventStrings(eventString)
end
Events.Connect(serverEventName, OnWaveEvent)

function OnWaveEventToPlayer(player, eventName, ...)
	local arg = GetArgs(...)
	
	if (type(player) ~= "userdata" or not player:IsA("Player")) then
		error("First argument sent to WaveEventToPlayer must be the Player to send the event to.")
	end
	
	if (type(eventName) ~= "string") then
		error("Second argument sent to WaveEventToPlayer must be EventName")
	end
	
	local eventString = MakeEventString(eventName, player.id, arg)
	WriteEventStrings(eventString)
end
Events.Connect(serverEventName .. "ToPlayer", OnWaveEventToPlayer)

function OnWaveEventToPlayers(players, eventName, ...)
	local arg = GetArgs(...)
	
	if (type(players) ~= "table") then
		error("First argument sent to WaveEventToPlayers must be a table of Players to send the event to.")
	end
	
	-- verify player list
	local playerIds = ""
	for _,p in pairs(players) do
		if (type(p) ~= "userdata" or not p:IsA("Player")) then
			print(p)
			error("First argument sent to WaveEventToPlayers must be a table of Players to send the event to. Found a non-player in the table.")
		else
			playerIds = playerIds .. p.id .. ","
		end
	end
	
	playerIds = playerIds:sub(1, #playerIds - 1) -- remove trailing comma
	
	if (type(eventName) ~= "string") then
		error("Second argument sent to WaveEventToPlayer must be EventName")
	end
	
	local eventString = MakeEventString(eventName, playerIds, arg)
	WriteEventStrings(eventString)
end
Events.Connect(serverEventName .. "ToPlayers", OnWaveEventToPlayers)

-----------

function WriteEventStrings(newEventString)
	events[#events + 1] = newEventString
	if (#events > maxEventsInString) then
		table.remove(events, 1)
	end
	
	local networkedString = ""
	for i = #events, 1, -1 do
		networkedString = networkedString .. events[i] .. eventStringSeparator
	end
	
	networkedString = LZW.compress(networkedString:sub(1, #networkedString - #eventStringSeparator))
	
	--script:SetNetworkedCustomProperty("Events", networkedString)
	SPHERE:SetNetworkedCustomProperty("Events", networkedString)
	script:SetNetworkedCustomProperty("EventId", eventId)
end

-- Returns a string representing the event and all of its arguments
-- IE: 254]|[TestEventName]|[*]|[{@string}This event gets processed by all clients (thus the for arg[3]), and has a single string parameter. Each client will call Events.Broadcast("TestEventName", thisString)
-- The ]|[ is a custom separator that must be avoided in user strings if the parser is to work properly.
-- ]~[ will be used as the separator between eventStrings
function MakeEventString(eventName, playerList, arg)
	eventId = eventId + 1
	local eventString = tostring(eventId) .. argumentSeparator .. eventName .. argumentSeparator .. playerList
	
	for _,v in pairs(arg) do
		eventString = eventString .. argumentSeparator .. StringifyArgument(v)
	end
	
	--print(eventString)
	return eventString
end

-- This function will return a stringified representation of a given object
-- As of the time of this writing it supports: CoreObject, Color, Player, Quaternion, Rotation, Transform, Vector2, Vector3, Vector4, nil, number, string, table
-- Tables can only be lists (not key-value pairs) and cannot be nested, for simplicity's sake
-- Example output: {@string}hello world
function StringifyArgument(arg)
	if (type(arg) == "userdata") then
		-- This is a Core object. Handle logic on a case-by-case basis.
		if (arg:IsA("CoreObject")) then
			return "co" .. arg.id
		elseif (arg:IsA("Player")) then
			return "pl" .. arg.id
		elseif (arg:IsA("Quaternion")) then
			return "qu" .. tostring(arg.x) .. "," .. tostring(arg.y) .. "," .. tostring(arg.z) .. "," .. tostring(arg.w)
		elseif (arg:IsA("Rotation")) then
			return "ro" .. tostring(arg.x) .. "," .. tostring(arg.y) .. "," .. tostring(arg.z)
		elseif (arg:IsA("Transform")) then
			local pos = arg:GetPosition()
			local quat = arg:GetQuaternion()
			local scale = arg:GetScale()
			
			return "tr" .. tostring(pos.x) .. "," .. tostring(pos.y) .. "," .. tostring(pos.z) .. "," .. 
					tostring(quat.x) .. "," .. tostring(quat.y) .. "," .. tostring(quat.z) .. "," .. tostring(quat.w) .. "," .. 
					tostring(scale.x) .. "," .. tostring(scale.y) .. "," .. tostring(scale.z)
		elseif (arg:IsA("Vector2")) then
			return "v2" .. tostring(arg.x) .. "," .. tostring(arg.y)
		elseif (arg:IsA("Vector3")) then
			return "v3" .. tostring(arg.x) .. "," .. tostring(arg.y) .. "," .. tostring(arg.z)
		elseif (arg:IsA("Vector4")) then
			return "v4" .. tostring(arg.x) .. "," .. tostring(arg.y) .. "," .. tostring(arg.z) .. "," .. tostring(arg.w)
		elseif (arg:IsA("Color")) then
			return "cl" .. tostring(arg.r) .. "," .. tostring(arg.g) .. "," .. tostring(arg.b) .. "," .. tostring(arg.a)
		elseif (arg:IsA("CoreObjectReference")) then
			error("CoreObjectReference not supported by WaveEvent. Please send the actual object instead, (Consider sending ref:WaitForObject() instead of just ref)")
		else
			print(arg)
			error(arg.type .. " not supported by WaveEvent. Consider storing the information you want in a string and sending it that way?")
		end
	else
		-- This is a primitive type
		-- The options are: nil, number, string, table
		-- if it's not one of these, just throw an error (no sending functions, CFunctions, or userdata on this side)
		if (type(arg) == "number") then
			return "nu" .. tostring(arg)
		elseif (type(arg) == "string") then
			return "st" .. arg
		elseif (type(arg) == "boolean") then
			return "bo" .. tostring(arg)
		elseif (type(arg) == "table") then
			-- special case, for each value of the table recursively call Stringify Argument, though prevent nested tables
			-- this will ignore keys; if people want to preserve key/value pairs of arbitrary tables they should stringify it themselves
			-- for a list of numbers, this would return something like:
			-- {@table}{@number}72]t[{@number}989]t[{@number}2342
			local stringTable = "ta"
			for _,v in pairs(arg) do
				if (type(v) == "table") then
					error("Nested tables are not supported by WaveEvent.")
				else
					stringTable = stringTable .. StringifyArgument(v) .. tableSeparator
				end
			end
			
			return stringTable:sub(1, #stringTable - #tableSeparator) -- truncate the last ]t[ from the stringified table
		else
			print(arg)
			error("Invalid argument type sent to WaveEvent: " .. type(arg))
		end
	end
end