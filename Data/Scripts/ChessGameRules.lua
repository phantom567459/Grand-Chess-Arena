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
local legalMove,lastMove,enpassantLegal,promoted
local hasKingMoved = {false,false} --check first slot for white king, second slot for black king
local hasRookMoved = {false,false,false,false} --a1,h1,a8,h8 rooks

function MovePiece(player,startSquare,endSquare)
    local pieceToMove,colorOfPiece,player2,physicalBoard
    --FIND PLAYER2 First
    for i,v in pairs(_G.games_in_progress) do 
        if (_G.games_in_progress[i].white == player) then
            player2 = _G.games_in_progress[i].black
            physicalBoard = _G.games_in_progress[i].board

            if physicalBoard ~= tostring(script.parent.parent.id) then
                --print("WRONG BOARD")
                return 
            end
            break
        end
        if (_G.games_in_progress[i].black == player) then
            player2 = _G.games_in_progress[i].white
            physicalBoard = _G.games_in_progress[i].board

            if physicalBoard ~= tostring(script.parent.parent.id) then
                --print("WRONG BOARD")
                return 
            end
            break
        end
    end

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
                    if pieceToMove == "PAWN" then
                        legalMove = PawnRules(i,k,colorOfPiece)
                        if legalMove == false then
                            Events.BroadcastToPlayer(player,"ILLEGAL MOVE")
                            print("ILLEGAL MOVE")
                            return
                        end
                        if promoted == true then 
                            pieceToMove = "QUEEN"
                            promoted = false 
                        end
                    elseif pieceToMove == "ROOK" then
                        legalMove = RookRules(i,k,colorOfPiece)
                        if legalMove == false then
                            Events.BroadcastToPlayer(player,"ILLEGAL MOVE")
                            print("ILLEGAL MOVE")
                            return
                        end
                    elseif pieceToMove == "KNIGHT" then
                        legalMove = KnightRules(i,k,colorOfPiece)
                        if legalMove == false then
                            Events.BroadcastToPlayer(player,"ILLEGAL MOVE")
                            print("ILLEGAL MOVE")
                            return
                        end
                    elseif pieceToMove == "BISHOP" then
                        legalMove = BishopRules(i,k,colorOfPiece)
                        if legalMove == false then
                            Events.BroadcastToPlayer(player,"ILLEGAL MOVE")
                            print("ILLEGAL MOVE")
                            return
                        end
                    elseif pieceToMove == "QUEEN" then
                        legalMove = QueenRules(i,k,colorOfPiece)
                        if legalMove == false then
                            Events.BroadcastToPlayer(player,"ILLEGAL MOVE")
                            print("ILLEGAL MOVE")
                            return
                        end
                    elseif pieceToMove == "KING" then
                        legalMove = KingRules(i,k,colorOfPiece)
                        if legalMove == false then
                            Events.BroadcastToPlayer(player,"ILLEGAL MOVE")
                            print("ILLEGAL MOVE")
                            return
                        end
                    end
                    ------Ok we beat all the initial rule checks, time to move!--------
                    pieces[i] = "EMPTY"
                    colors[i] = "EMPTY"
                    pieces[k] = pieceToMove
                    colors[k] = colorOfPiece

                    --OK I lied, IS KING IN CHECK?
                    for y,z in ipairs(pieces) do 
                        if pieces[y]=="KING" then
                            if colors[y]==colorOfPiece then 
                                legalMove = Check(y,colorOfPiece)
                                if legalMove == false then
                                    Events.BroadcastToPlayer(player,"ILLEGAL MOVE")
                                    print("KING IN CHECK")
                                    pieces[i] = pieceToMove
                                    colors[i] = colorOfPiece
                                    pieces[k] = "EMPTY"
                                    colors[k] = "EMPTY"
                                    print(pieces[i],pieces[k])
                                    return
                                end
                                break
                            end 
                        end 
                    end

                    --OK Did we win?  (Other king in checkmate)
                    for y,z in ipairs(pieces) do 
                        if pieces[y]=="KING" then
                            if colors[y]~=colorOfPiece then 
                                local opposite
                                if colorOfPiece == "WHITE" then 
                                    opposite = "BLACK"
                                elseif colorOfPiece == "BLACK" then
                                    opposite = "WHITE"
                                end 
                                legalMove = Checkmate(y,opposite)
                                if legalMove == false then
                                    --Events.BroadcastToPlayer(player,"CHECKMATE WIN")
                                    --Events.BroadcastToPlayer(player2,"CHECKMATE LOSE")
                                    Events.BroadcastToPlayer(player,"Move Piece",physicalBoard,colorOfPiece,pieceToMove,startSquare,endSquare)
                                    Events.BroadcastToPlayer(player2,"Move Piece",physicalBoard,colorOfPiece,pieceToMove,startSquare,endSquare)
                                    Task.Wait(0.5)
                                    Events.BroadcastToPlayer(player,"Checkmate Win")
                                    Events.BroadcastToPlayer(player2,"Checkmate Lose")
                                    Task.Wait(2)
                                    EndGame(player2)  --?? maybe not the best way to do this
                                    return
                                end
                                break
                            end 
                        end 
                    end

                    ----EXTRA FLAGS
                    if pieceToMove == "ROOK" then
                        if (startSquare == "A1" ) then
                            hasRookMoved[1] = true
                        elseif (startSquare == "H1") then
                            hasRookMoved[2] = true
                        elseif (startSquare == "A8") then
                            hasRookMoved[3] = true
                        elseif (startSquare == "H8") then
                            hasRookMoved[4] = true
                        end
                    end
                    if pieceToMove == "KING" then 
                        if colorOfPiece == "WHITE" then
                            hasKingMoved[1] = true
                        elseif colorOfPiece == "BLACK" then
                            hasKingMoved[2] = true
                        end
                    end
                    lastMove = {pieceToMove,endSquare,k-i}
                    enpassantLegal = false
                    break
                end
            end
        end
    end
    print("Moving",colorOfPiece,pieceToMove,"from",startSquare,"to",endSquare)
    
    
    --Find the second player so we can send him the move as well
    
    Events.BroadcastToPlayer(player,"Move Piece",physicalBoard,colorOfPiece,pieceToMove,startSquare,endSquare)
    Events.BroadcastToPlayer(player2,"Move Piece",physicalBoard,colorOfPiece,pieceToMove,startSquare,endSquare)
end

function PawnRules(ssv,esv,colorOfPiece) --ssv = start square value and esv = end square value
    local increment = esv - ssv
    local amountToEdgeOfBoardVertically = 8 - esv%8
    local amountToEdgeOfBoardInverse = -(esv%8)+1

    if amountToEdgeOfBoardVertically == 8 then
        amountToEdgeOfBoardVertically = 0
        amountToEdgeOfBoardInverse = -7
    end

    if colorOfPiece == "WHITE" then

        --move forward one space
        if increment == 1 then
            if pieces[esv] == "EMPTY" then
                if amountToEdgeOfBoardVertically == 0 then 
                    Promote(esv,colorOfPiece)
                end
                return true
            else 
                return false --something on the square
            end
        end

        --if first turn can move 2 spaces
        if increment == 2 then
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
                if amountToEdgeOfBoardVertically == 0 then 
                    Promote(esv,colorOfPiece)
                end
                return true
            else 
                enpassantLegal = EnPassant(ssv,esv,colorOfPiece)
                if enpassantLegal == true then
                    print("Piece Captured e.p")
                    return true
                else
                    return false
                end
            end 
        end

        return false --return false if nothing matches

    elseif colorOfPiece == "BLACK" then
        --move forward one space
        if increment == -1 then
            if pieces[esv] == "EMPTY" then
                if amountToEdgeOfBoardInverse == 0 then 
                    Promote(esv,colorOfPiece)
                end
                return true
            else 
                return false --something on the square
            end
        end

        --if first turn can move 2 spaces
        if increment == -2 then
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
                if amountToEdgeOfBoardInverse == 0 then 
                    Promote(esv,colorOfPiece)
                end
                print("Piece Captured")
                return true
            else 
                enpassantLegal = EnPassant(ssv,esv,colorOfPiece)
                if enpassantLegal == true then
                    print("Piece Captured e.p")
                    return true
                else
                    return false
                end
            end 
        end

        return false --return false if nothing matches
    end
end

function RookRules(ssv,esv,colorOfPiece)
    local increment = esv-ssv
    local amountToEdgeOfBoardVertically = 8 - ssv%8
    local amountToEdgeOfBoardInverse = -(ssv%8)+1

    if amountToEdgeOfBoardVertically == 8 then
        amountToEdgeOfBoardVertically = 0
        amountToEdgeOfBoardInverse = -7
    end


    if (increment%8 == 0) then
        --We are moving horizontally
        for i = 1,math.abs(increment)/8 do 
            print(colors[ssv+(i*8)])
            if increment > 0 then 
                if (pieces[ssv+(i*8)] ~= "EMPTY" and i ~= increment/8) then
                    print("PIECE IN BETWEEN")
                    return false --you tried to pick a square that had a piece in between
                elseif (pieces[ssv+(i*8)] ~= "EMPTY" and i == increment/8 and colors[ssv+(i*8)] == colorOfPiece) then
                    print("RAN INTO PIECE")
                    return false --we ran into our own piece!
                elseif (pieces[ssv+(i*8)] ~= "EMPTY" and i == increment/8 and colors[ssv+(i*8)] ~= colorOfPiece) then
                    print("Piece Captured")
                    return true
                elseif (pieces[ssv+(i*8)] == "EMPTY" and i == increment/8) then
                    return true
                end
            elseif increment < 0 then
                if (pieces[ssv-(i*8)] ~= "EMPTY" and i ~= math.abs(increment/8)) then
                    print("PIECE IN BETWEEN")
                    return false --you tried to pick a square that had a piece in between
                elseif (pieces[ssv-(i*8)] ~= "EMPTY" and i == math.abs(increment/8) and colors[ssv-(i*8)] == colorOfPiece) then
                    print("RAN INTO PIECE")
                    return false --we ran into our own piece!
                elseif (pieces[ssv-(i*8)] ~= "EMPTY" and i == math.abs(increment/8) and colors[ssv-(i*8)] ~= colorOfPiece) then
                    print("Piece Captured")
                    return true
                elseif (pieces[ssv-(i*8)] == "EMPTY" and i == math.abs(increment/8)) then
                    return true
                end
            end
        end
    end

    --MOVE VERTICALLY
    if (increment >= amountToEdgeOfBoardInverse and increment <= amountToEdgeOfBoardVertically) then
        if increment < 0 then
            for i = 1,math.abs(increment) do  
                if (pieces[ssv-i] ~= "EMPTY" and i ~= math.abs(increment)) then
                    print("PIECE IN BETWEEN")
                    return false --you tried to pick a square that had a piece in between
                elseif (pieces[ssv-i] ~= "EMPTY" and i == math.abs(increment) and colors[ssv-i] == colorOfPiece) then
                    print("RAN INTO PIECE")
                    return false --we ran into our own piece!
                elseif (pieces[ssv-i] ~= "EMPTY" and i == math.abs(increment) and colors[ssv-i] ~= colorOfPiece) then
                    print("Piece Captured")
                    return true
                elseif (pieces[ssv-i] == "EMPTY" and i == math.abs(increment)) then
                    return true
                end
            end
        elseif increment > 0 then
            for i = 1,increment do  
                if (pieces[ssv+i] ~= "EMPTY" and i ~= increment) then
                    print("PIECE IN BETWEEN")
                    return false --you tried to pick a square that had a piece in between
                elseif (pieces[ssv+i] ~= "EMPTY" and i == increment and colors[ssv+i] == colorOfPiece) then
                    print("RAN INTO PIECE")
                    return false --we ran into our own piece!
                elseif (pieces[ssv+i] ~= "EMPTY" and i == increment and colors[ssv+i] ~= colorOfPiece) then
                    print("Piece Captured")
                    return true
                elseif (pieces[ssv+i] == "EMPTY" and i == increment) then
                    return true
                end
            end
        end
    end
    return false
end

function KnightRules(ssv,esv,colorOfPiece)
    --Moves (1,2) (2,1) (-1,2) (-2,1) (-1,-2) (-2,-1) (1,-2) (2,-1)
    --Knights do NOT care if a piece is in between it and it's destination, so we're just going to check the square it's going to!
    local amountToEdgeOfBoardVertically = 8 - ssv%8
    local amountToEdgeOfBoardInverse = math.abs(-(ssv%8)+1)

    if amountToEdgeOfBoardVertically == 8 then
        amountToEdgeOfBoardVertically = 0
        amountToEdgeOfBoardInverse = 7
    end

    local increment = esv - ssv

    if (increment == 6 or increment == 15 or increment == -10 or increment == -17) and amountToEdgeOfBoardInverse == 0 then 
        print("Ran off edge of board from back rank")
        return false
    elseif (increment == 6 or increment == -10) and amountToEdgeOfBoardInverse == 1 then
        print("Ran off edge of board from first rank")
        return false
    elseif (increment == -6 or increment == -15 or increment == 10 or increment == 17) and amountToEdgeOfBoardVertically == 0 then
        print("Ran off edge of board from back rank")
        return false
    elseif (increment == -6 or increment == 10) and amountToEdgeOfBoardVertically == 1 then
        print("Ran off edge of board from first rank")
        return false
    end 

    for i,v in pairs(KNIGHT_DIR) do 
        if (v == increment) then
            if (colors[esv] ~= colorOfPiece and pieces[esv] ~= "EMPTY") then
                print("Piece Captured")
                return true --we met the criteria for a knight move
            elseif (colors[esv] == colorOfPiece) then
                return false
            end 
            return true
        end 
    end
    return false
end

function BishopRules(ssv,esv,colorOfPiece)
    --Moves Diagonally
    local increment = esv - ssv
    local amountToEdgeOfBoardVertically = 8 - ssv%8
    local amountToEdgeOfBoardInverse = -(ssv%8)+1

    if amountToEdgeOfBoardVertically == 8 then
        amountToEdgeOfBoardVertically = 0
        amountToEdgeOfBoardInverse = -7
    end

    --check for the edge of the board
    if amountToEdgeOfBoardVertically == 0 and (increment%9 == 0 and increment > 0) then 
        print("Ran off edge of board")
        return false 
    elseif amountToEdgeOfBoardVertically == 0 and (increment%7 == 0 and increment < 0) then 
        print("Ran off edge of board")
        return false
    elseif amountToEdgeOfBoardInverse == 0 and (increment%7 == 0 and increment > 0) then 
        print("Ran off edge of board")
        return false
    elseif amountToEdgeOfBoardInverse == 0 and (increment%9 == 0 and increment < 0) then
        print("Ran off edge of board")
        return false
    end 

    --print("BISHOP INCREMENT", increment)
    if (increment > 9 or increment < -9) then
        --is increment mod 7 == 0 or increment mod 9 == 0?
        if increment%7 == 0 then
            --print("INCREMENT%7 == 0")
            --YES!
            for i=1, math.abs(increment)/7 do
                if increment > 0 then 
                    if (pieces[ssv+(i*7)] ~= "EMPTY" and i ~= math.abs(increment/7)) then
                        print("PIECE IN BETWEEN")
                        return false --you tried to pick a square that had a piece in between
                    elseif (pieces[ssv+(i*7)] ~= "EMPTY" and i == math.abs(increment/7) and colors[ssv+(i*7)] == colorOfPiece) then
                        print("RAN INTO PIECE")
                        return false --we ran into our own piece!
                    elseif (pieces[ssv+(i*7)] ~= "EMPTY" and i == math.abs(increment/7) and colors[ssv+(i*7)] ~= colorOfPiece) then
                        print("Piece Captured")
                        return true
                    end
                    return true 
                elseif increment < 0 then
                    if (pieces[ssv-(i*7)] ~= "EMPTY" and i ~= math.abs(increment/7)) then
                        print("PIECE IN BETWEEN")
                        return false --you tried to pick a square that had a piece in between
                    elseif (pieces[ssv-(i*7)] ~= "EMPTY" and i == math.abs(increment/7) and colors[ssv-(i*7)] == colorOfPiece) then
                        print("RAN INTO PIECE")
                        return false --we ran into our own piece!
                    elseif (pieces[ssv-(i*7)] ~= "EMPTY" and i == math.abs(increment/7) and colors[ssv-(i*7)] ~= colorOfPiece) then
                        print("Piece Captured")
                        return true
                    end 
                    return true
                end
            end
        elseif increment%9 == 0 then
            --YES!
            for i = 1,math.abs(increment)/9 do 
                if increment > 0 then 
                    if (pieces[ssv+(i*9)] ~= "EMPTY" and i ~= math.abs(increment/9)) then
                        print("PIECE IN BETWEEN")
                        return false --you tried to pick a square that had a piece in between
                    elseif (pieces[ssv+(i*9)] ~= "EMPTY" and i == math.abs(increment/9) and colors[ssv+(i*9)] == colorOfPiece) then
                        print("RAN INTO PIECE")
                        return false --we ran into our own piece!
                    elseif (pieces[ssv+(i*9)] ~= "EMPTY" and i == math.abs(increment/9) and colors[ssv+(i*9)] ~= colorOfPiece) then
                        print("Piece Captured")
                        return true
                    end
                    return true 
                elseif increment < 0 then
                    if (pieces[ssv-(i*9)] ~= "EMPTY" and i ~= math.abs(increment/9)) then
                        print("PIECE IN BETWEEN")
                        return false --you tried to pick a square that had a piece in between
                    elseif (pieces[ssv-(i*9)] ~= "EMPTY" and i == math.abs(increment/9) and colors[ssv-(i*9)] == colorOfPiece) then
                        print("RAN INTO PIECE")
                        return false --we ran into our own piece!
                    elseif (pieces[ssv-(i*9)] ~= "EMPTY" and i == math.abs(increment/9) and colors[ssv-(i*9)] ~= colorOfPiece) then
                        print("Piece Captured")
                        return true
                    end
                    return true 
                end
            end
        else 
            --NOPE, we didn't move diagonally
            print("NO DIAGONAL HERE")
            return false
        end
    else
        for i,v in pairs(BISHOP_DIR) do 
            if (v == increment) then
                if (colors[esv] ~= colorOfPiece and pieces[esv] ~= "EMPTY") then
                    print("Piece Captured")
                elseif (colors[esv] == colorOfPiece) then
                    return false
                end 
                return true --we met the criteria for a bishop move
            end 
        end
    end
    return false
end

function QueenRules(ssv,esv,colorOfPiece)
    --Move horizontally,vertically, and diagonally
    local increment = esv-ssv
    local amountToEdgeOfBoardVertically = 8 - ssv%8
    local amountToEdgeOfBoardInverse = -(ssv%8)+1

    if amountToEdgeOfBoardVertically == 8 then
        amountToEdgeOfBoardVertically = 0
        amountToEdgeOfBoardInverse = -7
    end


    if (increment%8 == 0) then
        --We are moving horizontally
        for i = 1,math.abs(increment)/8 do 
            print(colors[ssv+(i*8)])
            if increment > 0 then 
                if (pieces[ssv+(i*8)] ~= "EMPTY" and i ~= increment/8) then
                    print("PIECE IN BETWEEN")
                    return false --you tried to pick a square that had a piece in between
                elseif (pieces[ssv+(i*8)] ~= "EMPTY" and i == increment/8 and colors[ssv+(i*8)] == colorOfPiece) then
                    print("RAN INTO PIECE")
                    return false --we ran into our own piece!
                elseif (pieces[ssv+(i*8)] ~= "EMPTY" and i == increment/8 and colors[ssv+(i*8)] ~= colorOfPiece) then
                    print("Piece Captured")
                    return true
                elseif (pieces[ssv+(i*8)] == "EMPTY" and i == increment/8) then
                    return true
                end
            elseif increment < 0 then
                if (pieces[ssv-(i*8)] ~= "EMPTY" and i ~= math.abs(increment/8)) then
                    print("PIECE IN BETWEEN")
                    return false --you tried to pick a square that had a piece in between
                elseif (pieces[ssv-(i*8)] ~= "EMPTY" and i == math.abs(increment/8) and colors[ssv-(i*8)] == colorOfPiece) then
                    print("RAN INTO PIECE")
                    return false --we ran into our own piece!
                elseif (pieces[ssv-(i*8)] ~= "EMPTY" and i == math.abs(increment/8) and colors[ssv-(i*8)] ~= colorOfPiece) then
                    print("Piece Captured")
                    return true
                elseif (pieces[ssv-(i*8)] == "EMPTY" and i == math.abs(increment/8)) then
                    return true
                end
            end
        end
    end

    --MOVE VERTICALLY
    if (increment >= amountToEdgeOfBoardInverse and increment <= amountToEdgeOfBoardVertically) then
        if increment < 0 then
            for i = 1,math.abs(increment) do  
                if (pieces[ssv-i] ~= "EMPTY" and i ~= math.abs(increment)) then
                    print("PIECE IN BETWEEN")
                    return false --you tried to pick a square that had a piece in between
                elseif (pieces[ssv-i] ~= "EMPTY" and i == math.abs(increment) and colors[ssv-i] == colorOfPiece) then
                    print("RAN INTO PIECE")
                    return false --we ran into our own piece!
                elseif (pieces[ssv-i] ~= "EMPTY" and i == math.abs(increment) and colors[ssv-i] ~= colorOfPiece) then
                    print("Piece Captured")
                    return true
                elseif (pieces[ssv-i] == "EMPTY" and i == math.abs(increment)) then
                    return true
                end
            end
        elseif increment > 0 then
            for i = 1,increment do  
                if (pieces[ssv+i] ~= "EMPTY" and i ~= increment) then
                    print("PIECE IN BETWEEN")
                    return false --you tried to pick a square that had a piece in between
                elseif (pieces[ssv+i] ~= "EMPTY" and i == increment and colors[ssv+i] == colorOfPiece) then
                    print("RAN INTO PIECE")
                    return false --we ran into our own piece!
                elseif (pieces[ssv+i] ~= "EMPTY" and i == increment and colors[ssv+i] ~= colorOfPiece) then
                    print("Piece Captured")
                    return true
                elseif (pieces[ssv+i] == "EMPTY" and i == increment) then
                    return true
                end
            end
        end
    end

    --MOVE DIAGONALLY

    --check for the edge of the board
     if amountToEdgeOfBoardVertically == 0 and (increment%9 == 0 and increment > 0) then 
        print("Ran off edge of board")
        return false 
    elseif amountToEdgeOfBoardVertically == 0 and (increment%7 == 0 and increment < 0) then 
        print("Ran off edge of board")
        return false
    elseif amountToEdgeOfBoardInverse == 0 and (increment%7 == 0 and increment > 0) then 
        print("Ran off edge of board")
        return false
    elseif amountToEdgeOfBoardInverse == 0 and (increment%9 == 0 and increment < 0) then
        print("Ran off edge of board")
        return false
    end 
    --end correction function

    if (increment >= 7 or increment <= -7) then
        --is increment mod 7 == 0 or increment mod 9 == 0?
        if increment%7 == 0 then
            for i=1, math.abs(increment)/7 do
                if increment > 0 then 
                    if (pieces[ssv+(i*7)] ~= "EMPTY" and i ~= math.abs(increment/7)) then
                        print("PIECE IN BETWEEN")
                        return false --you tried to pick a square that had a piece in between
                    elseif (pieces[ssv+(i*7)] ~= "EMPTY" and i == math.abs(increment/7) and colors[ssv+(i*7)] == colorOfPiece) then
                        print("RAN INTO PIECE")
                        return false --we ran into our own piece!
                    elseif (pieces[ssv+(i*7)] ~= "EMPTY" and i == math.abs(increment/7) and colors[ssv+(i*7)] ~= colorOfPiece) then
                        print("Piece Captured")
                        return true
                    elseif (pieces[ssv+(i*7)] == "EMPTY" and i == math.abs(increment/7) and colors[ssv+(i*7)] ~= colorOfPiece) then
                        return true
                    end
                elseif increment < 0 then
                    if (pieces[ssv-(i*7)] ~= "EMPTY" and i ~= math.abs(increment/7)) then
                        print("PIECE IN BETWEEN")
                        return false --you tried to pick a square that had a piece in between
                    elseif (pieces[ssv-(i*7)] ~= "EMPTY" and i == math.abs(increment/7) and colors[ssv-(i*7)] == colorOfPiece) then
                        print("RAN INTO PIECE")
                        return false --we ran into our own piece!
                    elseif (pieces[ssv-(i*7)] ~= "EMPTY" and i == math.abs(increment/7) and colors[ssv-(i*7)] ~= colorOfPiece) then
                        print("Piece Captured")
                        return true
                    elseif (pieces[ssv-(i*7)] == "EMPTY" and i == math.abs(increment/7) and colors[ssv-(i*7)] ~= colorOfPiece) then
                        return true
                    end 
                end
            end
        elseif increment%9 == 0 then
            --YES!
            for i = 1,math.abs(increment)/9 do 
                if increment > 0 then 
                    if (pieces[ssv+(i*9)] ~= "EMPTY" and i ~= math.abs(increment/9)) then
                        print("PIECE IN BETWEEN")
                        return false --you tried to pick a square that had a piece in between
                    elseif (pieces[ssv+(i*9)] ~= "EMPTY" and i == math.abs(increment/9) and colors[ssv+(i*9)] == colorOfPiece) then
                        print("RAN INTO PIECE")
                        return false --we ran into our own piece!
                    elseif (pieces[ssv+(i*9)] ~= "EMPTY" and i == math.abs(increment/9) and colors[ssv+(i*9)] ~= colorOfPiece) then
                        print("Piece Captured")
                        return true
                    elseif (pieces[ssv+(i*9)] == "EMPTY" and i == math.abs(increment/9) and colors[ssv+(i*9)] ~= colorOfPiece) then
                        return true
                    end
                elseif increment < 0 then
                    if (pieces[ssv-(i*9)] ~= "EMPTY" and i ~= math.abs(increment/9)) then
                        print("PIECE IN BETWEEN")
                        return false --you tried to pick a square that had a piece in between
                    elseif (pieces[ssv-(i*9)] ~= "EMPTY" and i == math.abs(increment/9) and colors[ssv-(i*9)] == colorOfPiece) then
                        print("RAN INTO PIECE")
                        return false --we ran into our own piece!
                    elseif (pieces[ssv-(i*9)] ~= "EMPTY" and i == math.abs(increment/9) and colors[ssv-(i*9)] ~= colorOfPiece) then
                        print("Piece Captured")
                        return true
                    elseif (pieces[ssv-(i*9)] == "EMPTY" and i == math.abs(increment/9) and colors[ssv-(i*9)] ~= colorOfPiece) then
                        return true
                    end
                end
            end
        end
    end

    return false
    --Capture in Path
end

function KingRules(ssv,esv,colorOfPiece)
    local amountToEdgeOfBoardVertically = 8 - ssv%8
    local amountToEdgeOfBoardInverse = math.abs(-(ssv%8)+1)
    if amountToEdgeOfBoardVertically == 8 then
        amountToEdgeOfBoardVertically = 0
        amountToEdgeOfBoardInverse = 7
    end

    --Move one square horizontally, vertically, and diagonally
    local increment = esv-ssv

    if (increment == -9 or increment == -1 or increment == 7) and amountToEdgeOfBoardInverse == 0 then
        return false
    elseif (increment == 9 or increment == 1 or increment == -7) and amountToEdgeOfBoardVertically == 0 then 
        return false
    end
    
    for i,v in pairs(KING_DIR) do
        if (v == increment) then
            if (colors[esv] ~= colorOfPiece and pieces[esv] ~= "EMPTY") then
                --is piece defended?!?
                print("Piece Captured")
            elseif (colors[esv] == colorOfPiece) then
                return false
            end 
            return true --we met the criteria for a king move
        end 
    end 
    -----CASTLING-----
    if (increment == 16) then--are we attempting to castle?
        if (pieces[ssv+8] == "EMPTY" and pieces[ssv+16] == "EMPTY") then
            --ALSO DO A CHECK FOR KING THREATENED ON 8 and 16
            if (colorOfPiece == "WHITE") then
                if hasKingMoved[1] == false then
                    if hasRookMoved[2] == false then
                        local castles = Castles(colorOfPiece,increment)
                        print("CASTLES KINGSIDE",castles)
                        if castles == false then
                            return false
                        else
                            print("CASTLED")
                            return true
                        end
                    else
                        return false
                    end
                else
                    return false
                end
            elseif (colorOfPiece == "BLACK") then
                if hasKingMoved[2] == false then
                    if hasRookMoved[4] == false then
                        local castles = Castles(colorOfPiece,increment)
                        if castles == false then
                            return false
                        else
                            print("CASTLED")
                            return true
                        end
                    else
                        return false
                    end
                else
                    return false
                end
            end
        end
        return false
    elseif (increment == -16) then
        if (pieces[ssv-8] == "EMPTY" and pieces[ssv-16] == "EMPTY") then
            --ALSO DO A CHECK FOR KING THREATENED ON -8 and -16
            if (colorOfPiece == "WHITE") then
                if hasKingMoved[1] == false then
                    if hasRookMoved[1] == false then
                        local castles = Castles(colorOfPiece,increment)
                        if castles == false then
                            return false
                        else
                            print("CASTLED")
                            return true
                        end
                    else
                        return false
                    end
                else
                    return false
                end
            elseif (colorOfPiece == "BLACK") then
                if hasKingMoved[2] == false then
                    if hasRookMoved[3] == false then
                        local castles = Castles(colorOfPiece,increment)
                        if castles == false then
                            return false
                        else
                            print("CASTLED")
                            return true
                        end
                    else
                        return false
                    end
                else
                    return false
                end
            end
        end
    end

    return false

    --check all enemy pieces and their possible moves
end 

function Castles(colorOfPiece,increment)
    --Special checking rules for Castles...
    --MUST BE EXECUTED HERE 
    local checkInBetween

    --END
    if colorOfPiece == "WHITE" then
        if increment == 16 then --The rook will always move to the same spot
            checkInBetween = Check(41,"WHITE")
            if checkInBetween == false then 
                return false 
            end
            pieces[41] = pieces[57]
            colors[41] = "WHITE"
            pieces[57] = "EMPTY"
            colors[57] = "EMPTY"
        elseif increment == -16 then
            checkInBetween = Check(25,"WHITE")
            if checkInBetween == false then 
                return false 
            end
            pieces[25] = pieces[1]
            colors[25] = "WHITE"
            pieces[1] = "EMPTY"
            colors[1] = "EMPTY"
        end
    elseif colorOfPiece == "BLACK" then
        if increment == 16 then
            checkInBetween = Check(48,"BLACK")
            if checkInBetween == false then 
                return false 
            end
            pieces[48] = pieces[64]
            colors[48] = colors[64]
            pieces[64] = "EMPTY"
            colors[64] = "EMPTY"
        elseif increment == -16 then
            checkInBetween = Check(32,"BLACK")
            if checkInBetween == false then 
                return false 
            end
            pieces[32] = pieces[8]
            colors[32] = colors[8]
            pieces[8] = "EMPTY"
            colors[8] = "EMPTY"
        end
    end   
    return true 
end

function EnPassant(ssv,esv,colorOfPiece)

    local increment = esv - ssv
    --last move pawn
    --print(string.sub(board[esv-1],2,-1))
    if colorOfPiece == "WHITE" then
        if lastMove[1] == "PAWN" then --The last move was a pawn
            if (board[esv-1] == lastMove[2]) and (string.sub(board[esv-1],2,-1) == "5") and (lastMove[3] == -2) then --The pawns are adjacent
                pieces[esv-1] = "EMPTY"
                colors[esv-1] = "EMPTY"
                return true
            else 
                return false
            end
        else 
            return false
        end
    elseif colorOfPiece == "BLACK" then 
        if lastMove[1] == "PAWN" then --The last move was a pawn
            if (board[esv+1] == lastMove[2]) and (string.sub(board[esv+1],2,-1) == "4") and (lastMove[3] == 2) then --The pawns are adjacent
                pieces[esv+1] = "EMPTY"
                colors[esv+1] = "EMPTY"
                return true
            else 
                return false
            end
        else 
            return false
        end
    else 
        return false
    end
    return false
end

function Check(esv,colorOfPiece)
    --this check occurs AFTER a player tries to make a move
    local amountToEdgeOfBoardVertically = 8 - esv%8
    local amountToEdgeOfBoardInverse = math.abs(-(esv%8)+1)
    if amountToEdgeOfBoardVertically == 8 then
        amountToEdgeOfBoardVertically = 0
        amountToEdgeOfBoardInverse = 7
    end
    --Check every turn to see if king is threatened

    --return false = king is in check, HOWEVER, you have to do a second check on whether or not to disallow the last move

    --Check for opposing King
    for i,v in ipairs(KING_DIR) do 
        if pieces[esv+v] == "KING" and colors[esv+v] ~= colorOfPiece then
            if (amountToEdgeOfBoardInverse == 0 and (v == 7 or v==-1 or v==-9)) then
                --do nothing!!!
            elseif (amountToEdgeOfBoardVertically == 0 and (v == -7 or v==1 or v==9)) then
                --Do Nothing
            else
                print("Kings can't sit next to each other...",v)
                return false
            end
        end 
    end

    --CHECK Diagonal (1 iteration) for pawn
    if colorOfPiece == "WHITE" then 
        if (pieces[esv-7] == "PAWN" and colors[esv-7] == "BLACK") or (pieces[esv+9] == "PAWN" and colors[esv+9] == "BLACK") then 
            print("Pawn putting the King in check")
            return false
        end
    elseif colorOfPiece == "BLACK" then 
        if (pieces[esv-9] == "PAWN" and colors[esv-9] == "WHITE") or (pieces[esv+7] == "PAWN" and colors[esv+7] == "WHITE") then 
            print("Pawn putting the King in check")
            return false
        end
    end


    --CHECK Knight moves on King, if any piece == Knight, end eval in check, otherwise not
    for i,v in ipairs(KNIGHT_DIR) do 
        local knight_check = esv + v
        if knight_check >= 1 and knight_check <= 64 then

            if (v == 6 or v == 15 or v == -10 or v == -17) and amountToEdgeOfBoardInverse == 0 then 
            elseif (v == 6 or v == -10) and amountToEdgeOfBoardInverse == 1 then
            elseif (v == -6 or v == -15 or v == 10 or v == 17) and amountToEdgeOfBoardVertically == 0 then
            elseif (v == -6 or v == 10) and amountToEdgeOfBoardVertically == 1 then
            else
                print("SQUARES CHECKED",knight_check)
                if (colors[knight_check] ~= colorOfPiece and pieces[knight_check] == "KNIGHT") then
                    print("Knight putting the King in check on square",knight_check)
                    return false
                end 
            end 
        end
    end



    --CHECK Vertically on King line for Rook or Queen (any other piece == end eval)
    --QUESTION: If amounttoedgeofboardvertically = 0, does this code run or break?
    for i=1,amountToEdgeOfBoardVertically do
        if colors[esv+i] == colorOfPiece then 
            print("Piece found, own color")
            break 
        elseif (pieces[esv+i] ~= "EMPTY" and pieces[esv+i] ~= "ROOK" and pieces[esv+i] ~= "QUEEN") then
            print("Piece found, not a rook or queen")
            break --King can't be in check from this direction
        elseif (pieces[esv+i] == "ROOK" or pieces[esv+i] == "QUEEN") then
            print("ROOK/QUEEN putting the king in check")
            return false --You're in check
        end
    end

    for i=1,amountToEdgeOfBoardInverse do
        if colors[esv-i] == colorOfPiece then 
            print("Piece found, own color")
            break 
        elseif (pieces[esv-i] ~= "EMPTY" and pieces[esv-i] ~= "ROOK" and pieces[esv-i] ~= "QUEEN") then
            print("Piece found, not a rook or queen")
            break --King can't be in check from this direction
        elseif (pieces[esv-i] == "ROOK" or pieces[esv-i] == "QUEEN") then
            print("ROOK/QUEEN putting the king in check")
            return false --You're in check
        end
    end

    --CHECK Horizontally on King line for Rook or Queen (any other piece == end eval)
    local amountOfHorizontalIterations = (64-esv)//8 
    local amountOfHorizontalReverseIterations = math.abs(amountOfHorizontalIterations - 7)

    for i=1,amountOfHorizontalIterations do
        if colors[esv+(i*8)] == colorOfPiece then 
            print("Piece found, own color")
            break 
        elseif (pieces[esv+(i*8)] ~= "EMPTY" and pieces[esv+(i*8)] ~= "ROOK" and pieces[esv+(i*8)] ~= "QUEEN") then
            print("Piece found, not a rook or queen")
            break --King can't be in check from this direction
        elseif (pieces[esv+(i*8)] == "ROOK" or pieces[esv+(i*8)] == "QUEEN") then
            print("ROOK/QUEEN putting the king in check")
            return false --You're in check
        end
    end

    for i=1,amountOfHorizontalReverseIterations do
        if colors[esv-(i*8)] == colorOfPiece then 
            print("Piece found, own color")
            break 
        elseif (pieces[esv-(i*8)] ~= "EMPTY" and pieces[esv-(i*8)] ~= "ROOK" and pieces[esv-(i*8)] ~= "QUEEN") then
            print("Piece found, not a rook or queen")
            break --King can't be in check from this direction
        elseif (pieces[esv-(i*8)] == "ROOK" or pieces[esv-(i*8)] == "QUEEN") then
            print("ROOK/QUEEN putting the king in check")
            return false --You're in check
        end
    end

    --CHECK Diagonally on King line for Bishop or Queen (any other piece == end eval)
    local amountOfDiagonalIterations = (64-esv)//7 --bottom right
    local amountOfDiagonalIterations2 = (64-esv)//9 --top right
    local amountOfDiagonalReverseIterations = math.abs((0-esv)//-7) --top left
    local amountOfDiagonalReverseIterations2 = math.abs((0-esv)//-9) --back left

    --OK so need a double check here... 
    if amountOfDiagonalIterations > math.abs(amountToEdgeOfBoardInverse) then 
        amountOfDiagonalIterations = math.abs(amountToEdgeOfBoardInverse)
    end
    if amountOfDiagonalIterations2 > amountToEdgeOfBoardVertically then 
        amountOfDiagonalIterations2 = amountToEdgeOfBoardVertically
    end
    if amountOfDiagonalReverseIterations > amountToEdgeOfBoardVertically then 
        amountOfDiagonalReverseIterations = amountToEdgeOfBoardVertically
    end
    if amountOfDiagonalReverseIterations2 > math.abs(amountToEdgeOfBoardInverse) then 
        amountOfDiagonalReverseIterations2 = math.abs(amountToEdgeOfBoardInverse)
    end
    --END correction function

    for i=1,amountOfDiagonalIterations do
        if colors[esv+(i*7)] == colorOfPiece then 
            print("Piece found, own color")
            break 
        elseif (pieces[esv+(i*7)] ~= "EMPTY" and pieces[esv+(i*7)] ~= "BISHOP" and pieces[esv+(i*7)] ~= "QUEEN") then
            print("Piece found, not a bishop or queen")
            break --King can't be in check from this direction
        elseif (pieces[esv+(i*7)] == "BISHOP" or pieces[esv+(i*7)] == "QUEEN") then
            print("BISHOP/QUEEN putting the king in check")
            return false --You're in check
        end
    end

    for i=1,amountOfDiagonalIterations2 do
        if colors[esv+(i*9)] == colorOfPiece then 
            print("Piece found, own color")
            break 
        elseif (pieces[esv+(i*9)] ~= "EMPTY" and pieces[esv+(i*9)] ~= "BISHOP" and pieces[esv+(i*9)] ~= "QUEEN") then
            print("Piece found, not a bishop or queen")
            break --King can't be in check from this direction
        elseif (pieces[esv+(i*9)] == "BISHOP" or pieces[esv+(i*9)] == "QUEEN") then
            print("BISHOP/QUEEN putting the king in check")
            return false --You're in check
        end
    end

    for i=1,amountOfDiagonalReverseIterations do
        if colors[esv-(i*7)] == colorOfPiece then 
            print("Piece found, own color")
            break 
        elseif (pieces[esv-(i*7)] ~= "EMPTY" and pieces[esv-(i*7)] ~= "BISHOP" and pieces[esv-(i*7)] ~= "QUEEN") then
            print("Piece found, not a bishop or queen")
            break --King can't be in check from this direction
        elseif (pieces[esv-(i*7)] == "BISHOP" or pieces[esv-(i*7)] == "QUEEN") then
            print("BISHOP/QUEEN putting the king in check")
            return false --You're in check
        end
    end

    for i=1,amountOfDiagonalReverseIterations2 do
        if colors[esv-(i*9)] == colorOfPiece then 
            print("Piece found, own color")
            break 
        elseif (pieces[esv-(i*9)] ~= "EMPTY" and pieces[esv-(i*9)] ~= "BISHOP" and pieces[esv-(i*9)] ~= "QUEEN") then
            print("Piece found, not a bishop or queen")
            break --King can't be in check from this direction
        elseif (pieces[esv-(i*9)] == "BISHOP" or pieces[esv-(i*9)] == "QUEEN") then
            print("BISHOP/QUEEN putting the king in check")
            return false --You're in check
        end
    end

    return true

    --does the move block the check or move the king out of harm's way
end

function Checkmate(esv,colorOfPiece)
    --King cannot move
    local canKingMove, canBlock,checkers
    local kingSafe = Check(esv,colorOfPiece)
    if kingSafe == true then
        print("WHEW")
        return true
    end
    if kingSafe == false then 
        print("uh-oh")
        --We must check for all possible ways out!
        --check King Moves
        for i,v in ipairs(KING_DIR) do 
            canKingMove = KingRules(esv,esv+v,colorOfPiece)
            if canKingMove == true then 
                checkers = Check(esv+v,colorOfPiece)
                if checkers == true then
                    print("KING CAN MOVE",esv+v)
                    return true
                end
            end
        end
        --now we must check the remaining pieces to see if they can block the check
        for i=1, 64 do 
            if colors[i] == colorOfPiece and pieces[i] ~= "KING" then
                for k=1, 64 do 
                    if pieces[i] == "PAWN" then 
                        canBlock = PawnRules(i,i+k,colorOfPiece)
                        if canBlock == true then
                            local temppiece = pieces[i+k]
                            local tempcolor = colors[i+k]
                            pieces[i+k] = "PAWN"
                            colors[i+k] = colorOfPiece
                            checkers = Check(esv,colorOfPiece)
                            if checkers == true then
                                pieces[i+k] = temppiece
                                colors[i+k] = tempcolor
                                print("PAWN CAN BLOCK",i,k)
                                return true
                            end
                            pieces[i+k] = temppiece
                            colors[i+k] = tempcolor
                        end
                    end
                    if pieces[i] == "KNIGHT" then
                        canBlock = KnightRules(i,i+k,colorOfPiece)
                        if canBlock == true then
                            local temppiece = pieces[i+k]
                            local tempcolor = colors[i+k]
                            pieces[i+k] = "KNIGHT"
                            colors[i+k] = colorOfPiece
                            checkers = Check(esv,colorOfPiece)
                            if checkers == true then 
                                pieces[i+k] = temppiece
                                colors[i+k] = tempcolor
                                print("KNIGHT CAN BLOCK",i,k)
                                return true
                            end
                            pieces[i+k] = temppiece
                            colors[i+k] = tempcolor
                        end
                    end 
                    if pieces[i] == "BISHOP" then 
                        canBlock = BishopRules(i,i+k,colorOfPiece)
                        if canBlock == true then
                            local temppiece = pieces[i+k]
                            local tempcolor = colors[i+k]
                            pieces[i+k] = "BISHOP"
                            colors[i+k] = colorOfPiece
                            checkers = Check(esv,colorOfPiece)
                            if checkers == true then
                                pieces[i+k] = temppiece
                                colors[i+k] = tempcolor
                                print("BISHOP CAN BLOCK",i,k)
                                return true
                            end
                            pieces[i+k] = temppiece
                            colors[i+k] = tempcolor
                        end
                    end 
                    if pieces[i] == "ROOK" then 
                        canBlock = RookRules(i,i+k,colorOfPiece)
                        if canBlock == true then
                            local temppiece = pieces[i+k]
                            local tempcolor = colors[i+k]
                            pieces[i+k] = "ROOK"
                            colors[i+k] = colorOfPiece
                            checkers = Check(esv,colorOfPiece)
                            if checkers == true then 
                                pieces[i+k] = temppiece
                                colors[i+k] = tempcolor
                                print("ROOK CAN BLOCK",i,k)
                                return true
                            end
                            pieces[i+k] = temppiece
                            colors[i+k] = tempcolor
                        end
                    end 
                    if pieces[i] == "QUEEN" then
                        canBlock = QueenRules(i,i+k,colorOfPiece)
                        if canBlock == true then
                            local temppiece = pieces[i+k]
                            local tempcolor = colors[i+k]
                            pieces[i+k] = "QUEEN"
                            colors[i+k] = colorOfPiece
                            checkers = Check(esv,colorOfPiece)
                            if checkers == true then 
                                pieces[i+k] = temppiece
                                colors[i+k] = tempcolor
                                print("QUEEN CAN BLOCK",i,k)
                                return true
                            end
                            pieces[i+k] = temppiece
                            colors[i+k] = tempcolor
                        end
                    end
                end
            end
        end 
        

    end
    return false
    --end game
end

function Draw()
    --Just Kings
    --end game
    for i,v in ipairs(pieces) do 
        if (pieces[i] ~= "KING" and pieces[i] ~= "EMPTY") then 
            return false
        end 
    end
    
    --if we make it here, it's a draw
    return true
end

function Promote(esv,colorOfPiece)
    --Prompt user to select a piece.
    --Send data to client.
    --For now, just make it a queen... 
    print("PAWN PROMOTED")
    promoted = true
    return 
end

function EndGame(player)
    --If client wishes to end game, then they may do so
    --player is the player who resigned
    local player2,boardParent
    for i,v in pairs(_G.games_in_progress) do 
        if (_G.games_in_progress[i].white == player) then
            player2 = _G.games_in_progress[i].black
            boardParent = World.FindObjectById(v.board)
            table.remove(_G.games_in_progress,i)
            break
        end
        if (_G.games_in_progress[i].black == player) then
            player2 = _G.games_in_progress[i].white
            boardParent = World.FindObjectById(v.board)
            table.remove(_G.games_in_progress,i)
            break
        end
    end

    local propWhiteChair = boardParent:FindChildByName("WhiteChair")
	local propBlackChair = boardParent:FindChildByName("BlackChair")
	local Trigger1 = propWhiteChair:FindChildByName("WhiteTrigger")
	local Trigger2 = propBlackChair:FindChildByName("BlackTrigger")

    Events.BroadcastToPlayer(player,"End Game")
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
    for i,v in pairs(hasRookMoved) do 
        hasRookMoved[i] = false
    end
    for i,v in pairs(hasKingMoved) do 
        hasKingMoved[i] = false
    end

    board = util.CopyTable(SQUARES)
    pieces = util.CopyTable(DEFAULT_PIECE_LAYOUT)
    colors = util.CopyTable(COLOR_LAYOUT)
end

function OnPlayerLeft(player)
    for j,k in pairs(_G.queue) do --clean out player and board refs because they're taken
        if k.player == player then
            _G.queue[j] = nil
        end 
    end
	for i,v in pairs(_G.games_in_progress) do 
		if (v.white == player) then
			local boardParent = World.FindObjectById(v.board)
			local propWhiteChair = boardParent:FindChildByName("WhiteChair")
			local propBlackChair = boardParent:FindChildByName("BlackChair")
			local Trigger1 = propWhiteChair:FindChildByName("WhiteTrigger")
			local Trigger2 = propBlackChair:FindChildByName("BlackTrigger")

			Trigger1.isInteractable = true
			Trigger2.isInteractable = true

			Events.BroadcastToPlayer(v.black,"End Game")
			v.black.isMovementEnabled = true
			v.black.animationStance = "unarmed_stance"
            v.black.team = 0
            v.black:SetWorldPosition(v.black:GetWorldPosition()+Vector3.RIGHT*100)

            table.remove(_G.games_in_progress,i)

            for i,v in pairs(hasRookMoved) do 
                hasRookMoved[i] = false
            end
            for i,v in pairs(hasKingMoved) do 
                hasKingMoved[i] = false
            end
        
            board = util.CopyTable(SQUARES)
            pieces = util.CopyTable(DEFAULT_PIECE_LAYOUT)
            colors = util.CopyTable(COLOR_LAYOUT)
			break
		elseif (v.black == player) then
			local boardParent = World.FindObjectById(v.board)
			local propWhiteChair = boardParent:FindChildByName("WhiteChair")
			local propBlackChair = boardParent:FindChildByName("BlackChair")
			local Trigger1 = propWhiteChair:FindChildByName("WhiteTrigger")
			local Trigger2 = propBlackChair:FindChildByName("BlackTrigger")

			Trigger1.isInteractable = true
			Trigger2.isInteractable = true

			Events.BroadcastToPlayer(v.white,"End Game")
			v.white.isMovementEnabled = true
			v.white.animationStance = "unarmed_stance"
            v.white.team = 0
            v.white:SetWorldPosition(v.white:GetWorldPosition()+Vector3.RIGHT*100)

            table.remove(_G.games_in_progress,i)

            for i,v in pairs(hasRookMoved) do 
                hasRookMoved[i] = false
            end
            for i,v in pairs(hasKingMoved) do 
                hasKingMoved[i] = false
            end
        
            board = util.CopyTable(SQUARES)
            pieces = util.CopyTable(DEFAULT_PIECE_LAYOUT)
            colors = util.CopyTable(COLOR_LAYOUT)
			break
		end
	end
end

Events.ConnectForPlayer("Move",MovePiece)
Events.ConnectForPlayer("End Game",EndGame)
Game.playerLeftEvent:Connect(OnPlayerLeft)