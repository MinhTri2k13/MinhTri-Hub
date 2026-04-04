-- MINH TRÍ HUB LOADER (CẬP NHẬT LINK CHUẨN)
repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer 

local UniverseID = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://apis.roblox.com/universes/v1/places/"..game.PlaceId.."/universe")).universeId

-- Hệ thống tự động nhận diện game
if game.PlaceId == 7449423635 or game.PlaceId == 2753915549 or game.PlaceId == 4442272183 or UniverseID == 994732206 then
    -- Blox Fruits (Dùng link mày vừa gửi)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MinhTri2k13/MinhTri-Hub/refs/heads/main/BF-MinhTri.lua"))()
else
    -- Các game khác (Nếu mày có file thì đổi link tương tự)
    print("Game nay chua ho tro!")
end
