repeat wait(.25) until game:IsLoaded() and game.Players.LocalPlayer.Character
repeat wait(1) until game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart')

-- game.Players.LocalPlayer.Character
local afkthreshold = 1
local afktimethreshold = 10

pcall(function()
    if not game.Players.LocalPlayer.Character or not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
    	game.Players.LocalPlayer:kick("khong tim thay character")
        return
    end
    
    local humanoidrootpart = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    local lastposition = humanoidrootpart.Position
    local afktime = 0
	
	while true do
		local currentposition = humanoidrootpart.Position
		if (currentposition - lastposition).Magnitude > afkthreshold then
            afktime = 0 
        else
            afktime = afktime + 1
            if afktime >= afktimethreshold then
                game.Players.LocalPlayer:kick("You were kicked for being AFK.")
            end
        end
        lastposition = currentposition
		wait(1)
	end
end)
