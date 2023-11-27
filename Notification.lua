local notificationFrame = Instance.new("Frame")
notificationFrame.Size = UDim2.new(0, 200, 0, 100)
notificationFrame.Position = UDim2.new(1, -220, 1, -120)
notificationFrame.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
notificationFrame.Parent = game.Players.LocalPlayer.PlayerGui

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 20, 0, 20)
closeButton.Position = UDim2.new(1, -25, 0, 5)
closeButton.Text = "X"
closeButton.Parent = notificationFrame
closeButton.MouseButton1Click:Connect(function()
    notificationFrame:Destroy()
end)

local nameLabel = Instance.new("TextLabel")
nameLabel.Size = UDim2.new(1, 0, 0.5, 0)
nameLabel.Text = "Xd Lol"
nameLabel.TextColor3 = Color3.new(1, 1, 1)
nameLabel.Parent = notificationFrame

local descriptionLabel = Instance.new("TextLabel")
descriptionLabel.Size = UDim2.new(1, 0, 0.5, 0)
descriptionLabel.Position = UDim2.new(0, 0, 0.5, 0)
descriptionLabel.Text = "Yarrami ye"
descriptionLabel.TextColor3 = Color3.new(1, 1, 1)
descriptionLabel.Parent = notificationFrame

-- Bildirimi Silme
wait(5)
notificationFrame:Destroy()
