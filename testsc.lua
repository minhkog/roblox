pcall(function()

	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer
	local RunService = game:GetService("RunService")
	local character = LocalPlayer.Character
	LocalPlayer:Kick("script dang chay nha")
	-- local afkthreshold = 1
	-- local afktimethreshold = 20 

    -- if not character or not character:findfirstchild("humanoidrootpart") then
		-- localplayer:kick("khong tim thay character")
        -- return
    -- end
	-- local humanoidrootpart = character:waitforchild("humanoidrootpart")
    -- local lastposition = humanoidrootpart.position
    -- local afktime = 0
	
	-- while true do
		-- local currentposition = humanoidrootpart.position
		-- if (currentposition - lastposition).magnitude > afkthreshold then
            -- afktime = 0 
        -- else
            -- afktime = afktime + deltatime
            -- if afktime >= afktimethreshold then
                -- warn("local character afk")
                -- localplayer:kick("you were kicked for being afk. muahahahasdjkhshdsd")
            -- end
        -- end
        -- lastposition = currentposition
		-- wait(1)
	-- end
end)
