-------------------------------------------------------------------------------------------------
-- ChessManagerServer.lua
-- Author: Seth Leyens
-- Script that handles all of the logic for determining valid chess moves and the state of the game
-- Networked Context
-------------------------------------------------------------------------------------------------

local PieceTypes = {}
local Teams = {}
local Chessboard = {}

local capturedPieces = {}

local assignedPlayers = {}
local currentPlayers = {}

local joinedTimes = {}
local overheadSettings = script:GetCustomProperty("OverheadSettings"):WaitForObject()
local defaultSettings = script:GetCustomProperty("DefaultSettings"):WaitForObject()
local propWhiteTrigger = script:GetCustomProperty("WhiteTrigger"):WaitForObject()
local propBlackTrigger = script:GetCustomProperty("BlackTrigger"):WaitForObject()

local blackChair = script:GetCustomProperty("ChairBlack"):WaitForObject()
local whiteChair = script:GetCustomProperty("ChairWhite"):WaitForObject()

local tableNum = script:GetCustomProperty("Parent"):WaitForObject():GetCustomProperty("WhichTable")

local playersInGame = 0

local promotionTemplates = {}
promotionTemplates[1] = {}
promotionTemplates[1][2] = script:GetCustomProperty("RookPromoteWhite")
promotionTemplates[1][3] = script:GetCustomProperty("KnightPromoteWhite")
promotionTemplates[1][4] = script:GetCustomProperty("BishopPromoteWhite")
promotionTemplates[1][5] = script:GetCustomProperty("QueenPromoteWhite")

promotionTemplates[2] = {}
promotionTemplates[2][2] = script:GetCustomProperty("RookPromoteBlack")
promotionTemplates[2][3] = script:GetCustomProperty("KnightPromoteBlack")
promotionTemplates[2][4] = script:GetCustomProperty("BishopPromoteBlack")
promotionTemplates[2][5] = script:GetCustomProperty("QueenPromoteBlack")


local promotesTo = {}
promotesTo[1] = 5
promotesTo[2] = 5

local whiteInCheck = false
local blackInCheck = false

local isMate = false

local whiteInCheckPrevious = whiteInCheck
local blackInCheckPrevious = blackInCheck

local castlePossible = {}

local castleRequirements = {}

local kingPositions = {}

local whoseTurn = 0

local isCastling = false

local IntegerToAxes = {{"1", "A"},{"2", "B"},{"3", "C"},{"4", "D"},{"5", "E"},{"6", "F"},{"7", "G"},{"8","H"}}
local AxesToInteger = {}
AxesToInteger["1"] = 1
AxesToInteger["2"] = 2
AxesToInteger["3"] = 3
AxesToInteger["4"] = 4
AxesToInteger["5"] = 5
AxesToInteger["6"] = 6
AxesToInteger["7"] = 7
AxesToInteger["8"] = 8

AxesToInteger["A"] = 1
AxesToInteger["B"] = 2
AxesToInteger["C"] = 3
AxesToInteger["D"] = 4
AxesToInteger["E"] = 5
AxesToInteger["F"] = 6
AxesToInteger["G"] = 7
AxesToInteger["H"] = 8

local KNIGHT_MOVES = {
    Vector2.New(2, 1),
	Vector2.New(1,2),
	Vector2.New(-1, 2),
	Vector2.New(-2, 1),
	Vector2.New(-2, -1),
	Vector2.New(-1, -2),
	Vector2.New(1, -2),
	Vector2.New(2, -1)
}

local BISHOP_DIRECTIONS = {
	Vector2.New(1,1),
	Vector2.New(1, -1),
	Vector2.New(-1, 1),
	Vector2.New(-1, -1)
}

local KING_MOVES = {
	Vector2.New(1,1),
	Vector2.New(-1,-1),
	Vector2.New(1,-1),
	Vector2.New(-1, 1),
	Vector2.New(0, 1),
	Vector2.New(1, 0),
	Vector2.New(-1, 0),
	Vector2.New(0, -1)
}


function Tick(deltaTime)
	if blackInCheckPrevious ~= blackInCheck or whiteInCheckPrevious ~= whiteInCheck then
		for player, trigger in pairs(assignedPlayers) do
			Events.BroadcastToPlayer(player, "UpdateCheck", blackInCheck, whiteInCheck, isMate)
		end
		
		Events.BroadcastToAllPlayers("UpdateScoreboard")
	end
	
	blackInCheckPrevious = blackInCheck
	whiteInCheckPrevious = whiteInCheck
end

local function ValidPawnMoves(playerTeam, boardPosition, hasMoved)

	local validMoves = {}
	
	local numPosition = string.sub(boardPosition, 2, 2)
	local letterPosition = string.sub(boardPosition, 1, 1)
	
	local coords = {AxesToInteger[letterPosition], AxesToInteger[numPosition]}
	
	local yDirection = 0
	
	if playerTeam == Teams.Black then
		yDirection = -1
	else 
		yDirection = 1
	end
	
	local forwardY = coords[2] + yDirection
	if forwardY > 0 and forwardY < 9 then
		local forwardPosition = letterPosition .. tostring(forwardY)
		if Chessboard[forwardPosition] == nil then
			
			validMoves[#validMoves + 1] = forwardPosition
			if hasMoved == nil or hasMoved == false then
				local doubleForwardY = coords[2] + (2 * yDirection)
				
				if doubleForwardY > 0 and doubleForwardY < 9 then
					local doubleForwardPosition = letterPosition .. tostring(doubleForwardY)
					
					if Chessboard[doubleForwardPosition] == nil then
						validMoves[#validMoves + 1] = doubleForwardPosition
					end
				end
			end
		end
	end
	
	local letterCoords = IntegerToAxes[coords[1] - 1]
	local leftLetter = nil
	
	if letterCoords ~= nil then
		leftLetter = letterCoords[2]
	end
	
	local rightLetter = nil 
	letterCoords = IntegerToAxes[coords[1] + 1]
	
	if letterCoords ~= nil then
		rightLetter = letterCoords[2]
	end
	
	if leftLetter ~= nil then
		local leftDiagonal = leftLetter .. tostring(forwardY)
		
		if Chessboard[leftDiagonal] ~= nil and Chessboard[leftDiagonal].team ~= playerTeam then
			validMoves[#validMoves + 1] = leftDiagonal
		end
	end
	
	if rightLetter ~= nil then
		local rightDiagonal = rightLetter .. tostring(forwardY)
		if Chessboard[rightDiagonal] ~= nil and Chessboard[rightDiagonal].team ~= playerTeam then
			validMoves[#validMoves + 1] = rightDiagonal
		end
	end
	
	return validMoves
end

local function ValidRookMoves(playerTeam, boardPosition)
	
	local validMoves = {}
	
	local numPosition = string.sub(boardPosition, 2, 2)
	local letterPosition = string.sub(boardPosition, 1, 1)
	
	local coords = {AxesToInteger[letterPosition], AxesToInteger[numPosition]}
	
	--Check positions to the right
	for i = coords[1], 8 do
		local positionToCheck = IntegerToAxes[i][2] .. numPosition
		if positionToCheck ~= boardPosition then
			if Chessboard[positionToCheck] == nil then
				validMoves[#validMoves + 1] = positionToCheck
			elseif Chessboard[positionToCheck].team ~= playerTeam then
				validMoves[#validMoves + 1] = positionToCheck
				break
			else 
				break
			end
		end
	end
	
	--Check positions to the left
	for i = coords[1], 1, -1 do
		local positionToCheck = IntegerToAxes[i][2] .. numPosition
		if positionToCheck ~= boardPosition then
			if Chessboard[positionToCheck] == nil then
				validMoves[#validMoves + 1] = positionToCheck
			elseif Chessboard[positionToCheck].team ~= playerTeam then
				validMoves[#validMoves + 1] = positionToCheck
				break
			else 
				break
			end
		end
	end
	
	--Check backwards positions
	for i = coords[2], 1, -1 do 
		local positionToCheck =  letterPosition .. IntegerToAxes[i][1]
		if positionToCheck ~= boardPosition then
			if Chessboard[positionToCheck] == nil then
				validMoves[#validMoves + 1] = positionToCheck
			elseif Chessboard[positionToCheck].team ~= playerTeam then
				validMoves[#validMoves + 1] = positionToCheck
				break
			else 
				break
			end
		end
	end
	
	--Check forwards positions
	for i = coords[2], 8 do 
		local positionToCheck =  letterPosition .. IntegerToAxes[i][1]
		if positionToCheck ~= boardPosition then
			if Chessboard[positionToCheck] == nil then
				validMoves[#validMoves + 1] = positionToCheck
			elseif Chessboard[positionToCheck].team ~= playerTeam then
				validMoves[#validMoves + 1] = positionToCheck
				break
			else 
				break
			end
		end
	end
	return validMoves
end

local function ValidBishopMoves(playerTeam, boardPosition)
	local validMoves = {}
	
	local numPosition = string.sub(boardPosition, 2, 2)
	local letterPosition = string.sub(boardPosition, 1, 1)
	
	local coords = Vector2.New(AxesToInteger[letterPosition], AxesToInteger[numPosition])
	
	for i = 1, #BISHOP_DIRECTIONS do
		local tempCoords = coords + BISHOP_DIRECTIONS[i]
	
		while tempCoords.x < 9 and tempCoords.x > 0 and tempCoords.y < 9 and tempCoords.y > 0 do
			local positionToCheck = IntegerToAxes[tempCoords.x][2] .. IntegerToAxes[tempCoords.y][1]
			
			if Chessboard[positionToCheck] == nil then
				validMoves[#validMoves + 1] = positionToCheck
			elseif Chessboard[positionToCheck].team ~= playerTeam then
				validMoves[#validMoves + 1] = positionToCheck
				break
			else
				break
			end
			
			tempCoords = tempCoords + BISHOP_DIRECTIONS[i]
		end
	end
	return validMoves
end

local function ValidKnightMoves(playerTeam, boardPosition)
	local movesOnBoard = {}
		
	local numPosition = string.sub(boardPosition, 2, 2)
	local letterPosition = string.sub(boardPosition, 1, 1)
	
	local coords = Vector2.New(AxesToInteger[letterPosition], AxesToInteger[numPosition])
	
	for i = 1, #KNIGHT_MOVES do
		local newCoords = coords + KNIGHT_MOVES[i]
		
		if newCoords.x < 9 and newCoords.x > 0 and newCoords.y < 9 and newCoords.y > 0 then
			movesOnBoard[#movesOnBoard + 1] = IntegerToAxes[newCoords.x][2] .. IntegerToAxes[newCoords.y][1]
		end
	end
	
	local validMoves = {}
	
	for i = 1, #movesOnBoard do
		if Chessboard[movesOnBoard[i]] == nil or Chessboard[movesOnBoard[i]].team ~= playerTeam then
			validMoves[#validMoves + 1] = movesOnBoard[i]
		end
	end
	
	return validMoves
end

local function ValidQueenMoves(playerTeam, boardPosition)
	local validDiagonal = ValidBishopMoves(playerTeam, boardPosition)
	local validStraight = ValidRookMoves(playerTeam, boardPosition)
	
	local validMoves = validDiagonal
	
	for i = 1, #validStraight do
		validMoves[#validMoves + 1] = validStraight[i]
	end
	return validMoves
end

local function ValidKingMoves(playerTeam, boardPosition)
	local validMoves = {}
	
	local numPosition = string.sub(boardPosition, 2, 2)
	local letterPosition = string.sub(boardPosition, 1, 1)
	
	local coords = Vector2.New(AxesToInteger[letterPosition], AxesToInteger[numPosition])
	
	for i = 1, #KING_MOVES do
		local tempCoords = coords + KING_MOVES[i]
	
		if tempCoords.x < 9 and tempCoords.x > 0 and tempCoords.y < 9 and tempCoords.y > 0 then
			local positionToCheck = IntegerToAxes[tempCoords.x][2] .. IntegerToAxes[tempCoords.y][1]
			
			if Chessboard[positionToCheck] == nil then
				validMoves[#validMoves + 1] = positionToCheck
			elseif Chessboard[positionToCheck].team ~= playerTeam then
				validMoves[#validMoves + 1] = positionToCheck
			end
		end
	end
	
	return validMoves
end

local function GetValidMoves(playerTeam, boardPosition)
	local pieceData = Chessboard[boardPosition]
	
	if pieceData == nil or pieceData.team ~= playerTeam then
		return nil
	end
	
	local validMoves = {}
	
	if pieceData.moveType == PieceTypes.Pawn then
		return ValidPawnMoves(playerTeam, boardPosition, pieceData.hasMoved)
	elseif pieceData.moveType == PieceTypes.Rook then
		return ValidRookMoves(playerTeam, boardPosition)
	elseif pieceData.moveType == PieceTypes.Knight then
		return ValidKnightMoves(playerTeam, boardPosition)
	elseif pieceData.moveType == PieceTypes.Bishop then
		return ValidBishopMoves(playerTeam, boardPosition)
	elseif pieceData.moveType == PieceTypes.Queen then
		return ValidQueenMoves(playerTeam, boardPosition)
	elseif pieceData.moveType == PieceTypes.King then
		return ValidKingMoves(playerTeam, boardPosition)
	else
		warn("This code should be unreachable")
		return nil
	end
	
end

local function RequestMoves(player, boardPosition, table)
	local team = player:GetResource("WhichTeam")
	
	if table ~= tableNum then
		return
	end
	
	if team ~= whoseTurn then
		Events.BroadcastToPlayer(player, "ValidMoveResults", nil, tableNum)
		return
	end
	
	local validMoves = GetValidMoves(team, boardPosition)
		
	local resultCode = Events.BroadcastToPlayer(player, "ValidMoveResults", validMoves, tableNum)
	
	if resultCode == 2 then
	  local stringToSend = ""
	  
	  for i = 1, #validMoves do
	  	stringToSend = stringToSend .. validMoves[i]
	  	
	  	if i ~= #validMoves then
	  		stringToSend = stringToSend .. ","
	  	end
	  	
	  end
	  
	  Events.BroadcastToPlayer(player, "ValidMoveResultsOverflow", stringToSend, tableNum)
	end
end

local function ApplySettings(player, isOverhead)
	if isOverhead then
		overheadSettings:ApplyToPlayer(player)
		player.canMount = false
		player:SetMounted(false)
	else 
		defaultSettings:ApplyToPlayer(player)
		player.canMount = true
	end
end


local function OnPlayerLeft(player, leftServer, table)
	if table ~= tableNum then
		return
	end

	if not leftServer then				
		if os.time() - joinedTimes[player] < 3 then
			return
		end
		
		Events.BroadcastToPlayer(player, "UpdateEverything", false, false, false, -1, false, false)
		player:SetResource("WhichTeam", 0)
		player:SetResource("Table", tableNum)
		ApplySettings(player, false)
		Task.Wait()
		Events.BroadcastToPlayer(player, "SwitchCamera", player, false, tableNum)
		player.animationStance = "unarmed_stance"
		Task.Wait(1)
		player:DisableRagdoll()
	end
	
	if assignedPlayers[player] ~= nil then
		local temp = assignedPlayers[player]
		assignedPlayers[player] = nil
		playersInGame = playersInGame - 1
		
		Task.Wait(3)
		temp.isInteractable = true
	end	

end

local function IsInTable(searchValue, table)
	for key, value in pairs(table) do
		if value == searchValue then
			return true
		end
	end
	
	return false
end

local function IsInCheck(board, teamToCheck, kingOverride)
	--A hacky way to avoid having to rewrite the valid move functions to fit this
	local originalChessboard = Chessboard
	Chessboard = board 
	
	local kingPosition = kingPositions[teamToCheck]
	local checkingPieces = {}
	
	if kingOverride ~= nil then
		kingPosition = kingOverride
	end
	
	local enemyTeam = 0
	
	if teamToCheck == Teams.White then
		enemyTeam = Teams.Black
	else 
		enemyTeam = Teams.White
	end
	
	local queenMoves = ValidQueenMoves(teamToCheck, kingPosition)
	local knightMoves = ValidKnightMoves(teamToCheck, kingPosition)
	
	local inCheck = false
	
	for __, position in ipairs(knightMoves) do
		if board[position] ~= nil and board[position].moveType == PieceTypes.Knight then
			inCheck = true
			checkingPieces[#checkingPieces + 1] = position
		end
	end
	
	for __, position in ipairs(queenMoves) do
		if board[position] ~= nil then
			local data = board[position]
			local foundCheck = false
			
			if data.moveType == PieceTypes.Queen then
				foundCheck = true
			elseif data.moveType == PieceTypes.Rook then
				if IsInTable(kingPosition, ValidRookMoves(enemyTeam, position)) then
					foundCheck = true
				end
			elseif data.moveType == PieceTypes.Bishop then
				if IsInTable(kingPosition, ValidBishopMoves(enemyTeam, position)) then
					foundCheck = true
				end
			elseif data.moveType == PieceTypes.King then
				if IsInTable(kingPosition, ValidKingMoves(enemyTeam, position)) then
					foundCheck = true
				end
			elseif data.moveType == PieceTypes.Pawn then
				if IsInTable(kingPosition, ValidPawnMoves(enemyTeam, position, data.hasMoved)) then
					foundCheck = true
				end
			end
			
			if foundCheck then
				inCheck = true
				checkingPieces[#checkingPieces + 1] = position
			end	
		end
	end
	
	Chessboard = originalChessboard
	
	return inCheck, checkingPieces
end

local function CopyTable(src, dest)
	for index, value in pairs(src) do
		if type(value) == "table" then
			dest[index] = {}
			CopyTable(value, dest[index])
		else
			dest[index] = value
		end
	end
end

local function CanCastle(team)
	
	--The king has not previously moved
	--The rook has not previously moved
	if not castlePossible[team] then
		return false
	end
	
	--The king is not currently in check
	if (team == Teams.White and whiteInCheck) or (team == Teams.Black and blackInCheck) then
		return false
	end
	
	local tilesToCheck = castleRequirements[team].toCheck
	
	--There are no pieces between the king and rook
	if Chessboard[tilesToCheck[1]] ~= nil or Chessboard[tilesToCheck[2]] ~= nil then
		return false
	end
	
	--The king will not pass through a square that is under attack
	--The king will not end up in check
	local isBishopSquareUnderAttack = IsInCheck(Chessboard, team, tilesToCheck[1])
	local isKnightSquareUnderAttack = IsInCheck(Chessboard, team, tilesToCheck[2])
	
	if isBishopSquareUnderAttack or isKnightSquareUnderAttack then
		return false
	else 
		return true
	end
end

local function IsCheckmate(teamToCheck, checkingPieces, board, kingOverride)
	local otherTeam = teamToCheck
	
	if teamToCheck == Teams.White then
		otherTeam = Teams.Black 
	else 
		otherTeam = Teams.White 
	end
	
	local originalChessboard = Chessboard
	Chessboard = board
	
	--Grab all the possible king moves
	local possibleKingMoves = ValidKingMoves(teamToCheck, kingPositions[teamToCheck])
	
	local checkmate = true
	
	for i = 1, #possibleKingMoves do
		local hypotheticalBoard = {}
		CopyTable(board, hypotheticalBoard)
		local king = hypotheticalBoard[kingPositions[teamToCheck]]
		hypotheticalBoard[kingPositions[teamToCheck]] = nil
		hypotheticalBoard[possibleKingMoves[i]] = king 
		if not IsInCheck(hypotheticalBoard, teamToCheck, possibleKingMoves[i]) then
			checkmate = false
			break
		end
	end
	
	if checkmate then
		if #checkingPieces > 1 then
			checkmate = true
		else
			local capturable, from = IsInCheck(board, otherTeam, checkingPieces[1])
			
			
			if capturable then
				for i = 1, #from do 
					--Since we've already checked the king movement in the earlier logic, no need to do it again
					if board[from[i]].moveType == PieceTypes.King then
						capturable = false
					else
						local hypotheticalBoard = {}
						CopyTable(board, hypotheticalBoard)
						local movingPiece = hypotheticalBoard[from[i]]
						hypotheticalBoard[checkingPieces[1]] = movingPiece
						hypotheticalBoard[from[i]] = nil 
					
						capturable = not IsInCheck(hypotheticalBoard, teamToCheck)
					end
					
					if capturable then
						break
					end
				end
			end
			
			
			if not capturable then
				if board[checkingPieces[1]].moveType ~= PieceTypes.Knight then
					--Now we need to check if the piece can be blocked
					local numberPositionK = AxesToInteger[string.sub(kingPositions[teamToCheck], 2, 2)]
					local letterPositionK = AxesToInteger[string.sub(kingPositions[teamToCheck], 1, 1)]
					
					local numberPositionA = AxesToInteger[string.sub(checkingPieces[1], 2, 2)]
					local letterPositionA = AxesToInteger[string.sub(checkingPieces[1], 1, 1)]
					
					local step = Vector2.New(0,0)
					
					local numDiff = numberPositionA - numberPositionK
					local letterDiff = letterPositionA - letterPositionK
					
					if numDiff > 0 then
						step.y = 1
					elseif numDiff < 0 then
						step.y = -1
					end
					
					if letterDiff > 0 then
						step.x = 1
					elseif letterDiff < 0 then
						step.x = -1
					end
					
					local destination = Vector2.New(letterPositionK, numberPositionK)
					local nextStep = Vector2.New(letterPositionA, numberPositionA) - step
					
					local blockable = false
					
					while nextStep ~= destination do
						local nextStepString = IntegerToAxes[nextStep.x][2] .. IntegerToAxes[nextStep.y][1]
						blockable, from = IsInCheck(board, otherTeam, nextStepString)
						
						if blockable then
							for i = 1, #from do 
								--Since we've already checked the king movement in the earlier logic, no need to do it again
								if board[from[i]].moveType == PieceTypes.King then
									blockable = false
								else
									local hypotheticalBoard = {}
									CopyTable(board, hypotheticalBoard)
									local movingPiece = hypotheticalBoard[from[i]]
									hypotheticalBoard[nextStepString] = movingPiece
									hypotheticalBoard[from[i]] = nil
					
									blockable = not IsInCheck(hypotheticalBoard, teamToCheck)
								end
								
								if blockable then
									break
								end
							end --End for loop
						end -- End if statement
						
						if blockable then
							checkmate = false
							break
						end
						
						nextStep = nextStep - step
					end --End while loop
				end -- End if statement
				
			else 
				checkmate = false
			end
		end
	end
	
	Chessboard = originalChessboard
	return checkmate
end

local function DoCastle(team, table)
	
	if table ~= tableNum then
		return
	end

	if team == whoseTurn then
		isCastling = true
		local kingStart = kingPositions[team]
		local kingEnd = castleRequirements[team].toCheck[2]
		local king = Chessboard[kingStart]
		
		local rookStart = castleRequirements[team].rookLocation
		local rookEnd = castleRequirements[team].toCheck[1]
		local rook = Chessboard[rookStart]
		
		--Calculate the King movement
		local numberMovementK = AxesToInteger[string.sub(kingStart,2,2)] - AxesToInteger[string.sub(kingEnd,2,2)]
		local letterMovementK = AxesToInteger[string.sub(kingEnd,1,1)] - AxesToInteger[string.sub(kingStart,1,1)]
		local newPositionK = king.objData.obj:GetPosition()
	
		newPositionK.y = newPositionK.y + (400 * numberMovementK)
		newPositionK.x = newPositionK.x + (400 * letterMovementK)
		
		--Now calculate the rook movement
		local numberMovementR = AxesToInteger[string.sub(rookStart,2,2)] - AxesToInteger[string.sub(rookEnd,2,2)]
		local letterMovementR = AxesToInteger[string.sub(rookEnd,1,1)] - AxesToInteger[string.sub(rookStart,1,1)]
		local newPositionR = rook.objData.obj:GetPosition()
	
		newPositionR.y = newPositionR.y + (400 * numberMovementR)
		newPositionR.x = newPositionR.x + (400 * letterMovementR)
		
		local nextTurn = 0
	
		if whoseTurn == Teams.White then
			nextTurn = Teams.Black
		else 
			nextTurn = Teams.White
		end
	

		kingPositions[whoseTurn] = kingEnd
		rook.objData.usedInCastle = false
		castlePossible[whoseTurn] = false
		
		Chessboard[kingStart] = nil
		Chessboard[rookStart] = nil
		Chessboard[kingEnd] = king 
		Chessboard[rookEnd] = rook
			
	
		whoseTurn = 0
		
		king.objData.obj:MoveTo(newPositionK, 2, true)
		rook.objData.obj:MoveTo(newPositionR, 2, true)
	
		Task.Wait(2)
		
		local checkingPieces = nil
		
		if team == Teams.White then 
			blackInCheck, checkingPieces = IsInCheck(Chessboard, Teams.Black)
			
			if blackInCheck then
				if IsCheckmate(Teams.Black, checkingPieces) then
					isMate = true
					if Object.IsValid(currentPlayers[Teams.Black]) then
						currentPlayers[Teams.Black]:AddResource("Losses", 1)
					end
			
					if Object.IsValid(currentPlayers[Teams.White]) then
						currentPlayers[Teams.White]:AddResource("Wins", 1)
						Events.BroadcastToPlayer(currentPlayers[Teams.White], "HasWon", tableNum)
					end		
				end
			end
		else 
			whiteInCheck, checkingPieces = IsInCheck(Chessboard, Teams.White)
			if whiteInCheck then
				if IsCheckmate(Teams.White, checkingPieces) then
					isMate = true
					if Object.IsValid(currentPlayers[Teams.Black]) then
						currentPlayers[Teams.Black]:AddResource("Wins", 1)
						Events.BroadcastToPlayer(currentPlayers[Teams.Black], "HasWon", tableNum)
					end
			
					if Object.IsValid(currentPlayers[Teams.White]) then
						currentPlayers[Teams.White]:AddResource("Losses", 1)
					end
					
				end
			end
		end
			
		for player, assignedTrigger in pairs(assignedPlayers) do 
			if player ~= nil then			
				Events.BroadcastToPlayer(player, "NewTurn", nextTurn)
			end
		end
		
		isCastling = false
		whoseTurn = nextTurn
	else 
		return
	end
end

local function DoPieceMovement(selectedName, destinationName, table)

	if isCastling  or table ~= tableNum then
		return
	end
	
	local piece = Chessboard[selectedName]
	
	local substitute = nil
		
	local hypotheticalBoard = {}
	CopyTable(Chessboard, hypotheticalBoard)
	
	hypotheticalBoard[selectedName] = nil
	hypotheticalBoard[destinationName] = piece 
	
	if piece.moveType == PieceTypes.Pawn then
		local destinationNumber = string.sub(destinationName, 2, 2)
		if piece.team == Teams.White and destinationNumber == "8" then
			substitute = {objData = nil, moveType = promotesTo[Teams.White], team = Teams.White }
			hypotheticalBoard[destinationName] = substitute
		elseif piece.team == Teams.Black and destinationNumber == "1" then
			substitute = {objData = nil, moveType = promotesTo[Teams.Black], team = Teams.Black }
			hypotheticalBoard[destinationName] = substitute
		end
	end
	
	local kingOverrideBlack = nil
	local kingOverrideWhite = nil
	
	if piece.moveType == PieceTypes.King then
		if piece.team == Teams.White then
			kingOverrideWhite = destinationName
		else 
			kingOverrideBlack = destinationName
		end
	end
	
 	local isBlackInCheck, checkingPiecesBlack = IsInCheck(hypotheticalBoard, Teams.Black, kingOverrideBlack) 
	local isWhiteInCheck, checkingPiecesWhite = IsInCheck(hypotheticalBoard, Teams.White, kingOverrideWhite)
	
	if whoseTurn == Teams.White and isWhiteInCheck then
		return
	elseif whoseTurn == Teams.Black and isBlackInCheck then
		return
	end
	
	if whoseTurn == Teams.White and isBlackInCheck then
		if IsCheckmate(Teams.Black, checkingPiecesBlack, hypotheticalBoard, kingOverrideWhite) then
			isMate = true
			if Object.IsValid(currentPlayers[Teams.Black]) then
				currentPlayers[Teams.Black]:AddResource("Losses", 1)
			end
			
			if Object.IsValid(currentPlayers[Teams.White]) then
				currentPlayers[Teams.White]:AddResource("Wins", 1)
				Events.BroadcastToPlayer(currentPlayers[Teams.White], "HasWon", tableNum)
			end
			
		end
	elseif whoseTurn == Teams.Black and isWhiteInCheck then
		if IsCheckmate(Teams.White, checkingPiecesWhite, hypotheticalBoard, kingOverrideBlack) then
			isMate = true
			if Object.IsValid(currentPlayers[Teams.Black]) then
				currentPlayers[Teams.Black]:AddResource("Wins", 1)
				Events.BroadcastToPlayer(currentPlayers[Teams.Black], "HasWon", tableNum)
			end
			
			if Object.IsValid(currentPlayers[Teams.White]) then
				currentPlayers[Teams.White]:AddResource("Losses", 1)
			end
			
		end
	end
	
	blackInCheck = isBlackInCheck
	whiteInCheck = isWhiteInCheck
	
	
	if Chessboard[destinationName] ~= nil then
	
		local capturedObjData = Chessboard[destinationName].objData
		
		if capturedObjData.capture == nil then
			capturedObjData.obj:Destroy()
		else 
			capturedPieces[#capturedPieces + 1] = Chessboard[destinationName]
		
			capturedObjData.obj:SetWorldPosition(capturedObjData.capture)
		end 
		
		if piece.moveType == PieceTypes.Pawn then 
			piece.hasMoved = true
		end
		Chessboard[destinationName] = piece
		Chessboard[selectedName] = nil
	else
		if piece.moveType == PieceTypes.Pawn then 
			piece.hasMoved = true
		end
		Chessboard[destinationName] = piece
		Chessboard[selectedName] = nil
	end
	
	
	local numberMovement = AxesToInteger[string.sub(selectedName,2,2)] - AxesToInteger[string.sub(destinationName,2,2)]
	
	local letterMovement = AxesToInteger[string.sub(destinationName,1,1)] - AxesToInteger[string.sub(selectedName,1,1)]
	
	local newPosition = piece.objData.obj:GetPosition()
	
	newPosition.y = newPosition.y + (400 * numberMovement)
	newPosition.x = newPosition.x + (400 * letterMovement)
		
	local nextTurn = 0
	
	if whoseTurn == Teams.White then
		nextTurn = Teams.Black
	else 
		nextTurn = Teams.White
	end
	
	if piece.moveType == PieceTypes.King then
		kingPositions[whoseTurn] = destinationName
		castlePossible[whoseTurn] = false
	elseif piece.moveType == PieceTypes.Rook and piece.objData.usedInCastle then
		piece.objData.usedInCastle = false
		castlePossible[whoseTurn] = false
	end
	
	whoseTurn = 0
	
	piece.objData.obj:MoveTo(newPosition, 1, true)
	
	Task.Wait(1)
	
	if piece.moveType == PieceTypes.Pawn and substitute ~= nil then
		capturedPieces[#capturedPieces + 1] = piece 
		
		local piecePosition = piece.objData.obj:GetPosition()
		local pieceRotation = piece.objData.obj:GetRotation()
		local pieceParent = piece.objData.obj.parent
		
		--Give it a frame to make sure it grabs the above data
		Task.Wait()
		
		piece.objData.obj:SetWorldPosition(piece.objData.capture)
		
		
		local substitutePiece = World.SpawnAsset(promotionTemplates[piece.team][substitute.moveType], {parent = pieceParent, position = piecePosition, rotation = pieceRotation})
		
		substitute.objData = {obj = substitutePiece, originalPosition = nil, capture = nil}
		
		Chessboard[destinationName] = substitute
	end
	
	local canBlackCastle = CanCastle(Teams.Black)
	local canWhiteCastle = CanCastle(Teams.White)
	
	for player, assignedTrigger in pairs(assignedPlayers) do 
		if player ~= nil then
			if player:GetResource("WhichTeam") == Teams.White then
				Events.BroadcastToPlayer(player, "UpdateCastle", canWhiteCastle)
			elseif player:GetResource("WhichTeam") == Teams.Black then
				Events.BroadcastToPlayer(player, "UpdateCastle", canBlackCastle)
			end
			
			Task.Wait()
			
			Events.BroadcastToPlayer(player, "NewTurn", nextTurn)
		end
	end
	
	whoseTurn = nextTurn
end

local function Reset()
	for __, piece in pairs(Chessboard) do 
		if piece.moveType ~= PieceTypes.King and piece.objData.capture == nil then
			piece.objData.obj:Destroy()
		end
	end
	
	Chessboard = {}
	CopyTable(_G.DEFAULT_CHESSBOARD[tableNum], Chessboard)
	
	for __, piece in pairs(Chessboard) do 
		piece.objData.obj:SetWorldPosition(piece.objData.originalPosition)
	end
	
	capturedPieces = {}

	whiteInCheck = false
	blackInCheck = false

    isMate = false

	castlePossible[Teams.White] = true
	castlePossible[Teams.Black] = true


	kingPositions[Teams.Black] = "E8"
	kingPositions[Teams.White] = "E1"

	whoseTurn = Teams.White

    isCastling = false
end

local function OnPlayerJoined(trigger, player, team)

	if isMate and playersInGame == 0 then
		Reset()
	end
	
	joinedTimes[player] = os.time()
	player:SetResource("Table", tableNum)
	
	if team == 1 then
		currentPlayers[Teams.White] = player
		playersInGame = playersInGame + 1
		assignedPlayers[player] = trigger
		trigger.isInteractable = false
		player:SetResource("WhichTeam", Teams.White)
		promotesTo[Teams.White] = PieceTypes.Queen
		Task.Wait()
		Events.BroadcastToPlayer(player, "SwitchCamera", player, true, tableNum)
		ApplySettings(player, true)
		local showCastle = CanCastle(Teams.White) and whoseTurn == 1
		Events.BroadcastToPlayer(player, "UpdateEverything", blackInCheck, whiteInCheck, isMate, whoseTurn, showCastle, true)
		player.animationStance = "unarmed_sit_car_low"
		player:SetWorldPosition(whiteChair:GetWorldPosition())
		--player:SetWorldTransform(whiteChair:GetWorldTransform())
		player:SetWorldRotation(Rotation.New(0,0,0))
		Task.Wait(1)
		player:EnableRagdoll("left_knee", 1)
		player:EnableRagdoll("right_knee", 1)
	elseif team == 2 then
		currentPlayers[Teams.Black] = player
		playersInGame = playersInGame + 1
		assignedPlayers[player] = trigger
		trigger.isInteractable = false
		player:SetResource("WhichTeam", Teams.Black)
		promotesTo[Teams.Black] = PieceTypes.Queen
		Task.Wait()
		Events.BroadcastToPlayer(player, "SwitchCamera", player, true, tableNum)
		ApplySettings(player, true)
		local showCastle = CanCastle(Teams.Black) and whoseTurn == 2
		Events.BroadcastToPlayer(player, "UpdateEverything", blackInCheck, whiteInCheck, isMate, whoseTurn, showCastle, true)
		player.animationStance = "unarmed_sit_car_low"
		player:SetWorldTransform(blackChair:GetWorldTransform())
		player:SetWorldRotation(Rotation.New(0,0,180))
		Task.Wait(1)
		player:EnableRagdoll("left_knee")
		player:EnableRagdoll("right_knee")
	else
		warn("How did you even get here?")
	end
end

local function UpdatePromotion(promotion, whichTeam, table)
	if whichTeam == 0 or table ~= tableNum then
		return
	end
	
	promotesTo[whichTeam] = promotion
end


local function Init()
	while _G.DEFAULT_CHESSBOARD == nil or _G.DEFAULT_CHESSBOARD[tableNum] == nil do
		Task.Wait()
	end
	
	CopyTable(_G.DEFAULT_CHESSBOARD[tableNum], Chessboard)
	Teams = _G.TEAMS
	PieceTypes = _G.PIECE_TYPES
	
	kingPositions[Teams.Black] = "E8"
	kingPositions[Teams.White] = "E1"
	
	castlePossible[Teams.White] = true
	castlePossible[Teams.Black] = true
	
	castleRequirements[Teams.White] = {toCheck = {"F1", "G1"}, rookLocation = "H1"}
	castleRequirements[Teams.Black] = {toCheck = {"F8", "G8"}, rookLocation = "H8"}
	
	Events.Connect("GetValidMoves", RequestMoves)
	Events.Connect("ApplyViewSettings", ApplySettings)
	Events.Connect("MovePiece", DoPieceMovement)
	Events.Connect("Castle", DoCastle)
	Events.Connect("UpdatePromotionPiece", UpdatePromotion)
	propWhiteTrigger.interactedEvent:Connect(OnPlayerJoined, 1)
	propBlackTrigger.interactedEvent:Connect(OnPlayerJoined, 2)
	Game.playerLeftEvent:Connect(OnPlayerLeft, true, tableNum)
	
	Events.Connect("LeftGame", OnPlayerLeft, false, tableNum)
	
	
	whoseTurn = Teams.White
end

Init()