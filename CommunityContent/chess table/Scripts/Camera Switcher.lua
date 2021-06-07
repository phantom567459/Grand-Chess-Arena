-------------------------------------------------------------------------------------------------
-- CameraSwitcher.lua
-- Author: Seth Leyens
-- Script that handles the camera view for the player when interacting with a chess table
-- Client Context
-------------------------------------------------------------------------------------------------

local propOverheadBlack = script:GetCustomProperty("OverheadBlack"):WaitForObject()
local propOverheadWhite = script:GetCustomProperty("OverheadWhite"):WaitForObject()
local propDefaultCamera = script:GetCustomProperty("DefaultCamera"):WaitForObject()
local propTutorialUI = script:GetCustomProperty("TutorialUI"):WaitForObject()
local propTutorial_fade = script:GetCustomProperty("tutorial_fade"):WaitForObject().context
local propConfetti = script:GetCustomProperty("Confetti"):WaitForObject()
local propCheer = script:GetCustomProperty("Cheer"):WaitForObject()

local tableNum = script:GetCustomProperty("Parent"):WaitForObject():GetCustomProperty("WhichTable")

local winPlaying = false

local function OnSwitchCamera(player, sitDown, whichTable)

	if whichTable ~= tableNum then
		return
	end
	
	if winPlaying then
		propConfetti:Stop()
		propCheer:Stop()
		winPlaying = false
	end
	
	if sitDown then
		
		while player:GetResource("WhichTeam") == 0 do
			Task.Wait()
		end
			
		if player:GetResource("WhichTeam") == 1 then
			player:SetOverrideCamera(propOverheadWhite)
		else 
			player:SetOverrideCamera(propOverheadBlack)
		end
		
		propTutorialUI.visibility = Visibility.INHERIT
		propTutorial_fade.fadeInUI()
		UI.SetCursorVisible(true)
		UI.SetCanCursorInteractWithUI(true)
	else
		propTutorialUI.visibility = Visibility.FORCE_OFF
		player:ClearOverrideCamera()
		UI.SetCursorVisible(false)
		UI.SetCanCursorInteractWithUI(false)
	end
end

local function ShowWinVFX(whichTable)
	if whichTable == tableNum then
		propConfetti:Play()
		propCheer:Play()
		winPlaying = true
	end
end

local function Init()
	Events.Connect("SwitchCamera", OnSwitchCamera)
	Events.Connect("HasWon", ShowWinVFX)
end

Init()