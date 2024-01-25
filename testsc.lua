local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")

local afkThreshold = 1 -- Độ lệch tọa độ để xem có chuyển động hay không
local afkTimeThreshold = 20 -- Thời gian không chuyển động để xem là AFK (300 giây = 5 phút)

local function checkPlayerAFK()
    local character = LocalPlayer.Character

    if not character or not character:FindFirstChild("HumanoidRootPart") then
		LocalPlayer:Kick("khong tim thay character")
        return
    end

    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    local lastPosition = humanoidRootPart.Position
    local afkTime = 0

    RunService.Heartbeat:Connect(function(deltaTime)
        local currentPosition = humanoidRootPart.Position
        if (currentPosition - lastPosition).Magnitude > afkThreshold then
            afkTime = 0 
        else
            afkTime = afkTime + deltaTime
            if afkTime >= afkTimeThreshold then
                warn("Local character AFK")
                LocalPlayer:Kick("You were kicked for being AFK. muahahahasdjkhshdsd")
            end
        end
        lastPosition = currentPosition
    end)
end

checkPlayerAFK()
