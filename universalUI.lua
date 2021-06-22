if not game:IsLoaded() then
    game.Loaded:Wait()
end

--https://www.roblox.com/games/286090429/Arsenal
--https://www.roblox.com/games/4913331862/ZOMBIES-RECOIL

local Players = game:GetService("Players")
local lp = Players.LocalPlayer
local mouse = lp:GetMouse()
local uis = game:GetService("UserInputService")
local rservice = game:GetService("RunService")
local tween = game:GetService("TweenService")
local cam = workspace.CurrentCamera
local fieldofviewnum = cam.FieldOfView

local espen = false
local esptc = false
local diesp = false
local zomesp = false
local nametagss = false
local cfov = false

local ptas = Instance.new("Part", workspace)
ptas.Anchored = true
ptas.CanCollide = false
ptas.Size = Vector3.new(1,1,1)
ptas.CFrame = CFrame.new(999999999,0,999999999)

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Novrb1/Scripts/master/UILIB-not-mine"))()
library:SetBind(Enum.KeyCode.LeftAlt)

local Mains = library:NewWindow("Main","Ui")

local General = Mains:NewSection("Local")

General:Toggle("Toggle FieldOfView", function(bool)
    cfov = bool
end)
General:Slider("Field Of View", 10, 120, function(num)
    local num = math.floor(num)
    fieldofviewnum = num
end)
local fbirhgt = false
General:Toggle("FullBright", function(bool)
    fbirhgt = bool
    game:GetService("Lighting").GlobalShadows = not bool
    if bool then
        game:GetService("Lighting").Brightness = 2
    else
        game:GetService("Lighting").Brightness = 1
    end
end)

game:GetService("Lighting").Changed:Connect(function()
    if fbirhgt then
        game:GetService("Lighting").ClockTime = 12
        game:GetService("Lighting").FogEnd = 9e9
        game:GetService("Lighting").FogStart = 9e9
    end
end)

General:Toggle("Remove Lighting", function(bool)
    for _, g in next, game:GetService("Lighting"):GetDescendants() do
        if g:IsA("BlurEffect") or g:IsA("SunRaysEffect") or g:IsA("ColorCorrectionEffect") or g:IsA("BloomEffect") or g:IsA("DepthOfFieldEffect") then
           g.Enabled = not a
        end
    end
end)

local hexpnder = false
local hexpnderscale = 2
if game.PlaceId == 4913331862 or game.PlaceId == 4953295718 or game.PlaceId == 4913334858 or game.PlaceId == 5669837502 then
    General:Toggle("Hitbox Expander", function(bool)
        hexpnder = bool
    end)
    General:Slider("Hitbox Scaling", 1, 20, function(num)
        local num = math.floor(num)
        hexpnderscale = num
    end)
    General:Box("Gun Giver", function(object)
        if object and object ~= nil and object ~= " " then
            local gun
            for _,v in next, game:GetService("ReplicatedStorage").Weapons:GetChildren() do
                if v.Name:lower():sub(1,#object) == object:lower() then
                    gun = v.GunName.Value
                end
            end
            lp.PlayerScripts.Shockwave.net:Fire("TakeIt", gun)
        end
    end)
end

if game.PlaceId == 286090429 then
    local hitboxexa = false
    General:Toggle("Hitbox Expander", function(bool)
        hitboxexa = bool
    end)
    local scaling = 1
    General:Slider("Hitbox Scaling", 1, 20, function(num)
        local num = math.floor(num)
        scaling = num
    end)
    local Client
    for i,v in pairs(getgc(true)) do
    	if type(v) == "table" and rawget(v, "mode") then
    		Client = v;
    	end
    end
    local wkspc = Client.wkspc
    
    rservice.Stepped:Connect(function()
        if hitboxexa then
            for _,v in next, Players:GetPlayers() do
                if v ~= lp then
                    if wkspc.FFA.Value then 
                        if v.Character then
                            v.Character.HeadHB.CanCollide = false
                            v.Character.HeadHB.Transparency = 1
                            v.Character.HeadHB.Size = Vector3.new(scaling,scaling,scaling)
        
                            v.Character.HumanoidRootPart.CanCollide = false
                            v.Character.HumanoidRootPart.Transparency = 1
                            v.Character.HumanoidRootPart.Size = Vector3.new(scaling,scaling,scaling)
                        end
                    else
                        if v.Team ~= lp.Team then
                            if v.Character then
                                v.Character.HeadHB.CanCollide = false
                                v.Character.HeadHB.Transparency = 1
                                v.Character.HeadHB.Size = Vector3.new(scaling,scaling,scaling)
            
                                v.Character.HumanoidRootPart.CanCollide = false
                                v.Character.HumanoidRootPart.Transparency = 1
                                v.Character.HumanoidRootPart.Size = Vector3.new(scaling,scaling,scaling)
                            end
                        else
                            v.Character.HeadHB.CanCollide = false
                            v.Character.HeadHB.Transparency = 1
                            v.Character.HeadHB.Size = Vector3.new(1,1,1)
                        end
                    end
                end
            end
        else
            for _,v in next, Players:GetPlayers() do
                if v.Name ~= lp.Name then
                    if v.Character then
                        v.Character.HeadHB.CanCollide = false
                        v.Character.HeadHB.Transparency = 1
                        v.Character.HeadHB.Size = Vector3.new(2,1,1)
        
                        v.Character.HumanoidRootPart.CanCollide = false
                        v.Character.HumanoidRootPart.Transparency = 1
                        v.Character.HumanoidRootPart.Size = Vector3.new(2,2,1)
                    end
                end
            end
        end
    end)
end

local espl = Mains:NewSection("Esp")

espl:Toggle("Enable ESP", function(bool)
    espen = bool
end)

espl:Toggle("Nametag ESP", function(bool)
    nametagss = bool
end)

espl:Toggle("Distance ESP", function(bool)
    diesp = bool
end)

espl:Toggle("TeamCheck", function(bool)
    esptc = bool
end)

function selp(player)
    if player.Name ~= lp.Name then
    	local bbg = Instance.new("BillboardGui",game.CoreGui)
    	bbg.Name = player.Name .. " n"
    	bbg.AlwaysOnTop = true
    	bbg.Enabled = true
    	bbg.Size = UDim2.new(1,0,1,0)
    	bbg.StudsOffset = Vector3.new(0,2,0)
    	local tlabel = Instance.new("TextLabel",bbg)
    	tlabel.BackgroundTransparency = 1
    	tlabel.Size = UDim2.new(1,0,1,0)
    	tlabel.Text = player.Name
    	tlabel.TextColor3 = Color3.new(255,255,255)
	end 
end

if game.PlaceId == 4913331862 or game.PlaceId == 4953295718 or game.PlaceId == 4913334858 or game.PlaceId == 5669837502 then
    espl:Toggle("Zombie ESP", function(bool)
        zomesp = bool
    end)
    function eszom(player)
        local sb = Instance.new("BoxHandleAdornment", player)
        sb.Adornee = player
        sb.Size = Vector3.new(2,2,2)
        sb.ZIndex = 1
        sb.AlwaysOnTop = true
        sb.Transparency = 1
        sb.Color3 = Color3.new(255,0,0)
    end
    for _,z in next, workspace.ClientZambies:GetChildren() do
        if model and model:FindFirstChild("Head") then
            eszom(model.Head)
        end
    end
    workspace.ClientZambies.ChildAdded:Connect(function(model)
        if model and model:FindFirstChild("Head") then
            eszom(model.Head)
        end
    end)
end

for _,z in next, Players:GetPlayers() do
    selp(z)
end

Players.PlayerAdded:Connect(function(plra)
    selp(plra)
end)

Players.PlayerRemoving:Connect(function(plrr)
    for _,z in next, game.CoreGui:GetChildren() do
        if z:IsA'BillboardGui' then
            if z.Name == plrr.Name == " n" then
                z:Destroy()
            end
        end
    end
end)

rservice.RenderStepped:Connect(function()
    pcall(function()
        if cfov then
            cam.FieldOfView = tonumber(fieldofviewnum)
        end
        if game.PlaceId == 4913331862 or game.PlaceId == 4953295718 or game.PlaceId == 4913334858 or game.PlaceId == 5669837502 then
            for _,z in next, workspace.ClientZambies:GetChildren() do
                if z and z:FindFirstChild("Head") then
                    if hexpnder then
                        z:FindFirstChild("Head").Size = Vector3.new(hexpnderscale,hexpnderscale,hexpnderscale)
                        z:FindFirstChild("Head").CanCollide = false
                        z:FindFirstChild("Head").Transparency = 0.9
                    end
                    if espen then
                        if zomesp then
                            z:FindFirstChild("Head"):FindFirstChildOfClass("BoxHandleAdornment").Transparency = 0.5
                        else
                            z:FindFirstChild("Head"):FindFirstChildOfClass("BoxHandleAdornment").Transparency = 1
                        end
                    end
                end
            end
        end
        for _,z in next, Players:GetPlayers() do
            for _,v in next, game.CoreGui:GetChildren() do
                if v:IsA'BillboardGui' or v:IsA'BoxHandleAdornment' then
                    if espen then
                        if esptc then
                            if z.Character and z.Character.HumanoidRootPart and z.Character.Head and z.Team ~= lp.Team then
                                if v.Name == z.Name .. " n" then
                                    if nametagss then
                                        v.Adornee = z.Character.Head
                                        if diesp then
                                            v.TextLabel.Text = z.Name .. " | " .. math.floor(game.Players.LocalPlayer:DistanceFromCharacter(z.Character.Head.Position))
                                        else
                                            v.TextLabel.Text = z.Name
                                        end
                                    else
                                        v.Adornee = ptas
                                    end
                                end
                            elseif z.Team == lp.Team then
                                if v.Name == z.Name .. " n" then
                                    v.Adornee = ptas
                                end
                            end
                        else
                            if z.Character and z.Character.HumanoidRootPart and z.Character.Head then
                                if v.Name == z.Name .. " n" then
                                    if nametagss then
                                        v.Adornee = z.Character.Head
                                        if diesp then
                                            v.TextLabel.Text = z.Name .. " | " .. math.floor(game.Players.LocalPlayer:DistanceFromCharacter(z.Character.Head.Position))
                                        else
                                            v.TextLabel.Text = z.Name
                                        end
                                    else
                                        v.Adornee = ptas
                                    end
                                end
                            end
                        end
                    else
                        v.Adornee = ptas
                    end
                end
            end
        end
    end)
end)
