-- Tạo một ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ColorTransition"
screenGui.Parent = game.Players.LocalPlayer.PlayerGui

-- Tính toán kích thước và vị trí của Frame
local left = 115
local top = 71
local width = 417
local height = 35

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
