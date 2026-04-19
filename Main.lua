-- ⏳ đợi game load
repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players.LocalPlayer.Character

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local VirtualInputManager = game:GetService("VirtualInputManager")

local running = true

-- 🎯 tìm target gần nhất
function GetTarget()
    local closest = nil
    local shortest = math.huge

    for _, v in pairs(Players:GetPlayers()) do
        if v ~= LocalPlayer
        and v.Character
        and v.Character:FindFirstChild("HumanoidRootPart")
        and v.Character:FindFirstChild("Humanoid")
        and v.Character.Humanoid.Health > 0
        and v.Team ~= LocalPlayer.Team then

            local myHRP = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            local enemyHRP = v.Character:FindFirstChild("HumanoidRootPart")

            if myHRP and enemyHRP then
                local dist = (myHRP.Position - enemyHRP.Position).Magnitude

                if dist < shortest then
                    shortest = dist
                    closest = v
                end
            end
        end
    end

    return closest
end

-- 🍎 chỉ equip fruit (không lấy sword/gun)
function EquipFruit()
    local char = LocalPlayer.Character
    local backpack = LocalPlayer.Backpack

    for _, tool in pairs(backpack:GetChildren()) do
        if tool:IsA("Tool") then
            local name = tool.Name:lower()

            if not string.find(name, "sword")
            and not string.find(name, "gun") then
                tool.Parent = char
                return
            end
        end
    end
end

-- 🖱️ spam click
function Click()
    VirtualInputManager:SendMouseButtonEvent(0,0,0,true,game,0)
    VirtualInputManager:SendMouseButtonEvent(0,0,0,false,game,0)
end

-- 🚶 di chuyển nhẹ (anti ban)
function MoveToTarget(targetHRP)
    local myHRP = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not myHRP then return end

    local distance = (myHRP.Position - targetHRP.Position).Magnitude

    if distance > 8 then
        -- di chuyển mượt (không teleport mạnh)
        myHRP.CFrame = myHRP.CFrame:Lerp(targetHRP.CFrame * CFrame.new(0,0,4), 0.2)
    end
end

-- 🔥 main loop
task.spawn(function()
    while running do
        task.wait(0.2)

        pcall(function()
            local target = GetTarget()

            if target and target.Character then
                local hrp = target.Character:FindFirstChild("HumanoidRootPart")

                if hrp then
                    EquipFruit()      -- chỉ dùng fruit
                    MoveToTarget(hrp) -- di chuyển an toàn
                    Click()           -- spam attack
                end
            end
        end)
    end
end)
