-- [[ MINH TRÍ HUB - BẢN DÀNH RIÊNG CHO VELOCITY ]]
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Position = UDim2.new(0.4, 0, 0.4, 0)
Frame.Size = UDim2.new(0, 200, 0, 100)
Frame.Active = true
Frame.Draggable = true -- Cho mày kéo cái bảng đi khắp màn hình PC

TextButton.Parent = Frame
TextButton.Text = "BAT INFINITE YIELD"
TextButton.Size = UDim2.new(1, 0, 0.5, 0)
TextButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Edgeiy/infiniteyield/master/source"))()
end)

local TextButton2 = Instance.new("TextButton")
TextButton2.Parent = Frame
TextButton2.Text = "MO BANANA CAT"
TextButton2.Position = UDim2.new(0, 0, 0.5, 0)
TextButton2.Size = UDim2.new(1, 0, 0.5, 0)
TextButton2.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BF-BananaCat.lua"))()
end)
