_G.autoButton = true; -- auto buys tycoon buttons
_G.autoColl = true; -- auto collects your money
_G.autoRebirth = true; -- auto rebirths when possible

-- calls
local pRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
local lPlayer = game.Players.LocalPlayer

-- auto buy buttons
spawn(function()
    if _G.autoButton then
        autoBuy = true
        while autoBuy == true do
            for i, v in pairs(game:GetService("Workspace").Tycoons[lPlayer.Team.Name].ButtonsFolder:GetDescendants()) do
                if v:IsA("TouchTransmitter") then
                    firetouchinterest(pRoot, v.Parent, 0)
                    firetouchinterest(pRoot, v.Parent, 1)
                end
            end
            wait()
        end
    else
        autoBuy = false
    end
end)

-- auto collect money
spawn(function()
    if _G.autoColl then
        autoCollect = true
        while autoCollect == true do
            for i, v in pairs(game:GetService("Workspace").Tycoons[lPlayer.Team.Name].StarterParts.Collector:GetDescendants()) do
            if v:IsA("TouchTransmitter") then
                firetouchinterest(pRoot, v.Parent, 0)
                wait()
                firetouchinterest(pRoot, v.Parent, 1)
            end
        end
            wait()
        end
    else 
        autoCollect = false
    end
end)

-- auto rebirth
spawn(function()
    while _G.autoRebirth and wait(0.1) do
        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(workspace.Tycoons[lPlayer.Team.Name])
    end
end)

-- p2w buttons check
spawn(function()
    while wait() do
        for i, v in pairs(game:GetService("Workspace").Tycoons[lPlayer.Team.Name].ButtonsFolder:GetDescendants()) do
            if v.Name == "Gamepass" then
                local p2w = v.Parent
                p2w:Destroy()
            end
        end
    end
end)

-- p2w gui check
spawn(function()
    game:GetService("Players").LocalPlayer.PlayerGui.MainGui.LeftMenu:Destroy()
end)

-- anti afk
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    print("Prevented Kick!")
end)
