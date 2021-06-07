--need something to require functions here... put them in another file.
local util = require(script:GetCustomProperty("UtilityFunc"))

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
    "ROOK","PAWN","EMPTY","EMPTY","EMPTY","EMPTY","PAWN","ROOK",
    "KNIGHT","PAWN","EMPTY","EMPTY","EMPTY","EMPTY","PAWN","KNIGHT",
    "BISHOP","PAWN","EMPTY","EMPTY","EMPTY","EMPTY","PAWN","BISHOP",
    "QUEEN","PAWN","EMPTY","EMPTY","EMPTY","EMPTY","PAWN","QUEEN",
    "KING","PAWN","EMPTY","EMPTY","EMPTY","EMPTY","PAWN","KING",
    "BISHOP","PAWN","EMPTY","EMPTY","EMPTY","EMPTY","PAWN","BISHOP",
    "KNIGHT","PAWN","EMPTY","EMPTY","EMPTY","EMPTY","PAWN","KNIGHT",
    "ROOK","PAWN","EMPTY","EMPTY","EMPTY","EMPTY","PAWN","ROOK",
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

--logic
--backward 1 (A2 to A1) = -1 index
--forward 1  (A2 to A3) = +1 index
--right 1 (A2 to B2) = +8 index
--left 1 (B2 to A2) = -8 index
--diagonal 1 (A2 to B3) = +1 +8 = +9

WHITE_PAWN_DIR = {1} --only iterate once, except move 1 COULD iterate twice
WHITE_PAWN_CAP = {-7,9} --only iterate once
BLACK_PAWN_DIR = {-1} --only iterate once, except move 1 COULD iterate twice
BLACK_PAWN_CAP = {-9,7} --only iterate once
ROOK_DIR = {1,-1,8,-8} --until board ends
BISHOP_DIR = {-7,-9,7,9} --until board ends
KNIGHT_DIR = {-6,-10,-15,-17,6,10,15,17} --knights don't care what's in between
KING_DIR = {-9,-8,-7,-1,1,7,8,9} --iterate once
QUEEN_DIR = {-9,-8,-7,-1,1,7,8,9} --until board ends


--MUST COPY TABLE
--local board = SQUARES just creates a reference to SQUARES
--which is totally different behavior from a variable because... lua

local board = util.CopyTable(SQUARES)
local pieces = util.CopyTable(DEFAULT_PIECE_LAYOUT)
local colors = util.CopyTable(COLOR_LAYOUT)

--is move legal
local legalMove

function MovePiece(player,startSquare,endSquare)
    local pieceToMove,colorOfPiece,player2
    for i,v in ipairs(board) do 
        if v == startSquare then
            pieceToMove = pieces[i]
            colorOfPiece = colors[i]

            if pieceToMove == "EMPTY" then --ABANDON SHIP! WE SHOULD REALLY STOP THIS BEFORE IT GETS SENT!  it'll happen
                return
            end

            if (player.team == 1) and (colorOfPiece ~= "WHITE") then
                return
            elseif (player.team == 2) and (colorOfPiece ~= "BLACK") then
                return
            elseif (colorOfPiece == "EMPTY") then
                return
            end

            for k,j in ipairs(board) do 
                if j == endSquare then
                    ------RUN CHECKING FUNCTIONS-------
                    --IS KING IN CHECK?
                    if pieceToMove == "PAWN" then
                        legalMove = PawnRules(i,k,startSquare,endSquare,colorOfPiece)
                        if legalMove == false then
                            Events.BroadcastToPlayer(player,"ILLEGAL MOVE")
                            print("ILLEGAL MOVE")
                            return
                        end
                    elseif pieceToMove == "ROOK" then
                        legalMove = RookRules(i,k,startSquare,endSquare,colorOfPiece)
                        if legalMove == false then
                            Events.BroadcastToPlayer(player,"ILLEGAL MOVE")
                            print("ILLEGAL MOVE")
                            return
                        end
                    elseif pieceToMove == "KNIGHT" then
                        legalMove = KnightRules(i,k,startSquare,endSquare,colorOfPiece)
                        if legalMove == false then
                            Events.BroadcastToPlayer(player,"ILLEGAL MOVE")
                            print("ILLEGAL MOVE")
                            return
                        end
                    elseif pieceToMove == "BISHOP" then
                        legalMove = BishopRules(i,k,startSquare,endSquare,colorOfPiece)
                        if legalMove == false then
                            Events.BroadcastToPlayer(player,"ILLEGAL MOVE")
                            print("ILLEGAL MOVE")
                            return
                        end
                    elseif pieceToMove == "QUEEN" then
                        legalMove = QueenRules(i,k,startSquare,endSquare,colorOfPiece)
                        if legalMove == false then
                            Events.BroadcastToPlayer(player,"ILLEGAL MOVE")
                            print("ILLEGAL MOVE")
                            return
                        end
                    elseif pieceToMove == "KING" then
                        legalMove = KingRules(i,k,startSquare,endSquare,colorOfPiece)
                        if legalMove == false then
                            Events.BroadcastToPlayer(player,"ILLEGAL MOVE")
                            print("ILLEGAL MOVE")
                            return
                        end
                    end
                    ------Ok we beat all the rule checks, time to move!--------
                    pieces[i] = "EMPTY"
                    colors[i] = "EMPTY"
                    pieces[k] = pieceToMove
                    colors[k] = colorOfPiece
                    break
                end
            end
        end
    end
    print("Moving",colorOfPiece,pieceToMove,"from",startSquare,"to",endSquare)
    
    
    --Find the second player so we can send him the move as well
    for i,v in pairs(_G.games_in_progress) do 
        if (_G.games_in_progress[i].white == player) then
            player2 = _G.games_in_progress[i].black
            --print("PLAYER 2 FOUND")
            break
        end
        if (_G.games_in_progress[i].black == player) then
            player2 = _G.games_in_progress[i].white
            --print("PLAYER 2 FOUND")
            break
        end
    end
    Events.BroadcastToPlayer(player,"Move Piece",colorOfPiece,pieceToMove,startSquare,endSquare)
    Events.BroadcastToPlayer(player2,"Move Piece",colorOfPiece,pieceToMove,startSquare,endSquare)
end

function PawnRules(ssv,esv,startSquare,endSquare,colorOfPiece) --ssv = start square value and esv = end square value
    local increment = esv - ssv

    if colorOfPiece == "WHITE" then

        --move forward one space
        if increment == 1 then
            if pieces[esv] == "EMPTY" then
                return true
            else 
                return false --something on the square
            end
        end

        --if first turn can move 2 spaces
        if increment == 2 then
            --if (startSquare == "A2") or (startSquare == "B2") or (startSquare == "C2") or (startSquare == "D2") or (startSquare == "E2") or (startSquare == "F2") or (startSquare == "G2") or (startSquare == "H2")
            --simplified this to speed up logic, but the same as above applies
            if (ssv%8 == 2) then
                if (pieces[esv] == "EMPTY") and (pieces[esv-1] == "EMPTY") then
                    return true
                end
            else 
                return false
            end
        end
        --capture diagonally
        if increment == -7 or increment == 9 then
            if colors[esv] == "BLACK" then
                print("Piece Captured")
                return true
            else 
                return false
            end 
        end

        return false --return false if nothing matches

    elseif colorOfPiece == "BLACK" then
        --move forward one space
        if increment == -1 then
            if pieces[esv] == "EMPTY" then
                return true
            else 
                return false --something on the square
            end
        end

        --if first turn can move 2 spaces
        if increment == -2 then
            --if (startSquare == "A7") or (startSquare == "B7") or (startSquare == "C7") or (startSquare == "D7") or (startSquare == "E7") or (startSquare == "F7") or (startSquare == "G7") or (startSquare == "H7")
            --simplified this to speed up logic, but the same as above applies
            print(ssv,ssv%8)
            if (ssv%8 == 7) then
                if (pieces[esv] == "EMPTY") and (pieces[esv+1] == "EMPTY") then
                    return true
                end
            else 
                return false
            end
        end
        --capture diagonally
        if increment == 7 or increment == -9 then
            if colors[esv] == "WHITE" then
                print("Piece Captured")
                return true
            else 
                return false
            end 
        end

        return false --return false if nothing matches
    end
end

function RookRules(ssv,esv,startSquare,endSquare,colorOfPiece)
    --Move vertically and horizontally
    local increment = esv - ssv
    local amountToEdgeOfBoardVertically = ssv%8 --how far away are we from the edge of the board?
    
    if (increment < 8 and increment > -8) then --we're trying to move vertically!
        --check direction
        if (increment > 0) then
            for i = 1,increment do
                --first of all, check to see if we broke the board
                if (i > (8-amountToEdgeOfBoardVertically)) then
                    print("moved to next file")
                    return false --illegal move, you moved onto the next file.
                end
                --does a piece exist?
                if (pieces[ssv+i] ~= "EMPTY" and i ~= increment) then
                    print("PIECE IN BETWEEN")
                    return false --you tried to pick a square that had a piece in between
                elseif (pieces[ssv+i] ~= "EMPTY" and i == increment and colors[ssv+i] == colorOfPiece) then
                    print("RAN INTO PIECE")
                    return false --we ran into our own piece!
                elseif (pieces[ssv+i] ~= "EMPTY" and i == increment and colors[ssv+i] ~= colorOfPiece) then
                    print("Piece Captured")
                    return true
                end 
            end
            return true --We didn't find any reason they couldn't move there
        elseif (increment < 0) then --reverse, reverse
            for i = 1,math.abs(increment) do
                --first of all, check to see if we broke the board
                if (i > (8-amountToEdgeOfBoardVertically)) then
                    print("moved to next file")
                    print(increment,amountToEdgeOfBoardVertically, "???")
                    return false --illegal move, you moved onto the next file.
                end
                --does a piece exist?
                if (pieces[ssv-i] ~= "EMPTY" and i ~= math.abs(increment)) then
                    print("PIECE IN BETWEEN")
                    return false --you tried to pick a square that had a piece in between
                elseif (pieces[ssv-i] ~= "EMPTY" and i == math.abs(increment) and colors[ssv-i] == colorOfPiece) then
                    print("RAN INTO PIECE")
                    return false --we ran into our own piece!
                elseif (pieces[ssv+i] ~= "EMPTY" and i == increment and colors[ssv+i] ~= colorOfPiece) then
                    if (colorOfPiece ~= "EMPTY") then
                        print("Piece Captured")
                    end
                    return true
                end 
            end
            return true --We didn't find any reason they couldn't move there
        end

    elseif (increment <= -8 or increment >= 8) then --We're moving horizontally!
        if (increment%8 ~= 0) then
             return false --What, you didn't move horizontally!
        end
        --MOVE RIGHT
        if (increment >= 8) then
            for i = 1, math.abs(increment)/8 do
                if (pieces[ssv+(i*8)] ~= "EMPTY" and i ~= increment) then
                    return false --you tried to pick a square that had a piece in between
                elseif (pieces[ssv+i] ~= "EMPTY" and i == increment and colors[ssv+i] == colorOfPiece) then
                    return false --we ran into our own piece!
                elseif (pieces[ssv+i] ~= "EMPTY" and i == increment and colors[ssv+i] ~= colorOfPiece) then
                    print("Piece Captured")
                    return true
                end 
            end
            return true
        --MOVE LEFT
        elseif (increment <= -8) then
            for i = 1, math.abs(increment)/8 do
                if (pieces[ssv-(i*8)] ~= "EMPTY" and i ~= increment) then
                    return false --you tried to pick a square that had a piece in between
                elseif (pieces[ssv-(i*8)] ~= "EMPTY" and i == increment and colors[ssv-(i*8)] == colorOfPiece) then
                    return false --we ran into our own piece!
                elseif (pieces[ssv-(i*8)] ~= "EMPTY" and i == increment and colors[ssv-(i*8)] ~= colorOfPiece) then
                    print("Piece Captured")
                    return true
                end 
            end
            return true
        end
    end
    return false
end

function KnightRules(ssv,esv,startSquare,endSquare,colorOfPiece)
    --Moves (1,2) (2,1) (-1,2) (-2,1) (-1,-2) (-2,-1) (1,-2) (2,-1)
    --Knights do NOT care if a piece is in between it and it's destination, so we're just going to check the square it's going to!
    local increment = esv - ssv
    for i,v in pairs(KNIGHT_DIR) do 
        if (v == increment) then
            if (colors[esv] ~= colorOfPiece and pieces[esv] ~= "EMPTY") then
                print("Piece Captured")
            elseif (colors[esv] == colorOfPiece) then
                return false
            end 
            return true --we met the criteria for a knight move
        end 
    end
    return false
end

function BishopRules(ssv,esv,startSquare,endSquare,colorOfPiece)
    --Moves Diagonally

    --Capture in Path
end

function QueenRules(ssv,esv,startSquare,endSquare,colorOfPiece)
    --Move horizontally,vertically, and diagonally

    --Capture in Path
end

function KingRules(ssv,esv,startSquare,endSquare,colorOfPiece)
    --Move one square horizontally, vertically, and diagonally

    --Capture in Path

    --cannot be threatened
    --check all enemy pieces and their possible moves
    --programatically filter

    --Can Castle
end 

function Castles(ssv,esv,startSquare,endSquare,colorOfPiece)
    --Rook cannot have moved
    --King cannot have moved
    --no pieces between
    --no pieces guarding two squares next to king
end

function EnPassant()
    --last move pawn
    --the pawn moved two squares
    --player_to_move pawn is adjacent
end

function Check()
    --Check every turn to see if king is threatened

    --does the move block the check or move the king out of harm's way
end

function Checkmate()
    --King cannot move
    --end game
end

function EndGame(player)
    --If client wishes to end game, then they may do so
    --player is the player who resigned
    local player2
    local Trigger1 = script:GetCustomProperty("Trigger1"):WaitForObject()
    local Trigger2 = script:GetCustomProperty("Trigger2"):WaitForObject()
    for i,v in pairs(_G.games_in_progress) do 
        if (_G.games_in_progress[i].white == player) then
            player2 = _G.games_in_progress[i].black
            table.remove(_G.games_in_progress,i)
            break
        end
        if (_G.games_in_progress[i].black == player) then
            player2 = _G.games_in_progress[i].white
            table.remove(_G.games_in_progress,i)
            break
        end
    end


    Events.BroadcastToPlayer(player2,"End Game")

    --set team to 0
    player.team = 0
    player2.team = 0
    --give correct stance
    player.animationStance = "unarmed_stance"
    player2.animationStance = "unarmed_stance"
    --turn movement back on!
    player.isMovementEnabled = true
    player2.isMovementEnabled = true
    --move player
    player:SetWorldPosition(player:GetWorldPosition()+Vector3.RIGHT*100)
    player2:SetWorldPosition(player2:GetWorldPosition()+Vector3.RIGHT*100)
    --make board useable again
    Trigger1.isInteractable = true
	Trigger2.isInteractable = true

    --reset virtual board
    --repopulate
    --board = SQUARES
    --pieces = DEFAULT_PIECE_LAYOUT
    --colors = COLOR_LAYOUT

    board = util.CopyTable(SQUARES)
    pieces = util.CopyTable(DEFAULT_PIECE_LAYOUT)
    colors = util.CopyTable(COLOR_LAYOUT)
end



Events.ConnectForPlayer("Move",MovePiece)
Events.ConnectForPlayer("End Game",EndGame)