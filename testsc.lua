local KOGPlayers = game:GetService("Players")
local KOGLocalPlayer = KOGPlayers.LocalPlayer
local RunService = game:GetService("RunService")
KOGLocalPlayer:kick("khong tim thay character")
pcall(function()
	local character = KOGLocalPlayer.Character
	
	
	local afkthreshold = 1
	local afktimethreshold = 20 
	KOGLocalPlayer:kick("chay toi day roi nha")
	return
    if not character or not character:findfirstchild("humanoidrootpart") then
		KOGLocalPlayer:kick("khong tim thay character")
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
                KOGLocalPlayer:kick("you were kicked for being afk. muahahahasdjkhshdsd")
            end
        end
        lastposition = currentposition
		wait(1)
	end
end)
