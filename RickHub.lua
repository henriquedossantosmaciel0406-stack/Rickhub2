-- Rick Hub Script
-- Basic Hub Interface

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")

local player = Players.LocalPlayer

-- GUI
local gui = Instance.new("ScreenGui")
gui.Name = "RickHub"
gui.Parent = game.CoreGui

-- Main Window
local window = Instance.new("Frame")
window.Parent = gui
window.Size = UDim2.new(0, 500, 0, 320)
window.Position = UDim2.new(0.5, -250, 0.5, -160)
window.BackgroundColor3 = Color3.fromRGB(20,20,20)
window.Active = true
window.Draggable = true

local corner = Instance.new("UICorner", window)

-- Title
local title = Instance.new("TextLabel")
title.Parent = window
title.Size = UDim2.new(1,0,0,40)
title.BackgroundTransparency = 1
title.Text = "Rick Hub"
title.TextScaled = true
title.TextColor3 = Color3.fromRGB(255,220,0)

-- Toggle Button Example
local toggle = Instance.new("TextButton")
toggle.Parent = window
toggle.Size = UDim2.new(0,200,0,40)
toggle.Position = UDim2.new(0,20,0,80)
toggle.Text = "Auto Farm: OFF"
toggle.BackgroundColor3 = Color3.fromRGB(40,40,40)
Instance.new("UICorner", toggle)

local enabled = false

toggle.MouseButton1Click:Connect(function()
    enabled = not enabled
    toggle.Text = enabled and "Auto Farm: ON" or "Auto Farm: OFF"
    
    if enabled then
        print("Auto Farm Enabled")
    else
        print("Auto Farm Disabled")
    end
end)

-- Notification
local function notify(text)
    local notif = Instance.new("TextLabel")
    notif.Parent = gui
    notif.Size = UDim2.new(0,250,0,50)
    notif.Position = UDim2.new(1,-260,1,-60)
    notif.BackgroundColor3 = Color3.fromRGB(30,30,30)
    notif.TextColor3 = Color3.new(1,1,1)
    notif.Text = text
    
    Instance.new("UICorner", notif)
    
    task.wait(3)
    notif:Destroy()
end

notify("Rick Hub Loaded")
