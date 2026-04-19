repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players.LocalPlayer.Character

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local VirtualInputManager = game:GetService("VirtualInputManager")

local running = true

-- 🎯 tìm target gần
function GetTarget()
    local closest = nil
    local dist = math.huge

    for _, v in pairs(Players:GetPlayers()) do
        if v ~= LocalPlayer
        and v.Character
        and v.Character:FindFirstChild("HumanoidRootPart")
        and v.Character:FindFirstChild("Humanoid")
        and v.Character.Humanoid.Health > 0
        and v.Team ~= LocalPlayer.Team then

            local myHRP = LocalPlayer.Character.HumanoidRootPart
            local enemyHRP = v.Character.HumanoidRootPart

            local d = (myHRP.Position - enemyHRP.Position).Magnitude

            if d < dist then
                dist = d
                closest = v
            end
        end
    end

    return closest
end

-- 🖱️ click
function Click()
    VirtualInputManager:SendMouseButtonEvent(0,0,0,true,game,0)
    VirtualInputManager:SendMouseButtonEvent(0,0,0,false,game,0)
end

-- 🧠 di chuyển “nhẹ nhàng”
function MoveToTarget(targetHRP)
    local myHRP = LocalPlayer.Character.HumanoidRootPart

    -- chỉ di chuyển khi xa
    local distance = (myHRP.Position - targetHRP.Position).Magnitude

    if distance > 10 then
        -- dịch chuyển nhỏ (giống dash)
        myHRP.CFrame = myHRP.CFrame:Lerp(targetHRP.CFrame, 0.1)
    end
end

-- 🔥 main
task.spawn(function()
    while running do
        task.wait(0.2)

        pcall(function()
            local target = GetTarget()

            if target and target.Character then
                local hrp = target.Character:FindFirstChild("HumanoidRootPart")

                if hrp then
                    MoveToTarget(hrp)
                    Click()
                end
            end
        end)
    end
end)
