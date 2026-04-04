-- [[ MINH TRÍ HUB - BẢN SIÊU NHẸ CHO PC ]]
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Minh Trí Hub - PC Edition", "Midnight")

-- Tab chính
local Tab1 = Window:NewTab("Main Farm")
local Section1 = Tab1:NewSection("Auto Farm Level")

Section1:NewButton("Bật Farm (Sắp có)", "Chức năng đang phát triển", function()
    print("Minh Trí đang code...")
end)

-- Tab tiện ích (Dùng mấy cái lệnh đơn giản)
local Tab2 = Window:NewTab("Tiện ích")
local Section2 = Tab2:NewSection("Dành cho PC")

Section2:NewSlider("Tốc độ chạy (WalkSpeed)", "Chỉnh tốc độ nhân vật", 250, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section2:NewButton("Bay (Infinite Yield)", "Dùng để phá game", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Edgeiy/infiniteyield/master/source"))()
end)

Section2:NewButton("Nhập Key Banana", "Dán Key của mày vào bảng gốc", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BF-BananaCat.lua"))()
end)
