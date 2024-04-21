_G.MainSettings = {
        ["EnabledHOP"] = true, -- เปิด HOP ( มันไม่มีอยู่ละใส่มาเท่ๆ )
        ['FPSBOOST'] = true, -- ภาพกาก
        ["FPSLOCKAMOUNT"] = 30, -- จำนวน FPS
        ['WhiteScreen'] = true, -- จอขาว
        ['CloseUI'] = true, -- ปิด Ui
        ["NotifycationExPRemove"] = true, -- ลบ ExP ที่เด้งตอนฆ่ามอน
        ['AFKCheck'] = 100, -- ถ้ายืนนิ่งเกินวิที่ตั้งมันจะรีเกม
        ["LockFragments"] = 20000, -- ล็อคเงินม่วง
        ["LockFruitsRaid"] = { -- ล็อคผลที่ไม่เอาไปลงดัน
            ["Kitsune-Kitsune"] = true,
            ["Dough-Dough"] = true,
            ["Leopard-Leopard"] = true,
            ["Mammoth-Mammoth"] = true,
            ["T-T"] = true,
            ["Dragon-Dragon"] = true
        }
    }
_G.Fruits_Settings = { -- ตั้งค่าผล
    ['Main_Fruits'] = {'Dough-Dough'}, -- ผลหลัก ถ้ายังไม่ใช่ค่าที่ตั้งมันจะกินจนกว่าจะใช่หรือซื้อ
    ['Select_Fruits'] = {"Dragon-Dragon", "Kitsune-Kitsune", "T-T", "Flame-Flame", "Ice-Ice", "Quake-Quake", "Light-Light", "Dark-Dark", "Spider-Spider", "Rumble-Rumble", "Magma-Magma", "Buddha-Buddha"} -- กินหรือซื้อตอนไม่มีผล
}
_G.Races_Settings = { -- ตั้งค่าเผ่า
    ['Race'] = {
        ['EnabledEvo'] = false,
        ["v2"] = true,
        ["v3"] = true,
        ["Races_Lock"] = {
            ["Races"] = { -- Select Races U want
                ["Mink"] = true,
                ["Human"] = true,
                ["Fishman"] = true
            },
            ["RerollsWhenFragments"] = 20000 -- Random Races When Your Fragments is >= Settings
        }
    }
}
_G.Settings_Melee = { -- หมัดที่จะทำ
    ['Superhuman'] = true,
    ['DeathStep'] = true,
    ['SharkmanKarate'] = true,
    ['ElectricClaw'] = true,
    ['DragonTalon'] = true,
    ['Godhuman'] = true
}
_G.SwordSettings = { -- ดาบที่จะทำ
    ['Saber'] = true,
    ["Pole"] = true,
    ['MidnightBlade'] = true,
    ['Shisui'] = false,
    ['Saddi'] = false,
    ['Wando'] = false,
    ['Yama'] = true,
    ['Rengoku'] = false,
    ['Canvander'] = false,
    ['BuddySword'] = false,
    ['TwinHooks'] = false,
    ['HallowScryte'] = true,
    ['TrueTripleKatana'] = false,
    ['CursedDualKatana'] = true
}
_G.GunSettings = { -- ปืนที่จะทำ
    ['Kabucha'] = false,
    ['SerpentBow'] = false,
    ['SoulGuitar'] = true
}

spawn(function()
    -- Tạo một ScreenGui
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "ColorTransition"
    screenGui.Parent = game.Players.LocalPlayer.PlayerGui

    -- Tính toán kích thước và vị trí của Frame
    local left = 175
    local top = 59
    local width = 49
    local height = 49

    local position = UDim2.new(0, left, 0, top)
    local size = UDim2.new(0, width, 0, height)

    -- Tạo một Frame trong ScreenGui
    local frame = Instance.new("Frame")
    frame.Position = position
    frame.Size = size
    frame.AnchorPoint = Vector2.new(0, 0)
    frame.BackgroundColor3 = Color3.new(1, 1, 1)
    frame.Parent = screenGui

    -- Tạo một Tween với TweenService
    local tweenService = game:GetService("TweenService")
    local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)

    -- Mảng các màu sắc chuyển động
    local colors = {
        Color3.new(1, 0, 0), -- Đỏ
        Color3.new(0, 1, 0), -- Xanh lá cây
        Color3.new(0, 0, 1)  -- Xanh dương
    }

    local colorIndex = 1 -- Chỉ số màu sắc hiện tại

    -- Hàm để chạy tween animation
    local function runTween()
        local currentColor = colors[colorIndex]
        local nextColor = colors[colorIndex + 1] or colors[1] -- Trở lại màu đầu tiên sau khi đã chạy qua tất cả các màu

        local tween = tweenService:Create(frame, tweenInfo, {BackgroundColor3 = nextColor})
        tween:Play()
        tween.Completed:Connect(function()
            colorIndex = colorIndex + 1
            if colorIndex > #colors then
                colorIndex = 1
            end
            runTween() -- Gọi lại hàm để tiếp tục chạy tween animation
        end)
    end

    -- Chạy tween animation ban đầu
    runTween()
end)


getgenv().Key = "MARU-0WSG-5GN7N-8BLP-W228W-OPUT"
getgenv().id = "523962819365044236"
getgenv().Script_Mode = "Kaitun_Script"

loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruBitkub/main/Mobile.lua"))()

--getgenv().PVSetting = {
--    key = 'XwkRa-FBWOK_YRwiS9b-', -- Secret Code
--    DelayUpdate = 20, -- Delay Update (Seconds)
--    note = 'Buoc',
--}
--loadstring(game:HttpGet("https://raw.githubusercontent.com/minhkog/roblox/main/trackstat_new_version.lua"))()
