-- ⏳ Đợi player load
repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players.LocalPlayer.Character

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local VirtualInputManager = game:GetService("VirtualInputManager")

local running = true -- 🔥 auto bật luôn

-- 🎯 lấy target gần nhất (không cùng team)
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

-- 🖱️ spam click (fruit attack)
function Click()
    VirtualInputManager:SendMouseButtonEvent(0,0,0,true,game,0)
    VirtualInputManager:SendMouseButtonEvent(0,0,0,false,game,0)
end

-- ⚡ teleport mượt (giảm bị kick)
function TPBehind(targetHRP)
    local myHRP = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if myHRP then
        myHRP.CFrame = myHRP.CFrame:Lerp(targetHRP.CFrame * CFrame.new(0,0,3), 0.5)
    end
end

-- 🧠 auto equip fruit (nếu có)
function EquipTool()
    local char = LocalPlayer.Character
    local backpack = LocalPlayer.Backpack

    for _, tool in pairs(backpack:GetChildren()) do
        if tool:IsA("Tool") then
            tool.Parent = char
            break
        end
    end
end

-- 🔥 MAIN LOOP
task.spawn(function()
    while running do
        task.wait(0.15)

        pcall(function()
            local target = GetTarget()

            if target and target.Character then
                local hrp = target.Character:FindFirstChild("HumanoidRootPart")

                if hrp then
                    EquipTool()         -- cầm fruit
                    TPBehind(hrp)       -- dí ra sau lưng
                    Click()             -- spam attack
                end
            end
        end)
    end
end)
