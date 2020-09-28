local screengui = Instance.new("ScreenGui")
local froggers = Instance.new("Frame")
local tab1 = Instance.new("Frame")
local speed = Instance.new("TextButton")
local infjump = Instance.new("TextButton")
local triggerbot = Instance.new("TextButton")
local TEAMCHECK = Instance.new("TextButton")
local partfb = Instance.new("TextButton")
local textieswexies = Instance.new("TextLabel")
local textieswexies_2 = Instance.new("TextLabel")
local textieswexies_3 = Instance.new("TextLabel")
local textieswexies_4 = Instance.new("TextLabel")
local partfloat = Instance.new("TextButton")
local textieswexies_5 = Instance.new("TextLabel")
local resetkey = Instance.new("TextButton")
local RKEY = Instance.new("TextBox")
local textieswexies_6 = Instance.new("TextLabel")
local textieswexies_7 = Instance.new("TextLabel")
local exit = Instance.new("TextButton")

screengui.Name = "screengui"
screengui.Parent = game.CoreGui
screengui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

froggers.Name = "froggers"
froggers.Parent = screengui
froggers.Active = true
froggers.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
froggers.BorderColor3 = Color3.new(0.254902, 0, 0)
froggers.Position = UDim2.new(0.0667861998, 0, 0.207836449, 0)
froggers.Size = UDim2.new(0, 457, 0, 31)
froggers.Draggable = true

tab1.Name = "tab1"
tab1.Parent = froggers
tab1.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
tab1.Position = UDim2.new(0.00218820572, 0, 1.22580647, 0)
tab1.Size = UDim2.new(0, 456, 0, 470)

speed.Name = "speed"
speed.Parent = tab1
speed.BackgroundColor3 = Color3.new(1, 1, 1)
speed.Position = UDim2.new(0.0175438598, 0, 0.0531914905, 0)
speed.Size = UDim2.new(0, 53, 0, 48)
speed.Style = Enum.ButtonStyle.RobloxButton
speed.Font = Enum.Font.Arial
speed.Text = "X"
speed.TextColor3 = Color3.new(1, 1, 1)
speed.TextScaled = true
speed.TextSize = 14
speed.TextStrokeColor3 = Color3.new(1, 0, 0.45098)
speed.TextWrapped = true

infjump.Name = "infjump"
infjump.Parent = tab1
infjump.BackgroundColor3 = Color3.new(1, 1, 1)
infjump.Position = UDim2.new(0.0175438598, 0, 0.208510637, 0)
infjump.Size = UDim2.new(0, 53, 0, 48)
infjump.Style = Enum.ButtonStyle.RobloxButton
infjump.Font = Enum.Font.Arial
infjump.Text = "X"
infjump.TextColor3 = Color3.new(1, 1, 1)
infjump.TextScaled = true
infjump.TextSize = 14
infjump.TextWrapped = true

triggerbot.Name = "triggerbot"
triggerbot.Parent = tab1
triggerbot.BackgroundColor3 = Color3.new(1, 1, 1)
triggerbot.Position = UDim2.new(0.0175438598, 0, 0.368085116, 0)
triggerbot.Size = UDim2.new(0, 53, 0, 48)
triggerbot.Style = Enum.ButtonStyle.RobloxButton
triggerbot.Font = Enum.Font.Arial
triggerbot.Text = "X"
triggerbot.TextColor3 = Color3.new(1, 1, 1)
triggerbot.TextScaled = true
triggerbot.TextSize = 14
triggerbot.TextWrapped = true

TEAMCHECK.Name = "TEAMCHECK"
TEAMCHECK.Parent = triggerbot
TEAMCHECK.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
TEAMCHECK.Position = UDim2.new(5.67516899, 0, 0.575419068, 0)
TEAMCHECK.Size = UDim2.new(0, 72, 0, 22)
TEAMCHECK.Font = Enum.Font.SourceSans
TEAMCHECK.Text = "False"
TEAMCHECK.TextColor3 = Color3.new(0, 0, 0)
TEAMCHECK.TextScaled = true
TEAMCHECK.TextSize = 14
TEAMCHECK.TextWrapped = true

partfb.Name = "partfb"
partfb.Parent = tab1
partfb.BackgroundColor3 = Color3.new(1, 1, 1)
partfb.Position = UDim2.new(0.0175438598, 0, 0.538297892, 0)
partfb.Size = UDim2.new(0, 53, 0, 48)
partfb.Style = Enum.ButtonStyle.RobloxButton
partfb.Font = Enum.Font.Arial
partfb.Text = "X"
partfb.TextColor3 = Color3.new(1, 1, 1)
partfb.TextScaled = true
partfb.TextSize = 14
partfb.TextWrapped = true

textieswexies.Name = "textieswexies"
textieswexies.Parent = tab1
textieswexies.BackgroundColor3 = Color3.new(1, 1, 1)
textieswexies.BackgroundTransparency = 1
textieswexies.Position = UDim2.new(0.151315793, 0, 0.0531914905, 0)
textieswexies.Size = UDim2.new(0, 105, 0, 48)
textieswexies.Font = Enum.Font.SourceSans
textieswexies.Text = "Speed"
textieswexies.TextColor3 = Color3.new(1, 1, 1)
textieswexies.TextScaled = true
textieswexies.TextSize = 14
textieswexies.TextWrapped = true

textieswexies_2.Name = "textieswexies"
textieswexies_2.Parent = tab1
textieswexies_2.BackgroundColor3 = Color3.new(1, 1, 1)
textieswexies_2.BackgroundTransparency = 1
textieswexies_2.Position = UDim2.new(0.151315793, 0, 0.208510637, 0)
textieswexies_2.Size = UDim2.new(0, 219, 0, 48)
textieswexies_2.Font = Enum.Font.SourceSans
textieswexies_2.Text = "Infinite Jump"
textieswexies_2.TextColor3 = Color3.new(1, 1, 1)
textieswexies_2.TextScaled = true
textieswexies_2.TextSize = 14
textieswexies_2.TextWrapped = true

textieswexies_3.Name = "textieswexies"
textieswexies_3.Parent = tab1
textieswexies_3.BackgroundColor3 = Color3.new(1, 1, 1)
textieswexies_3.BackgroundTransparency = 1
textieswexies_3.Position = UDim2.new(0.135964915, 0, 0.366979718, 0)
textieswexies_3.Size = UDim2.new(0, 102, 0, 27)
textieswexies_3.Font = Enum.Font.SourceSans
textieswexies_3.Text = "Triggerbot"
textieswexies_3.TextColor3 = Color3.new(1, 1, 1)
textieswexies_3.TextScaled = true
textieswexies_3.TextSize = 14
textieswexies_3.TextWrapped = true

textieswexies_4.Name = "textieswexies"
textieswexies_4.Parent = tab1
textieswexies_4.BackgroundColor3 = Color3.new(1, 1, 1)
textieswexies_4.BackgroundTransparency = 1
textieswexies_4.Position = UDim2.new(0.151315793, 0, 0.538297892, 0)
textieswexies_4.Size = UDim2.new(0, 258, 0, 48)
textieswexies_4.Font = Enum.Font.SourceSans
textieswexies_4.Text = "Fullbright PART"
textieswexies_4.TextColor3 = Color3.new(1, 1, 1)
textieswexies_4.TextScaled = true
textieswexies_4.TextSize = 14
textieswexies_4.TextWrapped = true

partfloat.Name = "partfloat"
partfloat.Parent = tab1
partfloat.BackgroundColor3 = Color3.new(1, 1, 1)
partfloat.Position = UDim2.new(0.0175438598, 0, 0.697872341, 0)
partfloat.Size = UDim2.new(0, 53, 0, 48)
partfloat.Style = Enum.ButtonStyle.RobloxButton
partfloat.Font = Enum.Font.Arial
partfloat.Text = "X"
partfloat.TextColor3 = Color3.new(1, 1, 1)
partfloat.TextScaled = true
partfloat.TextSize = 14
partfloat.TextWrapped = true

textieswexies_5.Name = "textieswexies"
textieswexies_5.Parent = tab1
textieswexies_5.BackgroundColor3 = Color3.new(1, 1, 1)
textieswexies_5.BackgroundTransparency = 1
textieswexies_5.Position = UDim2.new(0.151315793, 0, 0.697872341, 0)
textieswexies_5.Size = UDim2.new(0, 160, 0, 48)
textieswexies_5.Font = Enum.Font.SourceSans
textieswexies_5.Text = "Part Float"
textieswexies_5.TextColor3 = Color3.new(1, 1, 1)
textieswexies_5.TextScaled = true
textieswexies_5.TextSize = 14
textieswexies_5.TextWrapped = true

resetkey.Name = "resetkey"
resetkey.Parent = tab1
resetkey.BackgroundColor3 = Color3.new(1, 1, 1)
resetkey.Position = UDim2.new(0.0175438598, 0, 0.840425551, 0)
resetkey.Size = UDim2.new(0, 53, 0, 48)
resetkey.Style = Enum.ButtonStyle.RobloxButton
resetkey.Font = Enum.Font.Arial
resetkey.Text = "X"
resetkey.TextColor3 = Color3.new(1, 1, 1)
resetkey.TextScaled = true
resetkey.TextSize = 14
resetkey.TextWrapped = true

RKEY.Name = "RKEY"
RKEY.Parent = resetkey
RKEY.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
RKEY.Position = UDim2.new(1.47322965, 0, -0.492907733, 0)
RKEY.Size = UDim2.new(0, 58, 0, 48)
RKEY.Font = Enum.Font.SourceSans
RKEY.Text = ""
RKEY.TextColor3 = Color3.new(1, 1, 1)
RKEY.TextScaled = true
RKEY.TextSize = 14
RKEY.TextWrapped = true

textieswexies_6.Name = "textieswexies"
textieswexies_6.Parent = tab1
textieswexies_6.BackgroundColor3 = Color3.new(1, 1, 1)
textieswexies_6.BackgroundTransparency = 1
textieswexies_6.Position = UDim2.new(0.258771926, 0, 0.840425551, 0)
textieswexies_6.Size = UDim2.new(0, 103, 0, 48)
textieswexies_6.Font = Enum.Font.SourceSans
textieswexies_6.Text = "Reset"
textieswexies_6.TextColor3 = Color3.new(1, 1, 1)
textieswexies_6.TextScaled = true
textieswexies_6.TextSize = 14
textieswexies_6.TextWrapped = true

textieswexies_7.Name = "textieswexies"
textieswexies_7.Parent = tab1
textieswexies_7.BackgroundColor3 = Color3.new(1, 1, 1)
textieswexies_7.BackgroundTransparency = 1
textieswexies_7.Position = UDim2.new(0.151315793, 0, 0.423404247, 0)
textieswexies_7.Size = UDim2.new(0, 105, 0, 22)
textieswexies_7.Font = Enum.Font.SourceSans
textieswexies_7.Text = "TeamCheck ="
textieswexies_7.TextColor3 = Color3.new(1, 1, 1)
textieswexies_7.TextScaled = true
textieswexies_7.TextSize = 14
textieswexies_7.TextWrapped = true

exit.Name = "exit"
exit.Parent = froggers
exit.BackgroundColor3 = Color3.new(1, 0, 0)
exit.BackgroundTransparency = 0.69999998807907
exit.BorderSizePixel = 0
exit.Position = UDim2.new(0.929978132, 0, 0, 0)
exit.Size = UDim2.new(0, 32, 0, 31)
exit.Font = Enum.Font.Arial
exit.Text = "X"
exit.TextColor3 = Color3.new(0, 0, 0)
exit.TextScaled = true
exit.TextSize = 14
exit.TextWrapped = true
local plrs = game:GetService("Players")
local lp = game.Players.LocalPlayer
local m = lp:GetMouse()
local lol = false
local TeamCheck = false
local Heartbeat = game:GetService("RunService").Heartbeat
local UIS = game:GetService('UserInputService')
local hrp = lp.Character.HumanoidRootPart
local hum = lp.Character.Humanoid
local RS = game:GetService('RunService')

speed.MouseButton1Click:connect(function()
	speed.Text = "O"
	local KDown = false
	UIS.InputBegan:connect(function(key)
		if key.KeyCode == Enum.KeyCode.LeftShift then
			KDown = true
		end
	end)
	UIS.InputEnded:connect(function(key)
		if key.KeyCode == Enum.KeyCode.LeftShift then
			KDown = false
		end
	end)
	RS.Stepped:connect(function()
		if KDown then
			hrp.CFrame = hrp.CFrame + hrp.CFrame.lookVector * 0.5
		end
	end)
	wait(0.2) speed.Text = "X"
end)
infjump.MouseButton1Click:connect(function()
	infjump.Text = "O"
	local SpaceDown = false
	UIS.InputBegan:connect(function(key)
		if key.KeyCode == Enum.KeyCode.Space then
			SpaceDown = true
		end
	end)
	UIS.InputEnded:connect(function(key)
		if key.KeyCode == Enum.KeyCode.Space then
			SpaceDown = false
		end
	end)
	RS.Stepped:connect(function()
		if SpaceDown then
			hum:ChangeState('Jumping')
		end
	end)
	wait(0.2) infjump.Text = "X"
end)
TEAMCHECK.MouseButton1Click:connect(function()
	if TEAMCHECK.Text == "False" then
		TEAMCHECK.Text = "True"
	else
		TEAMCHECK.Text = "False"
	end
end)
triggerbot.MouseButton1Click:connect(function()
	triggerbot.Text = "O"
	wait(0.2) triggerbot.Text = "X"
	local tc = TEAMCHECK.Text
	local lol = false
	local TeamCheck = false
	if tc == "True" then
		TeamCheck = true
	end
	m.Button2Up:Connect(function()
		lol = false
	end)
	m.Button2Down:Connect(function()
		lol = true
	end)
	while wait() do
		if lol == true then do
				if m.Target and plrs:FindFirstChild(m.Target.Parent.Name) then
					local HitPlayer = plrs:FindFirstChild(m.Target.Parent.Name)
					if HitPlayer.Team ~= lp.Team or not TeamCheck then
						mouse1press(); wait(); mouse1release()
					end
				end
			end
		end
	end
end)
partfb.MouseButton1Click:connect(function()
	if partfb.Text == "X" then
		partfb.Text = "O"
	else
		partfb.Text = "X"
	end
	local asd = Instance.new("Part")
	local ass = Instance.new("PointLight")
	asd.Parent = game.Workspace
	asd.Size = Vector3.new(1,1,1)
	asd.Anchored = true
	asd.CanCollide = false
	asd.Transparency = 1
	asd.Name = "gamersgay1712"
	ass.Parent = asd
	ass.Range = math.huge
	ass.Enabled = true
	ass.Brightness = math.huge
	while wait() do
		game.Workspace["gamersgay1712"].CFrame = lp.Character.Torso.CFrame + Vector3.new(0,4,0)
		if partfb.Text == "X" then
		    game.Workspace["gamersgay1712"]:Destroy()
			break
		end
	end
end)
resetkey.MouseButton1Click:connect(function()
	resetkey.Text = "0"
	local reskey = RKEY.Text
	m.KeyDown:connect(function(k)
		k = k:lower()
		if k == reskey then
			lp.Character:BreakJoints()
		end
	end)
	wait(0.2) resetkey.Text = "X"
end)
partfloat.MouseButton1Click:connect(function()
	if partfloat.Text == "X" then
		partfloat.Text = "O"
	else
		partfloat.Text = "X"
	end
	local qwe = Instance.new("Part", game.Workspace)
	qwe.Transparency = 1
	qwe.Anchored = true
	qwe.CanCollide = true
	qwe.Name = "gaynigger1516"
	while wait() do
		game.Workspace["gaynigger1516"].CFrame = lp.Character.Torso.CFrame + Vector3.new(0,-4,0) 
		if partfloat.Text == "X" then
		    game.Workspace["gaynigger1516"]:Destroy()
			break
		end
	end
end)
exit.MouseButton1Click:connect(function()
	screengui:Destroy()
end)
