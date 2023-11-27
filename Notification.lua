
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
local isClosed = false

closeButton.MouseButton1Click:Connect(function()
    isClosed = true
    notificationFrame:Destroy()
end)

local nameLabel = Instance.new("TextLabel")
nameLabel.Size = UDim2.new(1, 0, 0.5, 0)
nameLabel.Text = "Bildirim Adı"
nameLabel.TextColor3 = Color3.new(1, 1, 1)
nameLabel.Parent = notificationFrame

local descriptionLabel = Instance.new("TextLabel")
descriptionLabel.Size = UDim2.new(1, 0, 0.5, 0)
descriptionLabel.Position = UDim2.new(0, 0, 0.5, 0)
descriptionLabel.Text = "Bildirim Açıklaması"
descriptionLabel.TextColor3 = Color3.new(1, 1, 1)
descriptionLabel.Parent = notificationFrame


spawn(function()
    wait(5)
    if not isClosed then
        notificationFrame:Destroy()
    end
end)
