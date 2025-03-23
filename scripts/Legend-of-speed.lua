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
    ["Magma City"] = false
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
createOrbToggle("Magma City")

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
            -- Schickt die Rebirth-Anfrage an den Server
            game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("rebirthRemote"):FireServer(unpack(args))
        end
    end
end)

-- TAB: Teleport zu verschiedenen Welten
local TeleportTab = Window:CreateTab("🌍 Teleport", 4483362458)

-- Funktion zum Erstellen der Teleport-Tasten
local function createTeleportButton(worldName, position)
    TeleportTab:CreateButton({
        Name = "Teleport to " .. worldName,
        Callback = function()
            if position then
                game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(position))
            else
                warn("Teleport location for " .. worldName .. " not found.")
            end
        end,
    })
end

-- Positionsangaben für die Teleports
local teleportLocations = {
    City = workspace.areaCircles:GetChildren()[2] and workspace.areaCircles:GetChildren()[2].Position, -- City Position
    ["Snow City"] = workspace.areaCircles:GetChildren()[16] and workspace.areaCircles:GetChildren()[16].Position, -- Snow City Position
    ["Magma City"] = workspace.areaCircles:GetChildren()[25] and workspace.areaCircles:GetChildren()[25].Position -- Magma City Position
}

-- Erstellen der Teleport-Buttons für jede Welt
createTeleportButton("City", teleportLocations.City)
createTeleportButton("Snow City", teleportLocations["Snow City"])
createTeleportButton("Magma City", teleportLocations["Magma City"])

-- Manuelles Sammeln von Orbs für Magma City
local function collectMagmaCityOrbs()
    local orbs = {
        {"Red Orb", "Magma City"},
        {"Yellow Orb", "Magma City"},
        {"Blue Orb", "Magma City"},
        {"Gem", "Magma City"}
    }
    
    for _, orb in pairs(orbs) do
        local args = {
            [1] = "collectOrb",
            [2] = orb[1],
            [3] = orb[2]
        }
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("orbEvent"):FireServer(unpack(args))
    end
end

-- Magma City Orb Farming
FarmTab:CreateButton({
    Name = "Collect Magma City Orbs",
    Callback = function()
        collectMagmaCityOrbs()
    end,
})
