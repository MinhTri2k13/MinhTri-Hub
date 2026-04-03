-- MINH TRÍ HUB (NO KEY VERSION)
-- BẢN QUYỀN: MINH TRÍ GAMING

-- 1. Xóa bỏ hệ thống Check Key (Đã bypass)
getgenv().Key = "Free_MinhTri_Hub"
getgenv().CheckKey = function() return true end

-- 2. Giao diện Hub (UI Library)
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🍎 Minh Trí Hub | Blox Fruits",
   LoadingTitle = "Đang tải Minh Trí Hub...",
   LoadingSubtitle = "By Minh Trí Gaming",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "MinhTriHub", 
      FileName = "MinhTriConfig"
   },
   Discord = {
      Enabled = false,
      Invite = "", 
      RememberJoins = true 
   },
   KeySystem = false, -- TẮT HỆ THỐNG KEY Ở ĐÂY
})

-- 3. Các chức năng chính (Tab Main)
local Tab = Window:CreateTab("Tự Động Farm", 4483362458) -- Icon Farm

local Section = Tab:CreateSection("Farm Level")

local Button = Tab:CreateButton({
   Name = "Auto Farm Level (No Key)",
   Callback = function()
       -- Dán code Auto Farm xịn của mày vào đây
       print("Đang chạy Auto Farm của Minh Trí!")
       Rayfield:Notify({
          Title = "Thông báo",
          Content = "Đã kích hoạt Auto Farm Minh Trí Hub!",
          Duration = 5,
          Image = 4483362458,
       })
   end,
})

-- 4. Thêm các Tab khác tùy ý mày
local MiscTab = Window:CreateTab("Khác", 4483362458)
MiscTab:CreateButton({
   Name = "Nhập Code Reset Chỉ Số",
   Callback = function()
       print("Đã nhập code reset!")
   end,
})

Rayfield:Notify({
   Title = "Thành công!",
   Content = "Minh Trí Hub đã sẵn sàng phục vụ mày!",
   Duration = 5,
   Image = 4483362458,
})
