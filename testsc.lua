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

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")

pcall(function()
	local character = LocalPlayer.Character
	LocalPlayer:kick("khong tim thay character")
	
	local afkthreshold = 1
	local afktimethreshold = 20 

    if not character or not character:findfirstchild("humanoidrootpart") then
		LocalPlayer:kick("khong tim thay character")
        return
    end
	local humanoidrootpart = character:waitforchild("humanoidrootpart")
    local lastposition = humanoidrootpart.position
    local afktime = 0
	
	while true do
		local currentposition = humanoidrootpart.position
		if (currentposition - lastposition).magnitude > afkthreshold then
            afktime = 0 
        else
            afktime = afktime + deltatime
            if afktime >= afktimethreshold then
                warn("local character afk")
                LocalPlayer:kick("you were kicked for being afk. muahahahasdjkhshdsd")
            end
        end
        lastposition = currentposition
		wait(1)
	end
end)
