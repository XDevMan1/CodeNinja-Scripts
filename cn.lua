

-- Key GUI
local keyGui = Instance.new("ScreenGui")
keyGui.Name = "KeyGui"
keyGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local keyFrame = Instance.new("Frame")
keyFrame.Size = UDim2.new(0, 200, 0, 100)
keyFrame.Position = UDim2.new(0.5, -100, 0.5, -50)
keyFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
keyFrame.BorderSizePixel = 0
keyFrame.Parent = keyGui

local keyLabel = Instance.new("TextLabel")
keyLabel.Text = "Enter Key:"
keyLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
keyLabel.Size = UDim2.new(1, 0, 0, 20)
keyLabel.Position = UDim2.new(0, 0, 0, 0)
keyLabel.BackgroundTransparency = 1
keyLabel.Parent = keyFrame

local keyTextBox = Instance.new("TextBox")
keyTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
keyTextBox.Size = UDim2.new(0, 150, 0, 20)
keyTextBox.Position = UDim2.new(0.5, -75, 0, 30)
keyTextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
keyTextBox.BorderSizePixel = 0
keyTextBox.Parent = keyFrame

local submitButton = Instance.new("TextButton")
submitButton.Text = "Submit"
submitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
submitButton.Size = UDim2.new(0, 80, 0, 20)
submitButton.Position = UDim2.new(0.5, -40, 0, 60)
submitButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
submitButton.BorderSizePixel = 0
submitButton.Parent = keyFrame
submitButton.MouseButton1Click:Connect(function()
    if keyTextBox.Text == "CodeNinjaTheBest" then
        keyGui:Destroy()

        -- Main GUI
        local gui = Instance.new("ScreenGui")
        gui.Name = "CodeNinja Hub"
        gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
        gui.ResetOnSpawn = false

        local mainFrame = Instance.new("Frame")
        mainFrame.Size = UDim2.new(0, 250, 0, 100)
        mainFrame.Position = UDim2.new(0.5, -125, 0, 50)
        mainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        mainFrame.BorderSizePixel = 0
        mainFrame.Active = true
        mainFrame.Draggable = true
        mainFrame.Parent = gui

        local title = Instance.new("TextLabel")
        title.Text = "CodeNinja"
        title.TextColor3 = Color3.fromRGB(255, 255, 255)
        title.Size = UDim2.new(1, 0, 0, 20)
        title.Position = UDim2.new(0, 0, 0, 0)
        title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        title.BorderSizePixel = 0
        title.Parent = mainFrame

        local hideButton = Instance.new("TextButton")
        hideButton.Text = "-"
        hideButton.TextColor3 = Color3.fromRGB(200, 200, 200)
        hideButton.Size = UDim2.new(0, 20, 0, 20)
        hideButton.Position = UDim2.new(1, -60, 0, 0)
        hideButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        hideButton.BorderSizePixel = 0
        hideButton.Parent = mainFrame
        hideButton.MouseButton1Click:Connect(function()
            mainFrame.Visible = false
        end)

        local unhideButton = Instance.new("TextButton")
        unhideButton.Text = "+"
        unhideButton.TextColor3 = Color3.fromRGB(200, 200, 200)
        unhideButton.Size = UDim2.new(0, 20, 0, 20)
        unhideButton.Position = UDim2.new(1, -40, 0, 0)
        unhideButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        unhideButton.BorderSizePixel = 0
        unhideButton.Visible = false
        unhideButton.Parent = mainFrame
        unhideButton.MouseButton1Click:Connect(function()
            mainFrame.Visible = true
        end)

        local speedLabel = Instance.new("TextLabel")
        speedLabel.Text = "Speed:"
        speedLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        speedLabel.Size = UDim2.new(0, 50, 0, 20)
        speedLabel.Position = UDim2.new(0, 10, 0, 30)
        speedLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        speedLabel.BorderSizePixel = 0
        speedLabel.Parent = mainFrame

        local speedTextBox = Instance.new("TextBox")
        speedTextBox.Text = "16"
        speedTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
        speedTextBox.Size = UDim2.new(0, 40, 0, 20)
        speedTextBox.Position = UDim2.new(0, 60, 0, 30)
        speedTextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        speedTextBox.BorderSizePixel = 0
        speedTextBox.Parent = mainFrame

        local setSpeedButton = Instance.new("TextButton")
        setSpeedButton.Text = "Set Speed"
        setSpeedButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        setSpeedButton.Size = UDim2.new(0, 80, 0, 20)
        setSpeedButton.Position = UDim2.new(0, 110, 0, 30)
        setSpeedButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        setSpeedButton.BorderSizePixel = 0
        setSpeedButton.Parent = mainFrame
        setSpeedButton.MouseButton1Click:Connect(function()
            local speed = tonumber(speedTextBox.Text)
            if speed then
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
            end
        end)

        local jumpLabel = Instance.new("TextLabel")
        jumpLabel.Text = "Jump Power:"
        jumpLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        jumpLabel.Size = UDim2.new(0, 70, 0, 20)
        jumpLabel.Position = UDim2.new(0, 10, 0, 60)
        jumpLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        jumpLabel.BorderSizePixel = 0
        jumpLabel.Parent = mainFrame

        local jumpTextBox = Instance.new("TextBox")
        jumpTextBox.Text = "50"
        jumpTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
        jumpTextBox.Size = UDim2.new(0, 40, 0, 20)
        jumpTextBox.Position = UDim2.new(0, 90, 0, 60)
        jumpTextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        jumpTextBox.BorderSizePixel = 0
        jumpTextBox.Parent = mainFrame

        local setJumpButton = Instance.new("TextButton")
        setJumpButton.Text = "Set Jump"
        setJumpButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        setJumpButton.Size = UDim2.new(0, 80, 0, 20)
        setJumpButton.Position = UDim2.new(0, 140, 0, 60)
        setJumpButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        setJumpButton.BorderSizePixel = 0
        setJumpButton.Parent = mainFrame
        setJumpButton.MouseButton1Click:Connect(function()
            local jumpPower = tonumber(jumpTextBox.Text)
            if jumpPower then
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = jumpPower
            end
        end)

        local unhideButton = Instance.new("TextButton")
        unhideButton.Text = "Close GUI"
        unhideButton.TextColor3 = Color3.fromRGB(200, 200, 200)
        unhideButton.Size = UDim2.new(0, 80, 0, 20)
        unhideButton.Position = UDim2.new(0, 85, 0, 85)
        unhideButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        unhideButton.BorderSizePixel = 0
        unhideButton.Parent = mainFrame
        unhideButton.MouseButton1Click:Connect(function()
            unhideButton.Visible = false
            mainFrame.Visible = true
        end)

        hideButton.MouseButton1Click:Connect(function()
            mainFrame.Visible = false
            unhideButton.Visible = true
        end)
    else
        keyTextBox.Text = "Wrong Key"
    end
end)

