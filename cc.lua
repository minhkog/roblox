repeat wait()
until game:FindFirstChild("CoreGui")
        and game.Players.LocalPlayer

repeat wait(.25)
until game:IsLoaded()
        and game.Players.LocalPlayer.Character



local plr = game:GetService('Players').LocalPlayer

repeat wait()
until plr:FindFirstChild("Backpack")
        and plr:FindFirstChild("DataLoaded")

repeat wait(1) until game:GetService('Players').LocalPlayer.Character
repeat wait(1) until game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
repeat wait(1) until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('Main')

pcall(function()
    if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('Main'):FindFirstChild('ChooseTeam').Visible then
        for i, v in next, getconnections(game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('Main').ChooseTeam.Container['Pirates'].Frame.ViewportFrame.TextButton.Activated) do
            v:Function()
        end
    end
end)
local UserSettings = UserSettings():GetService 'UserGameSettings'
local RunService = game:GetService("RunService")
settings().Rendering.QualityLevel = 1
settings().Rendering.MeshPartDetailLevel = Enum.MeshPartDetailLevel.Level04
UserSettings.MasterVolume = 0
local hostaddr = 'https://bestauto24h.com/'
-- getgenv().PVSetting.JoinLowServer set default is true if not set
-- check if PVSetting or Setting is not exist
if not getgenv().PVSetting then
    getgenv().PVSetting = {}
end

if not getgenv().Setting then
    getgenv().Setting = {}
end

local gamename = 'roblox'
local key = getgenv().PVSetting.key or getgenv().Setting.key
local note = getgenv().PVSetting.note or getgenv().Setting.note
local delay = getgenv().PVSetting.DelayUpdate or getgenv().Setting.DelayUpdate

local filedes = '/rbapi.php'
pcall(function()
    pcall(function()
            -- * Table
            local pvData = {}
            pvData['key'] = key
            pvData['robloxUser'] = game:GetService('Players').LocalPlayer.Name
            pvData['note'] = note
            pvData['content'] = {}
            pvData['content']['Fighting Style'] = {}
            pvData['content']['Data'] = {}
            pvData['content']['Inventory'] = {}
            pvData['content']['Inventory']['Sword'] = {}
            pvData['content']['Inventory']['Wear'] = {}
            pvData['content']['Inventory']['Gun'] = {}
            pvData['content']['Inventory']['Blox Fruit'] = {}
            pvData['content']['Inventory']['Material'] = {}
            pvData['content']['Awakened Abilities'] = {}
            dataFind = { 'Level', 'Beli', 'Fragments', 'DevilFruit' }
            meleeList = {
                { 'Superhuman', 'BuySuperhuman' },
                { 'Death Step', 'BuyDeathStep' },
                { 'Sharkman Karate', 'BuySharkmanKarate' },
                { 'Electric Claw', 'BuyElectricClaw' },
                { 'Dragon Talon', 'BuyDragonTalon' },
                { 'Godhuman', 'BuyGodhuman' }
            }

            -- ? Variable

            local CommF = game.ReplicatedStorage.Remotes.CommF_

            local race = " V1"

            if game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack({[1] = "Alchemist",[2] = "1"})) == -2 then
                race = " V2"

            end
            if game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack({[1] = "Wenlocktoad",[2] = "1"})) == -2 then
                race = " V3"

            end
            if plr.Backpack:FindFirstChild("Awakening") or plr.Character:FindFirstChild("Awakening") then
                race = " V4"
            end




            -- ! function

            getData = function(data)
                return CommF:InvokeServer(data)
            end
            
            -- * Data
            local islevel = false
            pcall(function()
                for i, v in next, plr:FindFirstChild('Data'):GetChildren() do
                    if table.find(dataFind, v.Name) then
                        if string.find(v.Value, '-') then
                            pvData['content']['Data'][v.Name] = v.Value:gsub("-(.*)", "")
                        else
                            pvData['content']['Data'][v.Name] = v.Value
                        end
                    end
                end
                pvData['content']['Data']['Race'] = game.Players.LocalPlayer.Data.Race.Value..race
                if pvData['content']['Data']['Level'] > 20 then
                    islevel = true
                else
                    islevel = false
                end
            end)
            
            if islevel then
                -- * Melee
                pcall(function()
                    for i, v in next, meleeList do
                        if CommF:InvokeServer(v[2], true) == 1 then
                            table.insert(pvData['content']['Fighting Style'], v[1])
                        end
                    end
                end)
                pcall(function()
                    if #pvData['content']['Fighting Style'] < 1 then
                        pvData['content']['Fighting Style'] = { 'Fighting Style Data Not Found' }
                    end
                end)
    
                -- * Fruit
                --[[
                for i,v in pairs(getdata('getInventoryFruits')) do
                    table.insert(dot['Fruit'],tostring(v.Name:gsub("-(.*)","")))
                end
                ]]
    
    
                -- * Inventory
                pcall(function()
                    for i, v in pairs(getData('getInventory')) do
                        if v.Type == 'Blox Fruit' then
                            table.insert(pvData['content']['Inventory'][v.Type], tostring(v.Name:gsub("-(.*)", "")))
                        elseif v.Type == 'Material' then
                            local materialEntry = tostring(v.Name:gsub("'", ""))
                            materialEntry = materialEntry .. "-" .. tostring(v.Count)
                            table.insert(pvData['content']['Inventory'][v.Type], materialEntry)
                        else
                            table.insert(pvData['content']['Inventory'][v.Type], tostring(v.Name:gsub("'", "")))
                        end
                    end
                end)
    
                -- * Current Server
    
                pcall(function()
                    pvData['content']['Current Server'] = {
                        ['Place Name'] = game.PlaceId == 2753915549 and 'First Sea' or game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
                    }
                end)
    
                -- * Awaken
    
                local isAwaken = false
    
                pcall(function()
                    for i, v in pairs(getData('getAwakenedAbilities')) do
                        if v.Awakened then
                            table.insert(pvData['content']['Awakened Abilities'], i)
                        end
                        isAwaken = true
                    end
                end)
    
                pcall(function()
                    if not isAwaken then
                        table.insert(pvData['content']['Awakened Abilities'], 'Awakened Abilities Data Not Found')
                    end
                end)
                
                -- ! post
                local url = hostaddr .. gamename .. filedes
                local Request = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
                local reqData = game:GetService("HttpService"):JSONEncode(pvData)
                
                local responses = Request({
                   Url = 'https://accpremium.online/wp-json/roblox/insert',
                   Method = "POST",
                   Headers = {
                       ["Content-Type"] = "application/json"
                   },
                   Body = reqData
                }
                )
                writefile("info.json", reqData)
                print(responses.Body)
            end
        end)
end)
