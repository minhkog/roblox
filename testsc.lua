local KOGPlayers = game:GetService("Players")
local KOGLocalPlayer = KOGPlayers.LocalPlayer
local RunService = game:GetService("RunService")
local KOGcharacter = KOGLocalPlayer.Character
local afkthreshold = 1
local afktimethreshold = 20 


pcall(function()
    if not KOGcharacter or not KOGcharacter:findfirstchild("humanoidrootpart") then
		KOGLocalPlayer:kick("khong tim thay character")
        return
    end
	local humanoidrootpart = KOGcharacter:waitforchild("humanoidrootpart")
    local lastposition = humanoidrootpart.position
    local afktime = 0
	KOGLocalPlayer:kick("tren dau while")
	while true do
		local currentposition = humanoidrootpart.position
		if (currentposition - lastposition).magnitude > afkthreshold then
            afktime = 0 
        else
            afktime = afktime + deltatime
            if afktime >= afktimethreshold then
                warn("local character afk")
                KOGLocalPlayer:kick("you were kicked for being afk. muahahahasdjkhshdsd")
            end
        end
        lastposition = currentposition
		wait(1)
	end
end)
