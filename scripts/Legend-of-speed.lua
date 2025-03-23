local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Legends of Speed Script",
   LoadingTitle = "Loading...",
   LoadingSubtitle = "Made by RB Scripts",
   Theme = "Default",
   DisableRayfieldPrompts = true
})

-- TAB: Orb Farming
local FarmTab = Window:CreateTab("💫 Auto Orb Farm", 4483362458)

local orbFarm = {
    ["City"] = false,
    ["Snow City"] = false,
    ["Lava City"] = false
}

-- Farming Loop für Orbs
game:GetService("RunService").RenderStepped:Connect(function()
    for city, enabled in pairs(orbFarm) do
        if enabled then
            local orbs = {
                "Blue Orb",
                "Red Orb",
                "Yellow Orb",
                "Gem"
            }

            for _, orb in pairs(orbs) do
                local args = {
                    [1] = "collectOrb",
                    [2] = orb,
                    [3] = city
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("orbEvent"):FireServer(unpack(args))
            end
        end
    end
end)

-- Funktion zum Erstellen der Toggles
local function createOrbToggle(city)
    FarmTab:CreateToggle({
        Name = city .. " - Auto Orb Farm",
        CurrentValue = false,
        Callback = function(Value)
            orbFarm[city] = Value
        end,
    })
end

createOrbToggle("City")
createOrbToggle("Snow City")
createOrbToggle("Lava City")

-- TAB: Misc
local MiscTab = Window:CreateTab("⚙️ Misc", 4483362458)

-- Auto Rebirth
local rebirthActive = false

MiscTab:CreateToggle({
    Name = "Auto Rebirth",
    CurrentValue = false,
    Callback = function(Value)
        rebirthActive = Value
    end,
})

-- Loop für Auto Rebirth
task.spawn(function()
    while true do
        task.wait(0.2)
        if rebirthActive then
            local args = {
                [1] = "rebirthRequest"
            }

            game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("rebirthRemote"):FireServer(unpack(args))
        end
    end
end)
