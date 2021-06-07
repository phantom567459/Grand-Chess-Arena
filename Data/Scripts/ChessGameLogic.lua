local util = require(script:GetCustomProperty("UtilityFunc"))
local SFXfolder = script:GetCustomProperty("SFX"):WaitForObject()

local squares = script:GetCustomProperty("Squares"):WaitForObject()
local whitePieces = script:GetCustomProperty("WhitePieces"):WaitForObject()
local blackPieces = script:GetCustomProperty("BlackPieces"):WaitForObject()
local curPlayer = Game.GetLocalPlayer()

local white = whitePieces:GetChildren()
local black = blackPieces:GetChildren()
local SFX = SFXfolder:GetChildren()
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
			else 
                --now we have an end square, or Square to Move to
				moveSquare = hitResult.other.name
                --Send it off to the server for processing
				Events.BroadcastToServer("Move",startSquare,moveSquare)
				startSquare = nil
				moveSquare = nil
			end
		end
	end
end

function MovePiece(colorOfPiece,pieceToMove,startSquare,endSquare)
    --This function is to physically move a piece from one square on the board to another
    --The client gets the data from the server and then processes it to move the correct piece
    --Data for pieces/colors/board is stored at the top of this file

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
                    if pieces[k] ~= "EMPTY" then
                        pieces[k].visibility = Visibility.FORCE_OFF
                        SFX[1]:Play()
                    end
                    --For now we're just gonna move the piece there
					print(pieces[i])
                    
                    pieces[i]:MoveTo(pieces[i]:GetWorldPosition()+Vector3.New(0,0,17),.5)
                    Task.Wait(.48)
					pieces[i]:MoveTo(squares:FindDescendantByName(endSquare):GetWorldPosition()+Vector3.New(0,0,5),.5)
                    
                    
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

function Castles()
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
    end

    for k,j in ipairs(black) do
        black[k]:SetWorldPosition(DEFAULT_PIECE_POSITIONS_BLACK[k])
    end

    board = util.CopyTable(SQUARES)
    pieces = util.CopyTable(DEFAULT_PIECE_LAYOUT)
    colors = util.CopyTable(COLOR_LAYOUT)

    last_move = 0
end

Events.Connect("Move Piece",MovePiece)
Events.Connect("End Game",EndGame)
curPlayer.bindingPressedEvent:Connect(OnBindingPressed)