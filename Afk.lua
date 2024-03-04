repeat wait(.25) until game:IsLoaded() and game.Players.LocalPlayer.Character
repeat wait(1) until game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart')

-- game.Players.LocalPlayer.Character
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local afkThreshold = 1 
local afkTimeThreshold = 300

local function calculateDistance(point1, point2)
    local dx = point2.X - point1.X
    local dy = point2.Y - point1.Y
    local dz = point2.Z - point1.Z

    return math.sqrt(dx^2 + dy^2 + dz^2)
end

local function onPositionChanged()
    local character = LocalPlayer.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then
        return
    end

    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    local lastPosition = humanoidRootPart.Position
    local afkTime = 0

    -- humanoidRootPart:GetPropertyChangedSignal("Position"):Connect(function()
        
    -- end)
    local currentPosition
    while true do
        pcall(function()
            currentPosition = humanoidRootPart.Position
            local distance = calculateDistance(currentPosition, lastPosition)
            if distance > afkThreshold then
                afkTime = 0 
            else
                afkTime = afkTime + 1
                if afkTime >= afkTimeThreshold then
                    LocalPlayer:Kick("Kich vi dam me")
                end
            end
            lastPosition = currentPosition
        end)
        wait(.5)
    end
    
end

spawn(function()
    local success, result = pcall(onPositionChanged)
    if not success then
        LocalPlayer:Kick("Error when connecting Position changed: " .. tostring(result))
    end    
end)
