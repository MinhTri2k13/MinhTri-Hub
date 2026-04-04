-- [[ MINH TRÍ HUB - BẢN QUYỀN RIÊNG CỦA MINH TRÍ ]]
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Minh Trí Hub | Blox Fruits",
   LoadingTitle = "Đang tải Minh Trí Hub...",
   LoadingSubtitle = "by Minh Trí Gaming",
   Theme = "Default" -- Có thể đổi thành 'Amber', 'Green', v.v.
})

local MainTab = Window:CreateTab("Tự Động Farm", 4483362458) -- Icon farm

-- Nút bấm Test thử
MainTab:CreateButton({
   Name = "Bật Auto Farm Level (Sắp có)",
   Callback = function()
       print("Tính năng đang được Minh Trí phát triển!")
       Rayfield:Notify({
          Title = "Thông báo",
          Content = "Mày đợi tao code xong tính năng này đã nhé!",
          Duration = 5,
          Image = 4483362458,
       })
   end,
})

local MiscTab = Window:CreateTab("Tiện ích", 4483362458)

MiscTab:CreateButton({
   Name = "Bay (Fly)",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Edgeiy/infiniteyield/master/source"))()
   end,
})

Rayfield:Notify({
   Title = "Thành Công!",
   Content = "Chào mừng mày đến với Minh Trí Hub!",
   Duration = 5,
})
