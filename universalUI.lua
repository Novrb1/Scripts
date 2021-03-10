local screengui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local top = Instance.new("Frame")
local twigger = Instance.new("TextButton")
local misc = Instance.new("TextButton")
local actual = Instance.new("Frame")
local Line = Instance.new("Frame")
local Line2 = Instance.new("Frame")
local l = Instance.new("TextButton")
local enable = Instance.new("TextButton")
local tc = Instance.new("TextButton")
local spray = Instance.new("TextBox")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local ImageLabel_2 = Instance.new("ImageLabel")
local TextLabel_4 = Instance.new("TextLabel")
local actual2 = Instance.new("Frame")
local Line_2 = Instance.new("Frame")
local Line2_2 = Instance.new("Frame")
local l_2 = Instance.new("TextButton")
local speed = Instance.new("TextButton")
local infjump = Instance.new("TextButton")
local partfloat = Instance.new("TextButton")
local field = Instance.new("TextButton")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local TextLabel_7 = Instance.new("TextLabel")
local TextLabel_8 = Instance.new("TextLabel")
local FOV = Instance.new("TextBox")
local topthingy = Instance.new("Frame")
local heeee = Instance.new("Frame")
local infou = Instance.new("TextLabel")
infou.Text = "GameID: " .. game.PlaceId .. " Thanks For Using " .. game.Players.LocalPlayer.Name

screengui.Name = "screengui"
screengui.Parent = game.CoreGui
screengui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

frame.Name = "frame"
frame.Parent = screengui
frame.Active = true
frame.BackgroundColor3 = Color3.new(0.113725, 0.113725, 0.129412)
frame.BorderColor3 = Color3.new(0.121569, 0.121569, 0.141176)
frame.Position = UDim2.new(0.342629939, 0, 0.30616194, 0)
frame.Size = UDim2.new(0, 553, 0, 382)
frame.Draggable = true

top.Name = "top"
top.Parent = frame
top.Active = true
top.BackgroundColor3 = Color3.new(0.980392, 0.65098, 0.0941177)
top.Position = UDim2.new(0, 0, -0.018324608, 0)
top.Size = UDim2.new(0, 553, 0, 7)

twigger.Name = "twigger"
twigger.Parent = frame
twigger.BackgroundColor3 = Color3.new(1, 1, 1)
twigger.BackgroundTransparency = 1
twigger.Position = UDim2.new(0.254972875, 0, 0.0235602092, 0)
twigger.Size = UDim2.new(0, 216, 0, 50)
twigger.Font = Enum.Font.SourceSans
twigger.Text = "Aim-Assist"
twigger.TextColor3 = Color3.new(0.898039, 0.898039, 0.898039)
twigger.TextScaled = true
twigger.TextSize = 14
twigger.TextWrapped = true
twigger.TextXAlignment = Enum.TextXAlignment.Right

misc.Name = "misc"
misc.Parent = frame
misc.BackgroundColor3 = Color3.new(1, 1, 1)
misc.BackgroundTransparency = 1
misc.Position = UDim2.new(0.681735992, 0, 0.0235602092, 0)
misc.Size = UDim2.new(0, 140, 0, 50)
misc.Font = Enum.Font.SourceSans
misc.Text = "Misc."
misc.TextColor3 = Color3.new(0.898039, 0.898039, 0.898039)
misc.TextScaled = true
misc.TextSize = 14
misc.TextWrapped = true
misc.TextXAlignment = Enum.TextXAlignment.Right

actual.Name = "actual"
actual.Parent = frame
actual.Active = true
actual.BackgroundColor3 = Color3.new(0.113725, 0.113725, 0.129412)
actual.BorderColor3 = Color3.new(0.12549, 0.12549, 0.141176)
actual.BorderSizePixel = 0
actual.Position = UDim2.new(0, 0, 0.167539269, 0)
actual.Size = UDim2.new(0, 553, 0, 318)

Line.Name = "Line"
Line.Parent = actual
Line.BackgroundColor3 = Color3.new(1, 1, 1)
Line.BorderColor3 = Color3.new(0.27451, 0.27451, 0.290196)
Line.Size = UDim2.new(0, 552, 0, 0)

Line2.Name = "Line2"
Line2.Parent = actual
Line2.BackgroundColor3 = Color3.new(1, 1, 1)
Line2.BorderColor3 = Color3.new(0.27451, 0.27451, 0.290196)
Line2.Position = UDim2.new(0.23290202, 0, 0, 0)
Line2.Size = UDim2.new(0, 0, 0, 318)

l.Name = "l"
l.Parent = actual
l.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
l.BorderSizePixel = 0
l.Size = UDim2.new(0, 127, 0, 42)
l.AutoButtonColor = false
l.Font = Enum.Font.SourceSans
l.Text = "Trigger"
l.TextColor3 = Color3.new(0, 0, 0)
l.TextScaled = true
l.TextSize = 14
l.TextWrapped = true

enable.Name = "enable"
enable.Parent = actual
enable.BackgroundColor3 = Color3.new(0.223529, 0.223529, 0.223529)
enable.BorderSizePixel = 0
enable.Position = UDim2.new(0.254972875, 0, 0.0377358496, 0)
enable.Size = UDim2.new(0, 44, 0, 36)
enable.Font = Enum.Font.SourceSans
enable.Text = ""
enable.TextColor3 = Color3.new(0, 0, 0)
enable.TextSize = 14

tc.Name = "tc"
tc.Parent = actual
tc.BackgroundColor3 = Color3.new(0.223529, 0.223529, 0.223529)
tc.BorderSizePixel = 0
tc.Position = UDim2.new(0.254972875, 0, 0.210691825, 0)
tc.Size = UDim2.new(0, 44, 0, 36)
tc.Font = Enum.Font.SourceSans
tc.Text = ""
tc.TextColor3 = Color3.new(0, 0, 0)
tc.TextSize = 14

spray.Name = "spray"
spray.Parent = actual
spray.BackgroundColor3 = Color3.new(0.223529, 0.223529, 0.223529)
spray.Position = UDim2.new(0.254972875, 0, 0.361635208, 0)
spray.Size = UDim2.new(0, 44, 0, 36)
spray.Font = Enum.Font.SourceSans
spray.Text = ""
spray.TextColor3 = Color3.new(0, 0, 0)
spray.TextSize = 14

TextLabel.Parent = actual
TextLabel.Active = true
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.351265818, 0, 0.0377358496, 0)
TextLabel.Size = UDim2.new(0, 348, 0, 36)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Enable Triggerbot"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

TextLabel_2.Parent = actual
TextLabel_2.Active = true
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.351265818, 0, 0.213836476, 0)
TextLabel_2.Size = UDim2.new(0, 348, 0, 36)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Teamcheck (x = true)"
TextLabel_2.TextColor3 = Color3.new(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = actual
TextLabel_3.Active = true
TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.351265818, 0, 0.361635208, 0)
TextLabel_3.Size = UDim2.new(0, 348, 0, 36)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "<-- Spray Time (How long it hold down)"
TextLabel_3.TextColor3 = Color3.new(0, 0, 0)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14
TextLabel_3.TextWrapped = true
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

ImageLabel.Parent = frame
ImageLabel.Active = true
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.229656428, 0, 0.0235602092, 0)
ImageLabel.Size = UDim2.new(0, 50, 0, 50)
ImageLabel.Image = "http://www.roblox.com/asset/?id=5801716713"
ImageLabel.ImageColor3 = Color3.new(1, 0, 0)
ImageLabel.ScaleType = Enum.ScaleType.Fit

ImageLabel_2.Parent = frame
ImageLabel_2.Active = true
ImageLabel_2.BackgroundColor3 = Color3.new(0.113725, 0.113725, 0.129412)
ImageLabel_2.BackgroundTransparency = 1
ImageLabel_2.Position = UDim2.new(0.681735873, 0, 0.0235602111, 0)
ImageLabel_2.Size = UDim2.new(0, 50, 0, 50)
ImageLabel_2.Image = "http://www.roblox.com/asset/?id=5801802082"
ImageLabel_2.ImageColor3 = Color3.new(0.113725, 0.113725, 0.129412)

TextLabel_4.Parent = frame
TextLabel_4.Active = true
TextLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_4.BackgroundTransparency = 1
TextLabel_4.BorderColor3 = Color3.new(0.113725, 0.113725, 0.129412)
TextLabel_4.Position = UDim2.new(0.028933093, 0, 0.0235602092, 0)
TextLabel_4.Size = UDim2.new(0, 99, 0, 44)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "feenware"
TextLabel_4.TextColor3 = Color3.new(1, 1, 1)
TextLabel_4.TextSize = 32

actual2.Name = "actual2"
actual2.Parent = frame
actual2.Active = true
actual2.BackgroundColor3 = Color3.new(0.113725, 0.113725, 0.129412)
actual2.BorderColor3 = Color3.new(0.12549, 0.12549, 0.141176)
actual2.BorderSizePixel = 0
actual2.Position = UDim2.new(1.27486467, 0, 9999, 0)
actual2.Size = UDim2.new(0, 553, 0, 318)

Line_2.Name = "Line"
Line_2.Parent = actual2
Line_2.Active = true
Line_2.BackgroundColor3 = Color3.new(1, 1, 1)
Line_2.BorderColor3 = Color3.new(0.27451, 0.27451, 0.290196)
Line_2.Size = UDim2.new(0, 552, 0, 0)

Line2_2.Name = "Line2"
Line2_2.Parent = actual2
Line2_2.Active = true
Line2_2.BackgroundColor3 = Color3.new(1, 1, 1)
Line2_2.BorderColor3 = Color3.new(0.27451, 0.27451, 0.290196)
Line2_2.Position = UDim2.new(0.23290202, 0, 0, 0)
Line2_2.Size = UDim2.new(0, 0, 0, 318)

l_2.Name = "l"
l_2.Parent = actual2
l_2.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
l_2.BorderSizePixel = 0
l_2.Size = UDim2.new(0, 127, 0, 42)
l_2.AutoButtonColor = false
l_2.Font = Enum.Font.SourceSans
l_2.Text = "Main"
l_2.TextColor3 = Color3.new(0, 0, 0)
l_2.TextScaled = true
l_2.TextSize = 14
l_2.TextWrapped = true

speed.Name = "speed"
speed.Parent = actual2
speed.BackgroundColor3 = Color3.new(0.223529, 0.223529, 0.223529)
speed.BorderSizePixel = 0
speed.Position = UDim2.new(0.260397822, 0, 0.0377358496, 0)
speed.Size = UDim2.new(0, 44, 0, 36)
speed.Font = Enum.Font.SourceSans
speed.Text = ""
speed.TextColor3 = Color3.new(0, 0, 0)
speed.TextSize = 14

infjump.Name = "infjump"
infjump.Parent = actual2
infjump.BackgroundColor3 = Color3.new(0.223529, 0.223529, 0.223529)
infjump.BorderSizePixel = 0
infjump.Position = UDim2.new(0.260397822, 0, 0.213836491, 0)
infjump.Size = UDim2.new(0, 44, 0, 36)
infjump.Font = Enum.Font.SourceSans
infjump.Text = ""
infjump.TextColor3 = Color3.new(0, 0, 0)
infjump.TextSize = 14

partfloat.Name = "partfloat"
partfloat.Parent = actual2
partfloat.BackgroundColor3 = Color3.new(0.223529, 0.223529, 0.223529)
partfloat.BorderSizePixel = 0
partfloat.Position = UDim2.new(0.260397822, 0, 0.38364777, 0)
partfloat.Size = UDim2.new(0, 44, 0, 36)
partfloat.Font = Enum.Font.SourceSans
partfloat.Text = ""
partfloat.TextColor3 = Color3.new(0, 0, 0)
partfloat.TextSize = 14

field.Name = "field"
field.Parent = actual2
field.BackgroundColor3 = Color3.new(0.223529, 0.223529, 0.223529)
field.BorderSizePixel = 0
field.Position = UDim2.new(0.260397822, 0, 0.559748471, 0)
field.Size = UDim2.new(0, 44, 0, 36)
field.Font = Enum.Font.SourceSans
field.Text = ""
field.TextColor3 = Color3.new(0, 0, 0)
field.TextSize = 14

TextLabel_5.Parent = actual2
TextLabel_5.Active = true
TextLabel_5.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_5.BackgroundTransparency = 1
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.351265818, 0, 0.0377358496, 0)
TextLabel_5.Size = UDim2.new(0, 348, 0, 36)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "CFrame Speed (BLINK)"
TextLabel_5.TextColor3 = Color3.new(0, 0, 0)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14
TextLabel_5.TextWrapped = true

TextLabel_6.Parent = actual2
TextLabel_6.Active = true
TextLabel_6.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_6.BackgroundTransparency = 1
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0.351265907, 0, 0.212819368, 0)
TextLabel_6.Size = UDim2.new(0, 348, 0, 36)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.Text = "Infinite Jump (ChangeState)"
TextLabel_6.TextColor3 = Color3.new(0, 0, 0)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14
TextLabel_6.TextWrapped = true

TextLabel_7.Parent = actual2
TextLabel_7.Active = true
TextLabel_7.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_7.BackgroundTransparency = 1
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0.350990951, 0, 0.382603765, 0)
TextLabel_7.Size = UDim2.new(0, 348, 0, 36)
TextLabel_7.Font = Enum.Font.SourceSans
TextLabel_7.Text = "Part Float (Airwalk)"
TextLabel_7.TextColor3 = Color3.new(0, 0, 0)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 14
TextLabel_7.TextWrapped = true

TextLabel_8.Parent = actual2
TextLabel_8.Active = true
TextLabel_8.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_8.BackgroundTransparency = 1
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Position = UDim2.new(0.350991011, 0, 0.558704376, 0)
TextLabel_8.Size = UDim2.new(0, 348, 0, 36)
TextLabel_8.Font = Enum.Font.SourceSans
TextLabel_8.Text = "FOV Changer"
TextLabel_8.TextColor3 = Color3.new(0, 0, 0)
TextLabel_8.TextScaled = true
TextLabel_8.TextSize = 14
TextLabel_8.TextWrapped = true

FOV.Name = "FOV"
FOV.Parent = actual2
FOV.BackgroundColor3 = Color3.new(0.533333, 0.533333, 0.533333)
FOV.Position = UDim2.new(0.260397822, 0, 0.67295599, 0)
FOV.Size = UDim2.new(0, 44, 0, 20)
FOV.Font = Enum.Font.SourceSans
FOV.Text = ""
FOV.TextColor3 = Color3.new(0, 0, 0)
FOV.TextSize = 14

topthingy.Name = "topthingy"
topthingy.Parent = screengui
topthingy.Active = true
topthingy.BackgroundColor3 = Color3.new(0.239216, 0.239216, 0.239216)
topthingy.BorderSizePixel = 0
topthingy.Position = UDim2.new(0.0125504136, 0, 0.0102442801, 0)
topthingy.Size = UDim2.new(0, 272, 0, 20)

heeee.Name = "heeee"
heeee.Parent = topthingy
heeee.Active = true
heeee.BackgroundColor3 = Color3.new(0.745098, 0.435294, 0)
heeee.BorderSizePixel = 0
heeee.Position = UDim2.new(-0.0294117648, 0, 0, 0)
heeee.Size = UDim2.new(0, 8, 0, 20)

infou.Name = "infou"
infou.Parent = topthingy
infou.Active = true
infou.BackgroundColor3 = Color3.new(1, 1, 1)
infou.BackgroundTransparency = 1
infou.BorderSizePixel = 0
infou.Position = UDim2.new(0, 0, 2.38418579e-07, 0)
infou.Size = UDim2.new(0, 272, 0, 21)
infou.Font = Enum.Font.SourceSans
infou.Text = "Thans For Using"
infou.TextColor3 = Color3.new(1, 1, 1)
infou.TextScaled = true
infou.TextSize = 14
infou.TextWrapped = true
infou.Text = "GameID: " .. game.PlaceId .. " Thanks For Using " .. game.Players.LocalPlayer.Name

local plrs = game:GetService("Players")
local lp = plrs.LocalPlayer
local m = lp:GetMouse()
local uis = game:GetService('UserInputService')
local rservice = game:GetService('RunService')
local h = rservice.Heartbeat
local space = false
local shift = false
local teamcheck = false
local pt = Instance.new("Part")
pt.Parent = game.Workspace
pt.Anchored = true
pt.CanCollide = true

uis.InputBegan:connect(function(key, Typing)
    if not Typing then
    	if key.KeyCode == Enum.KeyCode.Space then
    		space = true
    	end
    	if key.KeyCode == Enum.KeyCode.LeftShift then
    		shift = true
    	end
    	if key.KeyCode == Enum.KeyCode.Insert then
    	    frame.Visible = not frame.Visible
    	end
	end
end)

uis.InputEnded:connect(function(key, Typing)
    if not Typing then
    	if key.KeyCode == Enum.KeyCode.Space then
    		space = false
    	end
    	if key.KeyCode == Enum.KeyCode.LeftShift then
    		shift = false
    	end
	end
end)

speed.MouseButton1Click:Connect(function()
	if speed.Text == "" then
	   speed.Text = "X"
	else
	   speed.Text = ""
	end
end)

infjump.MouseButton1Click:Connect(function()
	if infjump.Text == "" then
	    infjump.Text = "X"
	else
	    infjump.Text = ""
	end
end)

partfloat.MouseButton1Click:Connect(function()
	if partfloat.Text == "" then
		partfloat.Text = "X"
	else
		partfloat.Text = ""
		wait()
		pt.CFrame = pt.CFrame + Vector3.new(0,math.huge,0)
	end
end)

rservice.Stepped:Connect(function()
    if space then
        if infjump.Text == "X" then
            if lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") then
                lp.Character.Humanoid:ChangeState("Jumping") 
            end
        end
    end
    if shift then
        if speed.Text == "X" then
            if lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") then
                lp.Character.HumanoidRootPart.CFrame = lp.Character.HumanoidRootPart.CFrame + lp.Character.HumanoidRootPart.CFrame.lookVector * 0.5
            end
        end
    end
    if partfloat.Text == "X" then
        if lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") then
		    pt.CFrame = lp.Character.HumanoidRootPart.CFrame + Vector3.new(0,-3.7,0)
		end
	end
end)

FOV.FocusLost:Connect(function()
    if tonumber(FOV.Text) and tonumber(FOV.Text) >= 120 then
        
    else
        FOV.Text = "70"
    end
end)

field.MouseButton1Click:Connect(function()
	game.Workspace.Camera.FieldOfView = tonumber(FOV.text)
end)

misc.MouseButton1Click:Connect(function()
	actual.Active = false
	actual.Visible = false
	actual.Position = UDim2.new(999, 0, 999, 0)
	actual2.Active = true
	actual2.Visible = true
	actual2.Position = UDim2.new(0, 0, 0.167539269, 0)
end)

twigger.MouseButton1Click:Connect(function()
	actual.Active = true
	actual.Visible = true
	actual.Position = UDim2.new(0, 0, 0.167539269, 0)
	actual2.Active = false
	actual2.Visible = false
	actual2.Position = UDim2.new(999, 0, 999, 0)
end)

enable.MouseButton1Click:Connect(function()
	if enable.Text == "" then
		enable.Text = "X"
	else
		enable.Text = ""
	end
end)

tc.MouseButton1Click:Connect(function()
	if tc.Text == "" then
		tc.Text = "X"
		teamcheck = true
	else
		tc.Text = ""
		teamcheck = false
	end
end)

m.Button2Up:Connect(function()
	lol = false
end)

m.Button2Down:Connect(function()
	lol = true
end)

while h:Wait() do
	if lol then
		if enable.Text == "X" then
			if m.Target and plrs:FindFirstChild(m.Target.Parent.Name) then
				if plrs:FindFirstChild(m.Target.Parent.Name).Team ~= lp.Team or not teamcheck then
					mouse1press(); wait(tonumber(spray.Text)); mouse1release()
				end
			end
		end
	end
end
