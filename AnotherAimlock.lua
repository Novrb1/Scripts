if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Players = game:GetService("Players")
local lp = Players.LocalPlayer
local mouse = lp:GetMouse()
local uis = game:GetService("UserInputService")
local rservice = game:GetService("RunService")
local tween = game:GetService("TweenService")
local cam = workspace.CurrentCamera

local tc = false
local masterenabled = false
local akey = Enum.KeyCode.Q
local predictionenabled = false
local preidicion = 1
local silent = false
local camlock = true
local keyss = false
local fov_value = 75
local thicknesssa = 3

local FOVCircle = Drawing.new("Circle")
FOVCircle.Radius = fov_value
FOVCircle.Thickness = thicknesssa
FOVCircle.Transparency = 1
FOVCircle.NumSides = 100
FOVCircle.Visible = true
FOVCircle.Color = Color3.fromRGB(0, 125, 255)
mouse.Move:Connect(function()
    FOVCircle.Thickness = thicknesssa
    FOVCircle.Radius = fov_value
    FOVCircle.NumSides = 100
    FOVCircle.Color = Color3.fromRGB(0, 125, 255)
    FOVCircle.Position = Vector2.new(mouse.X, mouse.Y + 36)
    FOVCircle.Transparency = 1
end)

function getClosestMouse()
    local nearest = nil  
    local last = math.huge
    for i,v in next, game.Players:GetPlayers() do
        if v ~= lp and lp.Character and v.Character and v.Character:FindFirstChild("Head") then
            if tc then
                if v.Team ~= lp.Team then
                    local ePos = cam:WorldToViewportPoint(v.Character:FindFirstChild("Head").Position)
                    local AccPos = Vector2.new(ePos.X, ePos.Y)
                    local mousePos = Vector2.new(cam.ViewportSize.X / 2, cam.ViewportSize.Y / 2)
                    local distance = (AccPos - mousePos).magnitude
                    if distance < last then
                        last = distance
                        nearest = v
                    end
                end
            else
                local ePos = cam:WorldToViewportPoint(v.Character:FindFirstChild("Head").Position)
                local AccPos = Vector2.new(ePos.X, ePos.Y)
                local mousePos = Vector2.new(cam.ViewportSize.X / 2, cam.ViewportSize.Y / 2)
                local distance = (AccPos - mousePos).magnitude
                if distance < last then
                    last = distance
                    nearest = v
                end
            end
        end
    end
    if nearest ~= nil then
        return nearest
    end
end

function checkfov(palyers, fov_amount)
    local fov
    local vector = cam:WorldToViewportPoint(palyers.Character:FindFirstChild("Head").Position)
    local magnitude = (Vector2.new(vector.X, vector.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
    local cfov = fov_amount
    if magnitude < cfov then
        fov = true
    else
        fov = false
    end
    return fov
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Novrb1/Scripts/master/UwUWareLib"))()

local Window = Library:CreateWindow("Window")

Window:AddToggle({text = "Enabled", flag = "I", state = false, callback = function(bool)
    masterenabled = bool
end})
Window:AddToggle({text = "Teamcheck Toggle", flag = "o", state = false, callback = function(bool)
    tc = bool
end})
Window:AddSlider({text = "Fov Circle", flag = "l", value = 75, min = 10, max = 200, float = 5, callback = function(num)
    fov_value = num
end})
Window:AddSlider({text = "Thickness", flag = "l", value = 3, min = 1, max = 10, float = 1, callback = function(num)
    thicknesssa = num
end})
Window:AddList({text = "Aimtypes", flag = "L", value = "First-Person", values = {"Third-Person", "First-Person"}, callback = function(toggle)
    if toggle == "First-Person" then
        silent = false
        camlock = true
    elseif toggle == "Third-Person" then
        silent = true
        camlock = false
    end
end})
Window:AddToggle({text = "Prediction Toggle", flag = "i", state = false, callback = function(bool)
    predictionenabled = bool
end})
Window:AddSlider({text = "Prediction", flag = "l", value = 1, min = 1, max = 10, float = 0.5, callback = function(num)
    preidicion = num
end})
Window:AddBind({text = "Aimlock Bind", flag = "O", hold = true, key = "Q" , callback = function(bind)
    keyss = not bind
end})
Window:AddBind({text = "Toggle UI", key = "RightShift", callback = function()
    Library:Close()
end})

Library:Init()

spawn(function()
    rservice.Stepped:Connect(function()
        if masterenabled then
            local closestLOL = getClosestMouse()
            if silent and keyss and closestLOL ~= nil and checkfov(closestLOL, fov_value) then
                if predictionenabled then
                    local vector, onScreen = cam:WorldToViewportPoint(closestLOL.Character:FindFirstChild("Head").Position + closestLOL.Character:FindFirstChild("Head").Velocity / preidicion)
                    if keyss and onScreen and isrbxactive() then
                        mousemoveabs(vector.X, vector.Y)
                    end
                else
                    local vector, onScreen = cam:WorldToViewportPoint(closestLOL.Character:FindFirstChild("Head").Position)
                    if keyss and onScreen and isrbxactive() then
                        mousemoveabs(vector.X, vector.Y)
                    end
                end
            elseif camlock and keyss and closestLOL ~= nil and checkfov(closestLOL, fov_value) then
                if predictionenabled then
                    cam.CFrame = CFrame.new(cam.CFrame.p, closestLOL.Character:FindFirstChild("Head").Position + closestLOL.Character:FindFirstChild("Head").Velocity / preidicion)
                else
                    cam.CFrame = CFrame.new(cam.CFrame.p, closestLOL.Character:FindFirstChild("Head").Position)
                end
            end
        end
    end)
end)
