local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local LIGHT = script:GetCustomProperty("Light"):WaitForObject()

local MIN_RADIUS = ROOT:GetCustomProperty("MinRadius") or 400
local MAX_RADIUS = ROOT:GetCustomProperty("MaxRadius") or 500
local FLICKER_SPEED = ROOT:GetCustomProperty("FlickerSpeed") or 36

-- Validate input
MIN_RADIUS = math.max(1, MIN_RADIUS)
MAX_RADIUS = math.max(1, MAX_RADIUS)
FLICKER_SPEED = math.max(0.1, FLICKER_SPEED)

local function GetTargetRadius()
    return math.random(MIN_RADIUS, MAX_RADIUS)
end

local targetRadius = GetTargetRadius()

function Tick(deltaTime)
    if math.abs(LIGHT.attenuationRadius - targetRadius) < 0.01 then
        targetRadius = GetTargetRadius()
    end
    LIGHT.attenuationRadius = CoreMath.Lerp(LIGHT.attenuationRadius, targetRadius, deltaTime * FLICKER_SPEED)
end