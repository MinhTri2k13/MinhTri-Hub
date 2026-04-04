-- MINH TRÍ HUB LOADER (NO KEY)
-- BY MINH TRÍ GAMING
repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer 

local UniverseID = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://apis.roblox.com/universes/v1/places/"..game.PlaceId.."/universe")).universeId

-- Hệ thống tự động nhận diện game và dẫn về kho MinhTri-Hub
if game.PlaceId == 1537690962 or game.PlaceId == 4079902982 then
    -- Bee Swarm Simulator
    if getgenv().betabss then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MinhTri2k13/MinhTri-Hub/main/BSS-Rewrite-MinhTri.lua"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MinhTri2k13/MinhTri-Hub/main/BSS-MinhTri.lua"))()
    end

elseif game.PlaceId == 10260193230 then 
    -- Sea map (Blox Fruits)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MinhTri2k13/MinhTri-Hub/main/Seahuhu-MinhTri.lua"))()

elseif game.PlaceId == 7449423635 or game.PlaceId == 2753915549 or game.PlaceId == 4442272183 or game.PlaceId == 122478697296975 or UniverseID == 994732206 then
    -- Blox Fruits Main
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MinhTri2k13/MinhTri-Hub/main/BF-MinhTri.lua"))()

elseif game.PlaceId == 4520749081 or  game.PlaceId == 6381829480 or game.PlaceId == 15759515082 or game.PlaceId == 5931540094 then 
    -- King Legacy
    local start = tick()
    repeat task.wait() until game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("DataLoaded") and game.Players.LocalPlayer:FindFirstChild("DataLoaded").Value
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MinhTri2k13/MinhTri-Hub/main/KL-MinhTri.lua"))()

elseif game.PlaceId == 18901165922 or game.PlaceId == 19006211286 then 
    -- Pets Go
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MinhTri2k13/MinhTri-Hub/main/PetsGo-MinhTri.lua"))()

elseif game.PlaceId == 16732694052 then 
    -- Fisch
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MinhTri2k13/MinhTri-Hub/main/Fisch-MinhTri.lua"))()

elseif UniverseID == 5844593548  then 
    -- Anime Reborn
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MinhTri2k13/MinhTri-Hub/main/AnimeReborn-MinhTri.lua"))()

elseif UniverseID == 6325068386 then
    -- Blue Lock
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MinhTri2k13/MinhTri-Hub/main/Bluelock-MinhTri.lua"))()

elseif UniverseID  == 7074860883 then 
    -- Arise
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MinhTri2k13/MinhTri-Hub/main/Arise-MinhTri.lua"))()

elseif UniverseID  == 7018190066 then 
    -- Deadrails
     loadstring(game:HttpGet("https://raw.githubusercontent.com/MinhTri2k13/MinhTri-Hub/main/Deadrails-MinhTri.lua"))()

elseif UniverseID  == 7436755782 then 
    -- Grow A Garden
     loadstring(game:HttpGet("https://raw.githubusercontent.com/MinhTri2k13/MinhTri-Hub/main/GrowAGarden-MinhTri.lua"))()

elseif UniverseID == 7709344486 then 
    -- Brainrot
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MinhTri2k13/MinhTri-Hub/main/Brainrot-MinhTri.lua"))()

elseif UniverseID == 7671049560 then
    -- The Forge
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MinhTri2k13/MinhTri-Hub/main/TheForge-MinhTri.lua"))()
else
    -- Mặc định các game khác
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MinhTri2k13/MinhTri-Hub/main/Universal-MinhTri.lua"))()
end
