local KOGPlayers = game:GetService("Players")
local KOGLocalPlayer = KOGPlayers.LocalPlayer
local RunService = game:GetService("RunService")
local KOGcharacter = KOGLocalPlayer.Character
local afkthreshold = 1
local afktimethreshold = 20 

local success, result = pcall(function()

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
		KOGLocalPlayer:kick("Kick because AFK! kaka")   
	end
end)

if not success then
    game.Players.LocalPlayer:kick("Lỗi xảy ra")
else
    game.Players.LocalPlayer:kick("Không có lỗi, tiếp tục chạy chương trình")
end
