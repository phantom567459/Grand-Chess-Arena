-------------------------------------------------------------------------------------------------
-- ChessPieceData.lua
-- Author: Seth Leyens
-- Lookup table that contains all of the relevant data needed to set up a game of chess
-- Networked Context
-------------------------------------------------------------------------------------------------

local propBlackRoyalParent = script:GetCustomProperty("BlackRoyalParent"):WaitForObject()
local propBlackPawnParent = script:GetCustomProperty("BlackPawnParent"):WaitForObject()
local propWhiteRoyalParent = script:GetCustomProperty("WhiteRoyalParent"):WaitForObject()
local propWhitePawnParent = script:GetCustomProperty("WhitePawnParent"):WaitForObject()
local propBlackCaptured = script:GetCustomProperty("BlackCaptured"):WaitForObject()
local propWhiteCaptured = script:GetCustomProperty("WhiteCaptured"):WaitForObject()

local tableNum = script:GetCustomProperty("Parent"):WaitForObject()

local rookCaptured = {}
rookCaptured[1] = propWhiteCaptured:FindChildByName("Rooks"):GetChildren()
rookCaptured[2] = propBlackCaptured:FindChildByName("Rooks"):GetChildren()

local bishopCaptured = {}
bishopCaptured[1] = propWhiteCaptured:FindChildByName("Bishops"):GetChildren()
bishopCaptured[2] = propBlackCaptured:FindChildByName("Bishops"):GetChildren()

local knightCaptured = {}
knightCaptured[1] = propWhiteCaptured:FindChildByName("Knights"):GetChildren()
knightCaptured[2] = propBlackCaptured:FindChildByName("Knights"):GetChildren()

local pawnCaptured = {}
pawnCaptured[1] = propWhiteCaptured:FindChildByName("Pawns"):GetChildren()
pawnCaptured[2] = propBlackCaptured:FindChildByName("Pawns"):GetChildren()

local queenCaptured = {}
queenCaptured[1] = propWhiteCaptured:FindChildByName("Queen")
queenCaptured[2] = propBlackCaptured:FindChildByName("Queen")

local blackRoyals = propBlackRoyalParent:GetChildren()
local blackPawns = propBlackPawnParent:GetChildren()

local whiteRoyals = propWhiteRoyalParent:GetChildren()
local whitePawns = propWhitePawnParent:GetChildren()

local BLACK_PIECES = {}
BLACK_PIECES["Rooks"] = {
	{obj = blackRoyals[1], originalPosition = blackRoyals[1]:GetWorldPosition(), capture = rookCaptured[2][1]:GetWorldPosition(), usedInCastle = true},
	{obj = blackRoyals[8], originalPosition = blackRoyals[8]:GetWorldPosition(), capture = rookCaptured[2][2]:GetWorldPosition()}}
BLACK_PIECES["Knights"] = {
	{obj = blackRoyals[2], originalPosition = blackRoyals[2]:GetWorldPosition(), capture = knightCaptured[2][1]:GetWorldPosition()},
	{obj = blackRoyals[7], originalPosition = blackRoyals[7]:GetWorldPosition(), capture = knightCaptured[2][2]:GetWorldPosition()}}
BLACK_PIECES["Bishops"] = {
	{obj = blackRoyals[3], originalPosition = blackRoyals[3]:GetWorldPosition(), capture = bishopCaptured[2][1]:GetWorldPosition()},
	{obj = blackRoyals[6], originalPosition = blackRoyals[6]:GetWorldPosition(), capture = bishopCaptured[2][2]:GetWorldPosition()}}
BLACK_PIECES["Queen"] = { obj = blackRoyals[5], originalPosition = blackRoyals[5]:GetWorldPosition(), capture = queenCaptured[2]:GetWorldPosition()}
BLACK_PIECES["King"] = {obj = blackRoyals[4], originalPosition = blackRoyals[4]:GetWorldPosition()}

BLACK_PIECES["Pawns"] = {
	{obj = blackPawns[1], originalPosition = blackPawns[1]:GetWorldPosition(), capture = pawnCaptured[2][1]:GetWorldPosition()},
	{obj = blackPawns[2], originalPosition = blackPawns[2]:GetWorldPosition(), capture = pawnCaptured[2][2]:GetWorldPosition()},
	{obj = blackPawns[3], originalPosition = blackPawns[3]:GetWorldPosition(), capture = pawnCaptured[2][3]:GetWorldPosition()},
	{obj = blackPawns[4], originalPosition = blackPawns[4]:GetWorldPosition(), capture = pawnCaptured[2][4]:GetWorldPosition()},
	{obj = blackPawns[5], originalPosition = blackPawns[5]:GetWorldPosition(), capture = pawnCaptured[2][5]:GetWorldPosition()},
	{obj = blackPawns[6], originalPosition = blackPawns[6]:GetWorldPosition(), capture = pawnCaptured[2][6]:GetWorldPosition()},
	{obj = blackPawns[7], originalPosition = blackPawns[7]:GetWorldPosition(), capture = pawnCaptured[2][7]:GetWorldPosition()},
	{obj = blackPawns[8], originalPosition = blackPawns[8]:GetWorldPosition(), capture = pawnCaptured[2][8]:GetWorldPosition()}
}


local WHITE_PIECES = {}
WHITE_PIECES["Rooks"] = {
	{obj = whiteRoyals[1], originalPosition = whiteRoyals[1]:GetWorldPosition(), capture = rookCaptured[1][1]:GetWorldPosition()},
	{obj = whiteRoyals[8], originalPosition = whiteRoyals[8]:GetWorldPosition(), capture = rookCaptured[1][2]:GetWorldPosition(), usedInCastle = true}}
WHITE_PIECES["Knights"] = {
	{obj = whiteRoyals[2], originalPosition = whiteRoyals[2]:GetWorldPosition(), capture = knightCaptured[1][1]:GetWorldPosition()},
	{obj = whiteRoyals[7], originalPosition = whiteRoyals[7]:GetWorldPosition(), capture = knightCaptured[1][2]:GetWorldPosition()}}
WHITE_PIECES["Bishops"] = {
	{obj = whiteRoyals[3], originalPosition = whiteRoyals[3]:GetWorldPosition(), capture = bishopCaptured[1][1]:GetWorldPosition()},
	{obj = whiteRoyals[6], originalPosition = whiteRoyals[6]:GetWorldPosition(), capture = bishopCaptured[1][2]:GetWorldPosition()}}
WHITE_PIECES["Queen"] = { obj = whiteRoyals[4], originalPosition = whiteRoyals[4]:GetWorldPosition(), capture = queenCaptured[1]:GetWorldPosition()}
WHITE_PIECES["King"] = {obj = whiteRoyals[5], originalPosition = whiteRoyals[5]:GetWorldPosition()}

WHITE_PIECES["Pawns"] = {
	{obj = whitePawns[1], originalPosition = whitePawns[1]:GetWorldPosition(), capture = pawnCaptured[1][1]:GetWorldPosition()},
	{obj = whitePawns[2], originalPosition = whitePawns[2]:GetWorldPosition(), capture = pawnCaptured[1][2]:GetWorldPosition()},
	{obj = whitePawns[3], originalPosition = whitePawns[3]:GetWorldPosition(), capture = pawnCaptured[1][3]:GetWorldPosition()},
	{obj = whitePawns[4], originalPosition = whitePawns[4]:GetWorldPosition(), capture = pawnCaptured[1][4]:GetWorldPosition()},
	{obj = whitePawns[5], originalPosition = whitePawns[5]:GetWorldPosition(), capture = pawnCaptured[1][5]:GetWorldPosition()},
	{obj = whitePawns[6], originalPosition = whitePawns[6]:GetWorldPosition(), capture = pawnCaptured[1][6]:GetWorldPosition()},
	{obj = whitePawns[7], originalPosition = whitePawns[7]:GetWorldPosition(), capture = pawnCaptured[1][7]:GetWorldPosition()},
	{obj = whitePawns[8], originalPosition = whitePawns[8]:GetWorldPosition(), capture = pawnCaptured[1][8]:GetWorldPosition()}
}

local white = WHITE_PIECES
local black = BLACK_PIECES

local Chessboard = {}
local PieceTypes = {Pawn = 1, Rook = 2, Knight = 3, Bishop = 4, Queen = 5, King = 6} 
local Teams = {White = 1, Black = 2} 
	
Chessboard["H8"] = {objData = black["Rooks"][1], moveType = PieceTypes.Rook, team = Teams.Black }
Chessboard["G8"] = {objData = black["Knights"][1], moveType = PieceTypes.Knight, team = Teams.Black }
Chessboard["F8"] = {objData = black["Bishops"][1], moveType = PieceTypes.Bishop, team = Teams.Black }
Chessboard["E8"] = {objData = black["King"], moveType = PieceTypes.King, team = Teams.Black }
Chessboard["D8"] = {objData = black["Queen"], moveType = PieceTypes.Queen, team = Teams.Black }
Chessboard["C8"] = {objData = black["Bishops"][2], moveType = PieceTypes.Bishop, team = Teams.Black }
Chessboard["B8"] = {objData = black["Knights"][2], moveType = PieceTypes.Knight, team = Teams.Black }
Chessboard["A8"] = {objData = black["Rooks"][2], moveType = PieceTypes.Rook, team = Teams.Black }
Chessboard["H7"] = {objData = black["Pawns"][1], moveType = PieceTypes.Pawn, team = Teams.Black }
Chessboard["G7"] = {objData = black["Pawns"][2], moveType = PieceTypes.Pawn, team = Teams.Black }
Chessboard["F7"] = {objData = black["Pawns"][3], moveType = PieceTypes.Pawn, team = Teams.Black }
Chessboard["E7"] = {objData = black["Pawns"][4], moveType = PieceTypes.Pawn, team = Teams.Black }
Chessboard["D7"] = {objData = black["Pawns"][5], moveType = PieceTypes.Pawn, team = Teams.Black }
Chessboard["C7"] = {objData = black["Pawns"][6], moveType = PieceTypes.Pawn, team = Teams.Black }
Chessboard["B7"] = {objData = black["Pawns"][7], moveType = PieceTypes.Pawn, team = Teams.Black }
Chessboard["A7"] = {objData = black["Pawns"][8], moveType = PieceTypes.Pawn, team = Teams.Black }
	
Chessboard["A1"] = {objData = white["Rooks"][1], moveType = PieceTypes.Rook, team = Teams.White }
Chessboard["B1"] = {objData = white["Knights"][1], moveType = PieceTypes.Knight, team = Teams.White }
Chessboard["C1"] = {objData = white["Bishops"][1], moveType = PieceTypes.Bishop, team = Teams.White }
Chessboard["D1"] = {objData = white["Queen"], moveType = PieceTypes.Queen, team = Teams.White }
Chessboard["E1"] = {objData = white["King"], moveType = PieceTypes.King, team = Teams.White }
Chessboard["F1"] = {objData = white["Bishops"][2], moveType = PieceTypes.Bishop, team = Teams.White }
Chessboard["G1"] = {objData = white["Knights"][2], moveType = PieceTypes.Knight, team = Teams.White }
Chessboard["H1"] = {objData = white["Rooks"][2], moveType = PieceTypes.Rook, team = Teams.White }
	
Chessboard["A2"] = {objData = white["Pawns"][1], moveType = PieceTypes.Pawn, team = Teams.White }
Chessboard["B2"] = {objData = white["Pawns"][2], moveType = PieceTypes.Pawn, team = Teams.White }
Chessboard["C2"] = {objData = white["Pawns"][3], moveType = PieceTypes.Pawn, team = Teams.White }
Chessboard["D2"] = {objData = white["Pawns"][4], moveType = PieceTypes.Pawn, team = Teams.White }
Chessboard["E2"] = {objData = white["Pawns"][5], moveType = PieceTypes.Pawn, team = Teams.White }
Chessboard["F2"] = {objData = white["Pawns"][6], moveType = PieceTypes.Pawn, team = Teams.White }
Chessboard["G2"] = {objData = white["Pawns"][7], moveType = PieceTypes.Pawn, team = Teams.White }
Chessboard["H2"] = {objData = white["Pawns"][8], moveType = PieceTypes.Pawn, team = Teams.White }

_G.TEAMS = Teams
_G.PIECE_TYPES = PieceTypes

if _G.DEFAULT_CHESSBOARD == nil then
	_G.DEFAULT_CHESSBOARD = {}
end

_G.DEFAULT_CHESSBOARD[tableNum] = Chessboard



