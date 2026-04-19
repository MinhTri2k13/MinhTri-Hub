local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local VirtualInputManager = game:GetService("VirtualInputManager")

local running = false

-- 🎯 tìm target gần nhất
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

            local d = (LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude

            if d < dist then
                dist = d
                closest = v
            end
        end
    end

    return closest
end

-- 🔁 spam click (fruit attack)
function AutoClick()
    VirtualInputManager:SendMouseButtonEvent(0,0,0,true,game,0)
    VirtualInputManager:SendMouseButtonEvent(0,0,0,false,game,0)
end

-- 🚀 loop chính
function AutoAttack()
    while running do
        task.wait(0.1)

        local target = GetTarget()

        if target and target.Character then
            local hrp = target.Character:FindFirstChild("HumanoidRootPart")

            if hrp and LocalPlayer.Character then
                -- đứng sau target
                LocalPlayer.Character.HumanoidRootPart.CFrame = hrp.CFrame * CFrame.new(0,0,3)

                -- spam attack
                AutoClick()
            end
        end
    end
end

-- 🎛️ bật/tắt
function ToggleAutoAttack(state)
    running = state

    if state then
        AutoAttack()
    end
end
