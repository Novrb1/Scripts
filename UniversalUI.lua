local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/polar"))()

local Players = game:GetService("Players")
local lp = Players.LocalPlayer
local mouse = lp:GetMouse()
local rservice = game:GetService("RunService")
local cam = workspace.CurrentCamera
local ts = game:GetService("TweenService")

local enabled = false
local teamcheck = false
local autos = false

local espen = false
local esptc = false
local diesp = false
local zomesp = false
local nametagss = false
local headesp = false
local torsoesp = false

local tf = false
local mkey = "q"

local uk = true
local um = false

local m1 = false
local m2 = false

local stam = false
local aparse = false
local fbirhgt = false
local infmon = false
local hexpnder = false
local autogunmods = false
local hitboxexa = false
local scaling = 2

local ptas = Instance.new("Part", workspace)
ptas.Anchored = true
ptas.CanCollide = false
ptas.Size = Vector3.new(1,1,1)
ptas.CFrame = CFrame.new(999999999,0,999999999)

local yee = library:CreateWindow("General")

yee:Section("Local")

if game.PlaceId == 455366377 or game.PlaceId == 4669040 then
    yee:Toggle("Infinite Stamina",function(a)
        stam = a
    end)
end

if game.PlaceId == 301549746 then
    yee:Toggle("Infinite Money",function(a)
        infmon = a
    end)
end

function infstam()
    wait(0.5)
    if game.PlaceId == 455366377 or game.PlaceId == 4669040 then
        if game.PlaceId == 455366377 then
            lp.Character.Stamina.Changed:Connect(function()
                if stam then
                    lp.Character.Stamina.Value = 100
                end
            end)
        elseif game.PlaceId == 4669040 then
            lp.Backpack.ServerTraits.Stann.Changed:Connect(function()
                if stam then
                    lp.Backpack.ServerTraits.Stann.Value = 100
                end
            end)
        end
    end
end
infstam()

lp.CharacterAdded:Connect(function()
    if game.PlaceId == 4669040 or game.PlaceId == 455366377 then
        infstam()
    end
    if game.PlaceId == 4805760032 then
        func123()
    end
end)
if game.PlaceId == 4913331862 or game.PlaceId == 4953295718 or game.PlaceId == 4913334858 or game.PlaceId == 5669837502 then
    yee:Toggle("Hitbox", function(a)
        hexpnder = a
    end)
    yee:Box("GunGiver", function(object, focus)
        if focus then
            if object.Text and object.Text ~= nil and object.Text ~= " " then
                for _,v in pairs(game:GetService("ReplicatedStorage").Weapons:GetChildren()) do
                    if v.Name:lower():sub(1,#object.Text) == object.Text:lower() then
                        object.Text = v.GunName.Value
                    end
                end
                lp.PlayerScripts.Shockwave.net:Fire("TakeIt", game:GetService("ReplicatedStorage").Weapons[object.Text].GunName.Value)
            end
        end
    end)
end

if game.PlaceId == 286090429 then
    yee:Toggle("Hitbox",function(a)
        hitboxexa = a
    end)
    yee:Box("Scale (default 2)", function(object, focus)
        if focus then
            if object.Text and object.Text ~= nil and object.Text ~= " " and tonumber(object.Text) and tonumber(object.Text) >= 1 and tonumber(object.Text) <= 10 then
                scaling = tonumber(object.Text)
            else
                object.Text = "2"
                scaling = 2
            end
        end
    end)
    yee:Toggle("AutoPickup",function(a)
        aparse = a
    end)
    workspace.Debris.ChildAdded:Connect(function(instance)
        if aparse then
            firetouchinterest(lp.Character.Head, instance, 1)
            wait(0.1)
            firetouchinterest(lp.Character.Head, instance, 0)
        end
    end)
    rservice.Stepped:Connect(function()
        if hitboxexa then
            for _,v in next, game:GetService("Players"):GetPlayers() do
                if v.Name ~= lp.Name then
                    if v.Team ~= lp.Team then
                        if v.Character then
                            v.Character.HeadHB.CanCollide = false
                            v.Character.HeadHB.Transparency = 1
                            v.Character.HeadHB.Size = Vector3.new(scaling,scaling,scaling)
                        end
                    else
                        v.Character.HeadHB.CanCollide = false
                        v.Character.HeadHB.Transparency = 1
                        v.Character.HeadHB.Size = Vector3.new(1,1,1)
                    end
                    if scaling > 3.5 then
                        v.Character.HumanoidRootPart.CanCollide = false
                        v.Character.HumanoidRootPart.Transparency = 1
                        v.Character.HumanoidRootPart.Size = Vector3.new(scaling,scaling,scaling)
                    end
                end
            end
        else
            for _,v in next, game:GetService("Players"):GetPlayers() do
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

if game.PlaceId == 4805760032 then
    yee:Toggle("AutoMods",function(a)
        autogunmods = a
    end)
    yee:Button("Hostile",function()
        local pt1 = Instance.new("Part", workspace)
        pt1.Anchored = true
        pt1.CanCollide = false
        pt1.Transparency = 1
        pt1.CFrame = CFrame.new(-175.52597, 7.73088503, -175.973907)
        lp.Character.HumanoidRootPart.CFrame = pt1.CFrame
        local pt2 = Instance.new("Part", workspace)
        pt2.Anchored = true
        pt2.CanCollide = false
        pt2.Transparency = 1
        pt2.CFrame = CFrame.new(-249.044586, 12.9999199, -190.869034)
        local Position = {CFrame = pt2.CFrame}
        local T = ts:Create(lp.Character.HumanoidRootPart, TweenInfo.new(0.5), Position)
        T:Play()
        wait(1)
        pt1:Destroy()
        pt2:Destroy()
    end)
    function func123()
        lp.Character.ChildAdded:Connect(function(instance)
            if instance:IsA'Tool' and instance:FindFirstChild("ConfigMods") and instance:FindFirstChild("ConfigMods"):FindFirstChild("CConfig") then
                wait(1)
                if autogunmods then
                    local aa = require(instance.ConfigMods.CConfig)
                    aa.Ammo = 9e9
                    aa.StoredAmmo = 9e9
                    aa.CanSelectFire = true
                    aa.Firerate = 0.01
                    aa.CamShakeMin = 0
                    aa.CamShakeMax = 0
                    aa.AimCanShakeMin = 0
                    aa.AimCamShakeMax = 0
                    aa.gunRecoilMin = 0
                    aa.gunRecoilMax = 0
                    aa.AimGunRecoilMin = 0
                    aa.AimGunRecoilMax = 0
                    aa.SideKickMin = 0
                    aa.SideKickMax = 0
                    aa.KickbackMin = 0
                    aa.KickbackMax = 0
                    aa.AimKickbackMax = 0
                    aa.AimKickbackMin = 0
                end
            end
        end)
    end
    func123()
end

yee:Box("Field Of View", function(object, focus)
    if focus then
        if object.Text and object.Text ~= nil and object.Text ~= " " and tonumber(object.Text) and tonumber(object.Text) <= 120 and tonumber(object.Text) >= 10 then
            cam.FieldOfView = tonumber(object.Text)
        else
            object.Text = "70"
            wait(0.1)
            cam.FieldOfView = 70
        end
    end
end)

yee:Toggle("FullBright",function(a)
    fbirhgt = a
    game:GetService("Lighting").GlobalShadows = not a
    if a then
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

yee:Toggle("Lighting",function(a)
    for _, g in next, game:GetService("Lighting"):GetChildren() do
        if g:IsA("BlurEffect") or g:IsA("SunRaysEffect") or g:IsA("ColorCorrectionEffect") or g:IsA("BloomEffect") or g:IsA("DepthOfFieldEffect") then
           g.Enabled = not a
        end
    end
end)

local ok = library:CreateWindow("Aim Assist")

ok:Section("Triggerbot")

ok:Toggle("Enable",function(a)
    enabled = a
end)

ok:Toggle("Team Check",function(a)
    teamcheck = a
end)

ok:Toggle("Auto Shoot",function(a)
    autos = a
end)

ok:Box("Key Bind", function(object, focus)
    if focus then
        if object.Text and object.Text ~= nil and object.Text ~= " " then
            if object.Text == "m1" or object.Text == "m2" then
                uk = false
                um = true
                if object.Text == "m1" then
                    m1 = true
                    m2 = false
                elseif object.Text == "m2" then
                    m1 = false
                    m2 = true
                end
            elseif object.Text ~= "m1" and object.Text ~= "m2" and #object.Text <= 1 then
                mkey = object.Text
                uk = true
                um = false
            end
        end
    end
end)

local wat = library:CreateWindow("ESP")

wat:Section("Main")

wat:Toggle("Enable",function(a)
    espen = a
end)

wat:Toggle("Names",function(a)
    nametagss = a
end)

wat:Toggle("Head",function(a)
    headesp = a
end)

wat:Toggle("Torso",function(a)
    torsoesp = a
end)

wat:Toggle("Distance", function(a)
    diesp = a
end)

wat:Toggle("Team Check",function(a)
    esptc = a
end)

if game.PlaceId == 4913331862 or game.PlaceId == 4953295718 or game.PlaceId == 4913334858 or game.PlaceId == 5669837502 then
    wat:Toggle("Zombie ESP", function(a)
        zomesp = a
    end)
    function asd(player)
        local sb = Instance.new("BoxHandleAdornment", player)
        sb.Adornee = player
        sb.Size = Vector3.new(2,2,0.5)
        sb.ZIndex = 1
        sb.AlwaysOnTop = true
        sb.Transparency = 1
    end
    workspace.ClientZambies.ChildAdded:Connect(function(model)
        if model and model:FindFirstChild("Head") then
            asd(model.Head)
        end
    end)
end

mouse.KeyDown:Connect(function(key)
    if uk then
    	if key == mkey then
    		tf = true
    	end
	end
end)
mouse.KeyUp:Connect(function(key)
    if uk then
    	if key == mkey then
    		tf = false
    	end
    end
end)

mouse.Button1Down:Connect(function()
    if um and m1 then
        tf = true
    end
end)
mouse.Button1Up:Connect(function()
    if um and m1 then
        tf = false
    end
end)

mouse.Button2Down:Connect(function()
    if um and m2 then
        tf = true
    end
end)
mouse.Button2Up:Connect(function()
    if um and m2 then
        tf = false
    end
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
    	local head = Instance.new("BoxHandleAdornment", game.CoreGui)
        head.Name = player.Name .. " h"
        head.Size = Vector3.new(1,1,1)
        head.ZIndex = 1
        head.AlwaysOnTop = true
        head.Transparency = 0
        head.Color3 = Color3.new(0,0,255)
        local hrp = Instance.new("BoxHandleAdornment", game.CoreGui)
        hrp.Name = player.Name .. " t"
        hrp.CFrame = CFrame.new(0,-1.5,0)
        hrp.Size = Vector3.new(2,2,1)
        hrp.ZIndex = 1
        hrp.AlwaysOnTop = true
        hrp.Transparency = 0
        hrp.Color3 = Color3.new(0,0,255)
	end 
end
for _,z in pairs(Players:GetPlayers()) do
    selp(z)
end

Players.PlayerAdded:Connect(function(plra)
    selp(plra)
end)

Players.PlayerRemoving:Connect(function(plrr)
    for _,z in pairs(game.CoreGui:GetChildren()) do
        if z:IsA'BillboardGui' then
            if z.Name == plrr.Name .. " h" or z.Name == plrr.Name .. " t" or z.Name == plrr.Name == " n" then
                z:Destroy()
            end
        end
    end
end)

rservice.Stepped:Connect(function()
	if enabled then
		if mouse.Target and Players:FindFirstChild(mouse.Target.Parent.Name) then
			local HitPlayer = Players:FindFirstChild(mouse.Target.Parent.Name)
			if HitPlayer.Team ~= lp.Team or not teamcheck then
				if autos == false and tf == true then
					mouse1press(); wait(); mouse1release()
				elseif autos == true then
					mouse1press(); wait(); mouse1release()
				end
			end
		end
	end
end)

rservice.RenderStepped:Connect(function()
    pcall(function()
        if game.PlaceId == 301549746 and infmon then
            lp:FindFirstChild("Cash").Value = 9e9
        end
        if game.PlaceId == 4913331862 or game.PlaceId == 4953295718 or game.PlaceId == 4913334858 or game.PlaceId == 5669837502 then
            if hexpnder then
                for _,z in next, workspace.ClientZambies:GetChildren() do
                    if z and z:FindFirstChild("Head") then
                        z:FindFirstChild("Head").Size = Vector3.new(10,10,10)
                        z:FindFirstChild("Head").CanCollide = false
                    end
                end
            end
            for _,z in next, workspace.ClientZambies:GetChildren() do
                if z and z:FindFirstChild("Head") then
                    if zomesp then
                        z:FindFirstChild("Head"):FindFirstChildOfClass("BoxHandleAdornment").Transparency = 0.5
                    else
                        z:FindFirstChild("Head"):FindFirstChildOfClass("BoxHandleAdornment").Transparency = 1
                    end
                end
            end
        end
        for _,z in pairs(Players:GetPlayers()) do
            for _,v in pairs(game.CoreGui:GetChildren()) do
                if lp then
                    if v:IsA'BillboardGui' or v:IsA'BoxHandleAdornment' then
                        if espen then
                            if esptc then
                                if z.Character and z.Character.HumanoidRootPart and z.Character.Head and z.Team ~= lp.Team then
                                    if v.Name == z.Name .. " n" then
                                        if nametagss then
                                            v.Adornee = z.Character.Head
                                            if diesp then
                                                local cabe = game.Players.LocalPlayer:DistanceFromCharacter(z.Character.Head.Position)
                                                cabe = math.floor(cabe)
                                                v.TextLabel.Text = z.Name .. " | " .. tonumber(cabe)
                                            else
                                                v.TextLabel.Text = z.Name
                                            end
                                        else
                                            v.Adornee = ptas
                                        end
                                    end
                                    if v.Name == z.Name .." h" then
                                        if headesp then
                                            v.Adornee = z.Character.Head
                                        else
                                            v.Adornee = ptas
                                        end
                                    end
                                    if v.Name == z.Name .." t" then
                                        if torsoesp then
                                            v.Adornee = z.Character.Head
                                        else
                                            v.Adornee = ptas
                                        end
                                    end
                                elseif z.Team == lp.Team then
                                    if v.Name == z.Name .. " n" then
                                        v.Adornee = ptas
                                    end
                                    if v.Name == z.Name .." h" then
                                        v.Adornee = ptas
                                    end
                                    if v.Name == z.Name .." t" then
                                        v.Adornee = ptas
                                    end
                                end
                            else
                                if z.Character and z.Character.HumanoidRootPart and z.Character.Head then
                                    if v.Name == z.Name .." n" then
                                        if nametagss then
                                            v.Adornee = z.Character.Head
                                            if diesp then
                                                local cabe = game.Players.LocalPlayer:DistanceFromCharacter(z.Character.Head.Position)
                                                cabe = math.floor(cabe)
                                                v.TextLabel.Text = z.Name .. " | " .. tonumber(cabe)
                                            else
                                                v.TextLabel.Text = z.Name
                                            end
                                        else
                                            v.Adornee = ptas
                                        end
                                    end
                                    if v.Name == z.Name .." h" then
                                        if headesp then
                                            v.Adornee = z.Character.Head
                                        else
                                            v.Adornee = ptas
                                        end
                                    end
                                    if v.Name == z.Name .." t" then
                                        if torsoesp then
                                            v.Adornee = z.Character.Head
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
        end
    end)
end)
