repeat wait()
until game:FindFirstChild("CoreGui")
        and game.Players.LocalPlayer

repeat wait(.25)
until game:IsLoaded()
        and game.Players.LocalPlayer.Character
		
repeat wait()
until plr:FindFirstChild("Backpack")
        and plr:FindFirstChild("DataLoaded")
		
repeat wait(1) until game:GetService('Players').LocalPlayer.Character
repeat wait(1) until game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
repeat wait(1) until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('Main')

local KOGPlayers = game:GetService("Players")
local KOGLocalPlayer = KOGPlayers.LocalPlayer
local RunService = game:GetService("RunService")
local KOGcharacter = KOGLocalPlayer.Character
local afkthreshold = 1
local afktimethreshold = 10 

pcall(function()

    if not KOGcharacter or not KOGcharacter:FindFirstChild("HumanoidRootPart") then
    	KOGLocalPlayer:kick("khong tim thay character")
        return
    end
    
    local humanoidrootpart = KOGcharacter:WaitForChild("HumanoidRootPart")
    local lastposition = humanoidrootpart.Position
    local afktime = 0
	
	while true do
		local currentposition = humanoidrootpart.Position
		if (currentposition - lastposition).Magnitude > afkthreshold then
            afktime = 0 
        else
            afktime = afktime + 1
            if afktime >= afktimethreshold then
                KOGLocalPlayer:kick("Kick because AFK! kaka")
            end
        end
        lastposition = currentposition
		wait(1)
	end
end)
