local Library = {}
Library.__index = Library

function Library:CreateWindow(config)
    local Window = {}
    setmetatable(Window, Library)
    
    Window.Name = config.Name or "Custom GUI"
    Window.LoadingTitle = config.LoadingTitle or "Loading..."
    Window.KeySystem = config.KeySystem or false
    Window.CorrectKey = config.CorrectKey or nil

    -- UI-Elemente erstellen
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local LoadingText = Instance.new("TextLabel")
    
    ScreenGui.Name = "MainWindow"
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") -- Verwende PlayerGui statt CoreGui

    Frame.Size = UDim2.new(0, 400, 0, 300)
    Frame.Position = UDim2.new(0.5, -200, 0.5, -150) -- Positioniert das Fenster in der Mitte
    Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
    Frame.BorderSizePixel = 0
    Frame.Active = true
    Frame.Draggable = true

    UICorner.CornerRadius = UDim.new(0, 12)
    UICorner.Parent = Frame

    LoadingText.Size = UDim2.new(1, 0, 0, 50)
    LoadingText.BackgroundTransparency = 1
    LoadingText.Text = Window.LoadingTitle
    LoadingText.TextColor3 = Color3.fromRGB(255, 255, 255)
    LoadingText.TextScaled = true
    LoadingText.Font = Enum.Font.GothamBold
    LoadingText.Parent = Frame

    -- Handle Key System
    if Window.KeySystem then
        local function createKeyPrompt()
            local KeyFrame = Instance.new("Frame")
            local KeyTextbox = Instance.new("TextBox")
            local SubmitButton = Instance.new("TextButton")
            local UICornerKey = Instance.new("UICorner")

            KeyFrame.Size = UDim2.new(0, 350, 0, 200)
            KeyFrame.Position = UDim2.new(0.3, 0, 0.3, 0)
            KeyFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
            KeyFrame.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")  -- Wechselt zu PlayerGui

            UICornerKey.CornerRadius = UDim.new(0, 12)
            UICornerKey.Parent = KeyFrame

            KeyTextbox.Size = UDim2.new(0.8, 0, 0, 30)
            KeyTextbox.Position = UDim2.new(0.1, 0, 0.4, 0)
            KeyTextbox.PlaceholderText = "Enter your key"
            KeyTextbox.TextColor3 = Color3.fromRGB(255, 255, 255)
            KeyTextbox.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
            KeyTextbox.Font = Enum.Font.Gotham
            KeyTextbox.TextScaled = true
            KeyTextbox.Parent = KeyFrame

            SubmitButton.Size = UDim2.new(0.8, 0, 0, 40)
            SubmitButton.Position = UDim2.new(0.1, 0, 0.6, 0)
            SubmitButton.Text = "Submit"
            SubmitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            SubmitButton.BackgroundColor3 = Color3.fromRGB(60, 60, 90)
            SubmitButton.Font = Enum.Font.Gotham
            SubmitButton.TextScaled = true
            SubmitButton.Parent = KeyFrame

            SubmitButton.MouseButton1Click:Connect(function()
                if KeyTextbox.Text == Window.CorrectKey then
                    KeyFrame:Destroy()
                    Window:LoadWindow()
                else
                    SubmitButton.Text = "❌ Wrong Key"
                end
            end)
        end
        createKeyPrompt()
    else
        -- If no key system, just load the window
        Window:LoadWindow()
    end

    return Window
end

function Library:LoadWindow()
    --// Now we're setting up the window with the custom content (title, sections, etc.)
    local Frame = game.Players.LocalPlayer.PlayerGui.MainWindow  -- Zugriff auf PlayerGui
    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, 0, 0, 40)
    Title.BackgroundTransparency = 1
    Title.Text = self.Name
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextScaled = true
    Title.Font = Enum.Font.GothamBold
    Title.Parent = Frame

    -- Animation effect for Loading text (pulsing)
    local pulseTween = game:GetService("TweenService"):Create(Title, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, true), {TextTransparency = 0.5})
    pulseTween:Play()
end

--// Create Section functions
function Library:CreateSection(name)
    local Section = {}
    Section.Name = name

    local sectionFrame = Instance.new("Frame")
    sectionFrame.Size = UDim2.new(1, 0, 0, 50)
    sectionFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
    sectionFrame.BorderSizePixel = 0
    sectionFrame.Parent = game.Players.LocalPlayer.PlayerGui.MainWindow

    local sectionTitle = Instance.new("TextLabel")
    sectionTitle.Text = name
    sectionTitle.Size = UDim2.new(1, 0, 0, 20)
    sectionTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    sectionTitle.Font = Enum.Font.GothamBold
    sectionTitle.TextScaled = true
    sectionTitle.Parent = sectionFrame

    -- Return Section for adding buttons, toggles, etc.
    return Section
end

function Library:CreateButton(name, callback)
    local button = Instance.new("TextButton")
    button.Text = name
    button.Size = UDim2.new(0.8, 0, 0, 30)
    button.Position = UDim2.new(0.1, 0, 0.25, 0)
    button.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.Gotham
    button.TextScaled = true
    button.MouseButton1Click:Connect(callback)
    button.Parent = game.Players.LocalPlayer.PlayerGui.MainWindow

    return button
end

function Library:CreateToggle(name, defaultState, callback)
    local toggle = Instance.new("TextButton")
    toggle.Text = name .. ": " .. (defaultState and "ON" or "OFF")
    toggle.Size = UDim2.new(0.8, 0, 0, 30)
    toggle.Position = UDim2.new(0.1, 0, 0.35, 0)
    toggle.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
    toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
    toggle.Font = Enum.Font.Gotham
    toggle.TextScaled = true
    toggle.MouseButton1Click:Connect(function()
        defaultState = not defaultState
        toggle.Text = name .. ": " .. (defaultState and "ON" or "OFF")
        callback(defaultState)
    end)
    toggle.Parent = game.Players.LocalPlayer.PlayerGui.MainWindow

    return toggle
end

return Library
