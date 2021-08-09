local util = require(script:GetCustomProperty("UtilityFunc"))
local SFXfolder = script:GetCustomProperty("SFX"):WaitForObject()
local moveIndicator = script:GetCustomProperty("VFX")
local activeMI --active Move Indicator

local squares = script:GetCustomProperty("Squares"):WaitForObject()
local whitePieces = script:GetCustomProperty("WhitePieces"):WaitForObject()
local blackPieces = script:GetCustomProperty("BlackPieces"):WaitForObject()
local curPlayer = Game.GetLocalPlayer()

local white = whitePieces:GetChildren()
local black = blackPieces:GetChildren()
local SFX = SFXfolder:GetChildren()
local dumpBoard = script:GetCustomProperty("DumpBoard"):WaitForObject()
local notationSheet = script:GetCustomProperty("NotationSheet"):WaitForObject()
local winUI = script:GetCustomProperty("WinUI"):WaitForObject()
local loseUI = script:GetCustomProperty("LoseUI"):WaitForObject()

--sfx[1] = clicking pieces, need to figure out the correct way to call these effectively

--DO NOT MOVE THE ORDER OF PIECES IN THE HIERARCHY.  Will cause different pieces to move
--The difference between this script and its brother on the server (ChessGameRules.lua) is that 
--DEFAULT_PIECE_LAYOUT is the actual objects, not just a text representation
--This is to cut down on network traffic, so that the client can handle all the dirty work.
--This was the problem with the old version of this on CC.


startSquare = nil

SQUARES = {
    "A1","A2","A3","A4","A5","A6","A7","A8",
    "B1","B2","B3","B4","B5","B6","B7","B8",
    "C1","C2","C3","C4","C5","C6","C7","C8",
    "D1","D2","D3","D4","D5","D6","D7","D8",
    "E1","E2","E3","E4","E5","E6","E7","E8",
    "F1","F2","F3","F4","F5","F6","F7","F8",
    "G1","G2","G3","G4","G5","G6","G7","G8",
    "H1","H2","H3","H4","H5","H6","H7","H8"
}
DEFAULT_PIECE_LAYOUT = {
    white[1],white[9],"EMPTY","EMPTY","EMPTY","EMPTY",black[9],black[1],
    white[2],white[10],"EMPTY","EMPTY","EMPTY","EMPTY",black[10],black[2],
    white[3],white[11],"EMPTY","EMPTY","EMPTY","EMPTY",black[11],black[3],
    white[4],white[12],"EMPTY","EMPTY","EMPTY","EMPTY",black[12],black[4],
    white[5],white[13],"EMPTY","EMPTY","EMPTY","EMPTY",black[13],black[5],
    white[6],white[14],"EMPTY","EMPTY","EMPTY","EMPTY",black[14],black[6],
    white[7],white[15],"EMPTY","EMPTY","EMPTY","EMPTY",black[15],black[7],
    white[8],white[16],"EMPTY","EMPTY","EMPTY","EMPTY",black[16],black[8],
}

COLOR_LAYOUT = {
    "WHITE","WHITE","EMPTY","EMPTY","EMPTY","EMPTY","BLACK","BLACK",
    "WHITE","WHITE","EMPTY","EMPTY","EMPTY","EMPTY","BLACK","BLACK",
    "WHITE","WHITE","EMPTY","EMPTY","EMPTY","EMPTY","BLACK","BLACK",
    "WHITE","WHITE","EMPTY","EMPTY","EMPTY","EMPTY","BLACK","BLACK",
    "WHITE","WHITE","EMPTY","EMPTY","EMPTY","EMPTY","BLACK","BLACK",
    "WHITE","WHITE","EMPTY","EMPTY","EMPTY","EMPTY","BLACK","BLACK",
    "WHITE","WHITE","EMPTY","EMPTY","EMPTY","EMPTY","BLACK","BLACK",
    "WHITE","WHITE","EMPTY","EMPTY","EMPTY","EMPTY","BLACK","BLACK",
}

DEFAULT_PIECE_POSITIONS_WHITE = {}
DEFAULT_PIECE_POSITIONS_BLACK = {}

for x,z in ipairs(white) do 
    DEFAULT_PIECE_POSITIONS_WHITE[x] = white[x]:GetWorldPosition()
end

for x,z in ipairs(black) do 
    DEFAULT_PIECE_POSITIONS_BLACK[x] = black[x]:GetWorldPosition()
end

local board = util.CopyTable(SQUARES)
local pieces = util.CopyTable(DEFAULT_PIECE_LAYOUT)
local colors = util.CopyTable(COLOR_LAYOUT)

last_move = 0

--ON GAME STARTED
function OnBindingPressed(player,binding)
	
    
    --IF PLAYER ISINGAME
    --When a player joins, or leaves a game, we should assign them to team 0
    --AS LONG AS THIS STAYS ABOVE "ability_primary", we won't send outrageous stuff to the server... I think
    if player.team == 0 then
        return
    end

    --If in game, either player can resign at any time... it doesn't have to be their move
    if binding == "ability_extra_33" then
        --DO A UI PROMPT TO CONFIRM
        --Will result in resignation for player
        Events.BroadcastToServer("End Game")
        EndGame(player)
    end

    --If in game, and trying to send data, it should at least be your turn!
    --If player.team and last_move are equal, that means they moved last
    --If player.team == 0, that means it's move 1 and team 1's turn is first.
    Task.Wait(.15)
    if (player.team == 1) and (last_move == 1) then
        return
    elseif (player.team == 2) and ((last_move == 0) or (last_move == 2)) then
        return
    end

    --If we use the left mouse button, we can move a piece
    if binding == "ability_primary" then
        --determine what we hit with a raycast/cursor hit result
		local hitResult = UI.GetCursorHitResult()
		
		if squares:FindDescendantByName(hitResult.other.name) ~= nil then
			if startSquare == nil then
                --no beginning square, so add one
				startSquare = hitResult.other.name
                --activeMI = World.SpawnAsset(moveIndicator, {position = squares:FindDescendantByName(hitResult.other.name):GetWorldPosition()+Vector3.New(0,0,5)})
                local moveIndicatorPosition = squares:FindDescendantByName(hitResult.other.name):GetWorldPosition()+Vector3.New(0,0,5)
                local moveIndicatorRotation = Rotation.New(-180,0,0)
                local moveIndicatorScale = Vector3.New(.2,.2,.2)
                activeMI = World.SpawnAsset(moveIndicator, 
                    {position = moveIndicatorPosition,
                     rotation = moveIndicatorRotation,
                     scale = moveIndicatorScale
                    })
                activeMI:Play()
            elseif startSquare == hitResult.other.name then 
                startSquare = nil
                activeMI:Destroy()
			else 
                --now we have an end square, or Square to Move to
				moveSquare = hitResult.other.name
                --Send it off to the server for processing
                activeMI:Destroy()
				Events.BroadcastToServer("Move",startSquare,moveSquare)
				startSquare = nil
				moveSquare = nil
			end
		end
	end
end

function MovePiece(physicalBoard,colorOfPiece,pieceToMove,startSquare,endSquare)
    --This function is to physically move a piece from one square on the board to another
    --The client gets the data from the server and then processes it to move the correct piece
    --Data for pieces/colors/board is stored at the top of this file
    --print(physicalBoard,tostring(script.parent.parent.id))
	if physicalBoard ~= tostring(script.parent.parent.id) then
        --print("WRONG BOARD")
		return 
	end

	local clientPieceToMove,clientColorOfPiece
    --First, we have to find the piece and square that the server sent us
	for i,v in ipairs(board) do 
		if v == startSquare then
            clientPieceToMove = pieces[i]
            clientColorOfPiece = colors[i]

            if clientPieceToMove == "EMPTY" then --BAIL OUT! MAYDAY MAYDAY!
                return
            end

            --Who is moving? 
            if clientColorOfPiece == "WHITE" then
                last_move = 1
            elseif clientColorOfPiece == "BLACK" then
                last_move = 2
            end

            --Find the end square for the piece to move to
            for k,j in ipairs(board) do 
                if j == endSquare then
                    --RUN CHECKING FUNCTIONS
                    if ((clientPieceToMove.name == "Pawn - White") or (clientPieceToMove.name == "Pawn - Black")) then 
                        CheckEPCapture(colorOfPiece,i,k)
                        CheckPromote(colorOfPiece,i,k)
                    end

                    if pieces[k] ~= "EMPTY" then
                        pieces[k].visibility = Visibility.FORCE_OFF
                        SFX[1]:Play()
                        print(pieces[k])
                        if pieces[k] == white[5] or pieces[k] == black[5] then 
                            EndGame()
                            return
                        end
                    end
                    
                    pieces[i]:MoveTo(pieces[i]:GetWorldPosition()+Vector3.New(0,0,17),.5)
                    Task.Wait(.48)
					pieces[i]:MoveTo(squares:FindDescendantByName(endSquare):GetWorldPosition()+Vector3.New(0,0,5),.5)

                    if clientColorOfPiece == "WHITE" then 
                        notationSheet:FindDescendantByName("WhiteMoves").text = notationSheet:FindDescendantByName("WhiteMoves").text .. "\n" .. endSquare
                    elseif clientColorOfPiece == "BLACK" then 
                        notationSheet:FindDescendantByName("BlackMoves").text = notationSheet:FindDescendantByName("BlackMoves").text .. "\n" .. endSquare
                    end

                    if (clientPieceToMove == white[5]) and ((k-i == 16) or (k-i == -16)) then
                        Castles("WHITE",k-i)
                    elseif (clientPieceToMove == black[5]) and ((k-i == 16) or (k-i == -16)) then
                        Castles("BLACK",k-i)
                    end
                    
                    pieces[i] = "EMPTY"
                    colors[i] = "EMPTY"
                    pieces[k] = clientPieceToMove
                    colors[k] = clientColorOfPiece
                    break
                end
            end
        end
    end
end

function CheckEPCapture(colorOfPiece,ssv,esv)
    local increment = esv - ssv
    --Special case for En Passant, where the piece does NOT land on the same square as capture
    if (colorOfPiece == "WHITE") and ((increment == -7) or (increment == 9)) then
        if pieces[esv] == "EMPTY" then
            pieces[esv-1].visibility = Visibility.FORCE_OFF
            SFX[1]:Play()
        end
    elseif (colorOfPiece == "WHITE") and ((increment == -9) or (increment == 7)) then
        if pieces[esv] == "EMPTY" then
            pieces[esv+1].visibility = Visibility.FORCE_OFF
            SFX[1]:Play()
        end
    end
end

function CheckPromote(colorOfPiece,ssv,esv)
    local increment = esv - ssv
    local amountToEdgeOfBoardVertically = 8 - esv%8
    local amountToEdgeOfBoardInverse = -(esv%8)+1

    if amountToEdgeOfBoardVertically == 8 then
        amountToEdgeOfBoardVertically = 0
        amountToEdgeOfBoardInverse = -7
    end

    if colorOfPiece == "WHITE" and amountToEdgeOfBoardVertically == 0 then 
        --pieces[ssv] = white[4]
        SFX[2]:Play()
    elseif colorOfPiece == "BLACK" and amountToEdgeOfBoardInverse == 0 then 
        --pieces[ssv] = black[4]
        SFX[2]:Play()
    end

end    

function PawnRules()
    --move forward one space

    --if first turn can move 2 spaces

    --capture diagonally
end

function RookRules()
    --Move vertically and horizontally

    --Capture in Path
end

function KnightRules()
    --Moves (1,2) (2,1) (-1,2) (-2,1) (-1,-2) (-2,-1) (1,-2) (2,-1)
end

function BishopRules()
end

function QueenRules()
end

function KingRules()
end 

function Castles(colorOfPiece,increment)
    if colorOfPiece == "WHITE" then
        if increment == 16 then --The rook will always move to the same spot
            pieces[41] = pieces[57]
            colors[41] = colors[57]
            pieces[57] = "EMPTY"
            colors[57] = "EMPTY"
            pieces[41]:MoveTo(pieces[41]:GetWorldPosition()+Vector3.New(0,0,17),.5)
            Task.Wait(.48)
			pieces[41]:MoveTo(squares:FindDescendantByName("F1"):GetWorldPosition()+Vector3.New(0,0,5),.5)
        elseif increment == -16 then
            pieces[25] = pieces[1]
            colors[25] = colors[1]
            pieces[1] = "EMPTY"
            colors[1] = "EMPTY"
            pieces[25]:MoveTo(pieces[25]:GetWorldPosition()+Vector3.New(0,0,17),.5)
            Task.Wait(.48)
			pieces[25]:MoveTo(squares:FindDescendantByName("D1"):GetWorldPosition()+Vector3.New(0,0,5),.5)
        end
    elseif colorOfPiece == "BLACK" then
        if increment == 16 then
            pieces[48] = pieces[64]
            colors[48] = colors[64]
            pieces[64] = "EMPTY"
            colors[64] = "EMPTY"
            pieces[48]:MoveTo(pieces[48]:GetWorldPosition()+Vector3.New(0,0,17),.5)
            Task.Wait(.48)
			pieces[48]:MoveTo(squares:FindDescendantByName("F8"):GetWorldPosition()+Vector3.New(0,0,5),.5)
        elseif increment == -16 then
            pieces[32] = pieces[8]
            colors[32] = colors[8]
            pieces[8] = "EMPTY"
            colors[8] = "EMPTY"
            pieces[32]:MoveTo(pieces[32]:GetWorldPosition()+Vector3.New(0,0,17),.5)
            Task.Wait(.48)
			pieces[32]:MoveTo(squares:FindDescendantByName("D8"):GetWorldPosition()+Vector3.New(0,0,5),.5)
        end
    end    
end

function EnPassant()
end

function Check()
end

function Checkmate()
    --end game
end

function EndGame()
    local player = Game.GetLocalPlayer()
    player:ClearOverrideCamera(1)
    UI.SetCursorVisible(false)
    --reset piece layout?

    for i,v in ipairs(white) do
        white[i]:SetWorldPosition(DEFAULT_PIECE_POSITIONS_WHITE[i])
        white[i].visibility = Visibility.FORCE_ON
    end

    for k,j in ipairs(black) do
        black[k]:SetWorldPosition(DEFAULT_PIECE_POSITIONS_BLACK[k])
        black[k].visibility = Visibility.FORCE_ON
    end

    board = util.CopyTable(SQUARES)
    pieces = util.CopyTable(DEFAULT_PIECE_LAYOUT)
    colors = util.CopyTable(COLOR_LAYOUT)

    Task.Wait(1.75)
    winUI.visibility = Visibility.FORCE_OFF
    loseUI.visibility = Visibility.FORCE_OFF

    last_move = 0
end

function CheckmateWin()
    winUI.visibility = Visibility.FORCE_ON
end 

function CheckmateLose()
    loseUI.visibility = Visibility.FORCE_ON
end

function dumpBoardToPanel()
	for i,v in ipairs(pieces) do 
        print(i,pieces[i])
    end
end


function BoardUpdate1(serverColors)
    print("Update colors")
    for i,v in pairs(serverColors) do
        if serverColors[i] ~= "EMPTY" then
            colors[i] = serverColors[i]
        elseif serverPieces[i] == "EMPTY" then 
            colors[i] = "EMPTY"
        end
    end
end

function BoardUpdate2(serverPieces)
    print("Update pieces")
    local availableRooks = {white[1],white[8]}
    local availableRooks2 = {black[1],black[8]}
    local availableKnights = {white[2],white[7]}
    local availableKnights2 = {black[2],black[7]}
    local availableBishops = {white[3],white[6]}
    local availableBishops2 = {black[3],black[6]}
    local availableQueens = {white[4]}
    local availableQueens2 = {black[4]}
    local availableKing = {white[5]}
    local availableKing2 = {black[5]}
    local availablePawns = {white[9],white[10],white[11],white[12],white[13],white[14],white[15],white[16]}
    local availablePawns2 = {black[9],black[10],black[11],black[12],black[13],black[14],black[15],black[16]}
    
    for i,v in pairs(serverPieces) do
        if serverPieces[i] ~= "EMPTY" then
            if colors[i] == "WHITE" then 
                if serverPieces[i] == "ROOK" then 
                    pieces[i] = availableRooks[1]
                    table.remove(availableRooks[1])
                end
                if serverPieces[i] == "KNIGHT" then 
                    pieces[i] = availableKnights[1]
                    table.remove(availableKnights[1])
                end
                if serverPieces[i] == "BISHOP" then 
                    pieces[i] = availableBishops[1]
                    table.remove(availableBishops[1])
                end
                if serverPieces[i] == "QUEEN" then 
                    pieces[i] = availableQueens[1]
                    table.remove(availableQueens[1])
                end
                if serverPieces[i] == "KING" then 
                    pieces[i] = availableKing[1]
                    table.remove(availableKing[1])
                end
                if serverPieces[i] == "PAWN" then 
                    pieces[i] = availablePawns[1]
                    table.remove(availablePawns[1])
                end
            elseif colors[i] == "BLACK" then 
                if serverPieces[i] == "ROOK" then 
                    pieces[i] = availableRooks2[1]
                    table.remove(availableRooks2[1])
                end
                if serverPieces[i] == "KNIGHT" then 
                    pieces[i] = availableKnights2[1]
                    table.remove(availableKnights2[1])
                end
                if serverPieces[i] == "BISHOP" then 
                    pieces[i] = availableBishops2[1]
                    table.remove(availableBishops2[1])
                end
                if serverPieces[i] == "QUEEN" then 
                    pieces[i] = availableQueens2[1]
                    table.remove(availableQueens2[1])
                end
                if serverPieces[i] == "KING" then 
                    pieces[i] = availableKing2[1]
                    table.remove(availableKing2[1])
                end
                if serverPieces[i] == "PAWN" then 
                    pieces[i] = availablePawns2[1]
                    table.remove(availablePawns2[1])
                end
            else
                print("Honestly we should never hit this")
            end
        elseif serverPieces[i] == "EMPTY" then 
            pieces[i] = "EMPTY"
        end
        for i,v in pairs(pieces) do
            if pieces[i] ~= "EMPTY" then 
                pieces[i]:SetWorldPosition(squares:FindDescendantByName(board[i]):GetWorldPosition()+Vector3.New(0,0,5),.5)
            end
        end
    end
end

Events.Connect("Spectating Colors", BoardUpdate1)
Events.Connect("Spectating Pieces", BoardUpdate2)
dumpBoard.clickedEvent:Connect(dumpBoardToPanel)
Events.Connect("Move Piece",MovePiece)
Events.Connect("End Game",EndGame)
Events.Connect("Checkmate Win",CheckmateWin)
Events.Connect("Checkmate Lose",CheckmateLose)
curPlayer.bindingPressedEvent:Connect(OnBindingPressed)