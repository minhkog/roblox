pcall(function()

	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer
	local RunService = game:GetService("RunService")
	local character = LocalPlayer.Character
	LocalPlayer:Kick("script dang chay nha")
	return
	local afkThreshold = 1
	local afkTimeThreshold = 20 

    if not character or not character:FindFirstChild("HumanoidRootPart") then
		LocalPlayer:Kick("khong tim thay character")
        return
    end
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    local lastPosition = humanoidRootPart.Position
    local afkTime = 0
	
	while true do
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
	end
end)
