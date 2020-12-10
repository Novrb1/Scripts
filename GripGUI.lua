local screengui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")

screengui.Name = "screengui"
screengui.Parent = game.CoreGui
screengui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

frame.Name = "frame"
frame.Parent = screengui
frame.Active = true
frame.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
frame.BorderSizePixel = 0
frame.Position = UDim2.new(0.0132411122, 0, 0.0143885016, 0)
frame.Size = UDim2.new(0, 375, 0, 324)
frame.Style = Enum.FrameStyle.RobloxRound
frame.Draggable = true

ScrollingFrame.Parent = frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(-0.00188639387, 0, 0.0133207329, 0)
ScrollingFrame.Size = UDim2.new(0, 360, 0, 299)

UIGridLayout.Parent = ScrollingFrame
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0, 100, 0, 60)

function addbut(buttonname)
	local variables = Instance.new("TextButton",ScrollingFrame)
	variables.Name = buttonname
	variables.Text = buttonname
	variables.BackgroundColor3 = Color3.fromRGB(158, 158, 158)
	variables.TextColor3 = Color3.fromRGB(0, 0, 0)
	variables.TextSize = 14.000
	variables.TextWrapped = true
end

local lp = game.Players.LocalPlayer
local mouse = lp:GetMouse()
local rservice = game:GetService("RunService")
local heartbeat = rservice.Heartbeat
local uis = game:GetService("UserInputService")
local ts = game:GetService("TweenService")
local vu = game:GetService("VirtualUser")

uis.InputBegan:Connect(function(key)
	if key.KeyCode == Enum.KeyCode.RightShift then
		screengui.Enabled = not screengui.Enabled
	end
	if key.KeyCode == Enum.KeyCode.Delete then
		screengui:Destroy()
	end
end)

addbut("Twist")
ScrollingFrame.Twist.MouseButton1Click:Connect(function()
    local v = 0.03
    local vm = -2
    local m = -0.2
    for _,z in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if z:IsA'Tool' then
            v = v + 0.6
            vm = vm * -0.4
            m = m * -3
            z.Parent = game.Players.LocalPlayer.Character
            z.Grip = CFrame.new(v,0,vm)
            z.GripUp = Vector3.new(vm,6,v)
            z.GripRight = Vector3.new(v,vm,v)
            z.GripForward = Vector3.new(m,v,m)
        end
    end
end)
addbut("_4")
ScrollingFrame._4.MouseButton1Click:Connect(function()
    local v = 0.03
    local vm = -2
    local m = -0.2
    for _,z in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if z:IsA'Tool' then
            v = v + 0.6
            vm = vm * -0.4
            m = m * -0.5
            z.Parent = game.Players.LocalPlayer.Character
            z.Grip = CFrame.new(3,3,m)
            z.GripUp = Vector3.new(v,6,v)
            z.GripRight = Vector3.new(m,m,m)
            z.GripForward = Vector3.new(m,0,0)
        end
    end
end)
addbut("Bunch")
ScrollingFrame.Bunch.MouseButton1Click:Connect(function()
    local v = -0.2
    local vm = -0.5
    for _,z in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if z:IsA'Tool' then
            v = v + 0.5
            vm = vm * -2
            z.Parent = game.Players.LocalPlayer.Character
            z.Grip = CFrame.new(v,v,0)
            z.GripUp = Vector3.new(1,-1,0)
            z.GripRight = Vector3.new(vm,0,2)
            z.GripForward = Vector3.new(0,0,0)
        end
    end
end)
addbut("Wings")
ScrollingFrame.Wings.MouseButton1Click:Connect(function()
    local v = -1.5
    local vm = -0.5
    local mv = 1
    for _,z in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if z:IsA'Tool' then
            v = v * -1.1
            vm = vm / -9
            mv = mv + 0.7
            z.Parent = game.Players.LocalPlayer.Character
            z.Grip = CFrame.new(v,0,mv)
            z.GripUp = Vector3.new(0,9,mv)
            z.GripRight = Vector3.new(mv,2,v)
            z.GripForward = Vector3.new(vm,2,mv)
        end
    end
end)
addbut("Dual")
ScrollingFrame.Dual.MouseButton1Click:Connect(function()
    local v = -0.2
    local vm = -0.3
    for _,z in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if z:IsA'Tool' then
            v = v + 0.5
            vm = vm * -1.2
            z.Parent = game.Players.LocalPlayer.Character
            z.Grip = CFrame.new(v,v,0)
            z.GripUp = Vector3.new(1,-1,0)
            z.GripRight = Vector3.new(vm,0,2)
            z.GripForward = Vector3.new(0,0,0)
        end
    end
end)
addbut("DualX2")
ScrollingFrame.DualX2.MouseButton1Click:Connect(function()
    local v = -0.2
    local vm = -0.3
    for _,z in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if z:IsA'Tool' then
            v = v + 0.5
            vm = vm * -1.1
            z.Parent = game.Players.LocalPlayer.Character
            z.Grip = CFrame.new(v,v,0)
            z.GripUp = Vector3.new(1,-1,0)
            z.GripRight = Vector3.new(vm,0,2)
            z.GripForward = Vector3.new(0,0,0)
        end
    end
end)
addbut("Dual Up Down")
ScrollingFrame['Dual Up Down'].MouseButton1Click:Connect(function()
    local v = -0.2
    local vm = -0.5
    for _,z in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if z:IsA'Tool' then
            v = v + 0.3
            vm = vm * -0.2
            z.Parent = game.Players.LocalPlayer.Character
            z.Grip = CFrame.new(vm,0,v)
            z.GripUp = Vector3.new(vm,0,vm)
            z.GripRight = Vector3.new(vm,0,v)
            z.GripForward = Vector3.new(v,0,v)
        end
    end
end)
addbut("Foward Back")
ScrollingFrame['Foward Back'].MouseButton1Click:Connect(function()
    local v = -0.2
    local vm = -2.5
    for _,z in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if z:IsA'Tool' then
            v = v - 0.5
            vm = vm * -0.5
            z.Parent = game.Players.LocalPlayer.Character
            z.Grip = CFrame.new(v,v,v)
            z.GripUp = Vector3.new(v,v,v)
            z.GripRight = Vector3.new(vm,vm,vm)
            z.GripForward = Vector3.new(vm,vm,vm)
        end
    end
end)
addbut("Right Back")
ScrollingFrame['Right Back'].MouseButton1Click:Connect(function()
    local v = -0.6
    local vm = -0.8
    for _,z in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if z:IsA'Tool' then
            v = v + 0.8
            vm = vm * -0.2
            z.Parent = game.Players.LocalPlayer.Character
            z.Grip = CFrame.new(v,6,v)
            z.GripUp = Vector3.new(0,v,45)
            z.GripRight = Vector3.new(vm,v,v)
            z.GripForward = Vector3.new(v,-2,v)
        end
    end
end)
addbut("Normal")
ScrollingFrame.Normal.MouseButton1Click:Connect(function()
    for _,z in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if z:IsA'Tool' then
            z.Parent = game.Players.LocalPlayer.Character
            z.Grip = CFrame.new(1,-1.3,0)
            z.GripUp = Vector3.new(0,9,0)
            z.GripRight = Vector3.new(0,0,0)
            z.GripForward = Vector3.new(0,0,0)
        end
    end
end)
addbut("Twist Up")
ScrollingFrame['Twist Up'].MouseButton1Click:Connect(function()
    local v = -0.6
    local vm = -0.1
    local mv = -3
    for _,z in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if z:IsA'Tool' then
            v = v + 0.3
            vm = vm * 0.6
            mv = mv + 0.3
            z.Parent = game.Players.LocalPlayer.Character
            z.Grip = CFrame.new(v,0,mv)
            z.GripUp = Vector3.new(0,v,mv)
            z.GripRight = Vector3.new(mv,v,v)
            z.GripForward = Vector3.new(vm,2,mv)
        end
    end
end)
