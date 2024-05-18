print("TEST")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
local backpack = Player:FindFirstChildOfClass("Backpack")
print(backpack)
Player:Move(Vector3.new(0,0,0),false)

local Gui = Instance.new("ScreenGui")
Gui.Parent = PlayerGui

local Frame = Instance.new("Frame")
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Parent = Gui

local Label = Instance.new("TextLabel")
Label.Text = Player.Name
Label.TextSize = 100
Label.Parent = Frame

local Button1 = Instance.new("TextButton")
Button1.Name = "Button1"
Button1.Text = "Нажми меня!"
Button1.Size = UDim2.new(0.2, 50, 0.1, 20)
Button1.Parent = Frame

Button1.MouseButton1Down:Connect(function()
    print("Нажата кнопка 1!")
end)

local Button2 = Instance.new("TextButton")
Button2.Name = "Button2"
Button2.Text = "И меня!"
Button2.Size = UDim2.new(0.2, 50, 0.3, 20)
Button2.Position = UDim2.new(0.5, 0, -0.1, 0)
Button2.Parent = Frame

Button2.MouseButton1Down:Connect(function()
    print("Нажата кнопка 2!")
end)