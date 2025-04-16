local Library = {}
Library.__index = Library

-- Funktion zum Erstellen eines Fensters
function Library:CreateWindow(config)
    local Window = {}
    Window.Name = config.Name or "Default UI"
    Window.LoadingTitle = config.LoadingTitle or "Loading..."

    -- GUI-Elemente erstellen
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")

    ScreenGui.Parent = game.CoreGui
    Frame.Parent = ScreenGui
    TextLabel.Parent = Frame

    TextLabel.Text = Window.LoadingTitle
    TextLabel.Size = UDim2.new(0, 400, 0, 50)
    TextLabel.Position = UDim2.new(0.25, 0, 0.4, 0)
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = true

    -- Rückgabe des Fensters
    return Window
end

-- Beispiel für das Erstellen einer Sektion (Button, Toggle)
function Library:CreateSection(sectionName)
    local Section = {}
    -- Hier kannst du weitere UI-Elemente wie Buttons und Toggles erstellen
    -- Dies ist nur eine vereinfachte Darstellung
    return Section
end

-- Rückgabe der Bibliothek
return Library
