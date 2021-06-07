
-------------------------------------------------------------------------------------------------
-- SelectCell.lua
-- Author: Seth Leyens
-- Script that handles player input and board interaction for the chess game
-- Client Context
-------------------------------------------------------------------------------------------------


local TILE_PARENT = script:GetCustomProperty("Tiles"):WaitForObject()
local START_SELECTION = script:GetCustomProperty("StartSelection")

local tableNum = script:GetCustomProperty("Parent"):WaitForObject():GetCustomProperty("WhichTable")

local LETTER_KEY_BINDING_PAIRS = {}
LETTER_KEY_BINDING_PAIRS["ability_extra_30"] = "A"
LETTER_KEY_BINDING_PAIRS["ability_extra_43"] = "B"
LETTER_KEY_BINDING_PAIRS["ability_extra_41"] = "C"
LETTER_KEY_BINDING_PAIRS["ability_extra_32"] = "D"
LETTER_KEY_BINDING_PAIRS["ability_extra_22"] = "E"
LETTER_KEY_BINDING_PAIRS["ability_extra_33"] = "F"
LETTER_KEY_BINDING_PAIRS["ability_extra_34"] = "G"
LETTER_KEY_BINDING_PAIRS["ability_extra_35"] = "H"

local NUMBER_KEY_BINDING_PAIRS = {}
NUMBER_KEY_BINDING_PAIRS["ability_extra_1"] = "1"
NUMBER_KEY_BINDING_PAIRS["ability_extra_2"] = "2"
NUMBER_KEY_BINDING_PAIRS["ability_extra_3"] = "3"
NUMBER_KEY_BINDING_PAIRS["ability_extra_4"] = "4"
NUMBER_KEY_BINDING_PAIRS["ability_extra_5"] = "5"
NUMBER_KEY_BINDING_PAIRS["ability_extra_6"] = "6"
NUMBER_KEY_BINDING_PAIRS["ability_extra_7"] = "7"
NUMBER_KEY_BINDING_PAIRS["ability_extra_8"] = "8"


local currentSelectedName = nil --START_SELECTION
local currentSelectedGlow = nil
local localPlayer = Game.GetLocalPlayer()
local firstMoveSelected = false
local possibleMoves = {}

local currentLetter = nil --"A"
local currentNumber = nil --"1"

local checkingBinding = false

local function OnBindingPressed(player, binding)
	
	if player:GetResource("WhichTeam") == 0 or player:GetResource("Table") ~= tableNum or checkingBinding then
		return
	end
	
	if binding == "ability_extra_22" then
		
		if not _G.tutorialOpen then
			Events.BroadcastToServer("LeftGame", player, false, tableNum)
		
			if currentSelectedGlow ~= nil then
				currentSelectedGlow.visibility = Visibility.FORCE_OFF
			end
		
			currentSelectedName = nil --START_SELECTION
		end
		
		return
	end

	
	if binding == "ability_secondary" then
		checkingBinding = true
		
		local hitResult = UI.GetCursorHitResult()
		
		if TILE_PARENT:FindDescendantByName(hitResult.other.name) ~= nil then
		
			Events.BroadcastToServer("GetValidMoves", player, currentSelectedName, tableNum)
		
			while not firstMoveSelected do
				Task.Wait()
			end
		
			if possibleMoves ~= nil and #possibleMoves > 0 then
				for __, move in pairs(possibleMoves) do
					if move == hitResult.other.name then
						Events.BroadcastToServer("MovePiece", currentSelectedName, hitResult.other.name, tableNum)
						--firstMoveSelected = false
						--checkingBinding = false
						break
					end
				end
				
				checkingBinding = false
				firstMoveSelected = false
				return
			else
				firstMoveSelected = false
				checkingBinding = false
				return
			end
		else 
			checkingBinding = false
		end
	end
	
	local newLetter = nil
	local newNumber = nil
	
	local wasClick = false
	
	if binding == "ability_primary" then
		local hitResult = UI.GetCursorHitResult()
		wasClick = true
		
		if TILE_PARENT:FindDescendantByName(hitResult.other.name) ~= nil then
			newLetter = string.sub(hitResult.other.name, 1, 1)
			newNumber = string.sub(hitResult.other.name, 2, 2) 
		else 
			newLetter = currentLetter
			newNumber = currentNumber
		end
	else 
		return
	end	
	
	local oldName = currentSelectedName
	
	if newLetter ~= nil and newNumber ~= nil  and (newLetter .. newNumber) ~= currentSelectedName then
		currentSelectedName = newLetter .. newNumber
		currentLetter = newLetter
		currentNumber = newNumber
	else
		return
	end
	
	if currentSelectedGlow ~= nil then
	
		local keepVisible = false
		
		if not keepVisible then
			currentSelectedGlow.visibility = Visibility.FORCE_OFF
		end
	end
	
	
	currentSelectedGlow = TILE_PARENT:FindDescendantByName(currentSelectedName):GetChildren()[1]
	currentSelectedGlow.visibility = Visibility.INHERIT
end

local function ReceiveValidMoves(validMoves, table)
	if table ~= tableNum then
		return
	end

	if validMoves == nil  or #validMoves == 0 then
		firstMoveSelected = true
		possibleMoves = nil
		print("No valid moves here")
	else 		
		firstMoveSelected = true
		possibleMoves = validMoves
	end
		
end

local function ReceiveValidMovesOverflow(validMoves, table)
	if table ~= tableNum then
		return
	end

	ReceiveValidMoves({CoreString.Split(validMoves, ",")}, table)
end

local function Init()
	localPlayer.bindingPressedEvent:Connect(OnBindingPressed)
	
	Events.Connect("ValidMoveResults", ReceiveValidMoves)
	Events.Connect("ValidMoveResultsOverflow", ReceiveValidMovesOverflow)
end

Init()