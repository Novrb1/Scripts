local lp = game.Players.LocalPlayer
local plrs = game.Players:GetPlayers()
lp.Chatted:Connect(function(msg)
local args = msg:split(" ")
if args[1]:sub(1,4) == "info" then
    for _,v in pairs(game.Players:GetPlayers()) do
        if v.Name:lower():sub(1,#args[2]) == args[2]:lower() then
            local msg = game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest
            msg:FireServer("NAME: " .. v.Name .. " - Age: ss" .. v.AccountAge .. " Days","All")
            local url = "https://www.roblox.com/users/"
            syn_clipboard_set(url .. v.UserId)
            for _,z in pairs(plrs) do
            if z:IsFriendsWith(v.UserId) then
                msg:FireServer(z.Name .. " is friends/playing with " .. v.Name,"All")
                msg:FireServer("NAME: " .. z.Name .. " - Age: ss" .. z.AccountAge .. " Days","All")
                end
                end
            end
        end
    end
end)
