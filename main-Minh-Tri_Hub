-- MINH TRÍ HUB LOADER (NO KEY)
repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer 

getgenv().ScriptTitle = "Minh Trí Hub"
getgenv().ScriptSubTitle = "By Minh Trí Gaming"
getgenv().ScriptAuthorName = "Minh Trí"

local UniverseID = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://apis.roblox.com/universes/v1/places/"..game.PlaceId.."/universe")).universeId

-- Hệ thống tự động nhận diện game (Dẫn về đúng kho của mày)
if game.PlaceId == 7449423635 or game.PlaceId == 2753915549 or game.PlaceId == 4442272183 or UniverseID == 994732206 then
    -- Blox Fruits
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MinhTri2k13/MinhTri-Hub/main/BF-MinhTri.lua"))()
elseif game.PlaceId == 16732694052 then 
    -- Fisch
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MinhTri2k13/MinhTri-Hub/main/Fisch-MinhTri.lua"))()
else
    -- Các game khác (Bản chung)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MinhTri2k13/MinhTri-Hub/main/Universal-MinhTri.lua"))()
end
