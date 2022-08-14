--[[ 
    MADE BY DEX <3
    > Dex#8822
    > SaturnDex @ V3rm
--]]

-- SETTINGS --
_G.autoClick = false -- auto clicks pet
_G.autoPickup = false -- auto picks up money
_G.autoFlower = false -- auto picks up and plants flowers

_G.autoFeed = false -- auto feeds
autoFeedNum = 5 -- auto feeds if hunger is under 5 (50%)

-- SCRIPT --
local pRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
local lPlayer = game.Players.LocalPlayer
-- stolen from devforum :kull:
local char = lPlayer.Character or lPlayer.CharacterAdded:Wait() -- gets the player's character
local hum = char:FindFirstChildOfClass("Humanoid") -- get the humanoid

local function fireproximityprompt(Obj, Amount, Skip)
    if Obj.ClassName == "ProximityPrompt" then 
        Amount = Amount or 1
        local PromptTime = Obj.HoldDuration
        if Skip then 
            Obj.HoldDuration = 0
        end
        for i = 1, Amount do 
            Obj:InputHoldBegin()
            if not Skip then 
                wait(Obj.HoldDuration)
            end
            Obj:InputHoldEnd()
        end
        Obj.HoldDuration = PromptTime
    else 
        error("userdata<ProximityPrompt> expected")
    end
end

spawn(function()
    while _G.autoClick and wait() do
        fireclickdetector(game:GetService("Workspace").Creature.Tbh.ClickDetector)
    end
end)

spawn(function()
    while _G.autoPickup and wait() do
        for i ,v in pairs(game:GetService("Workspace").Debris:GetDescendants()) do
            if v:IsA("TouchTransmitter") then
                firetouchinterest(pRoot, v.Parent, 0)
                firetouchinterest(pRoot, v.Parent, 1)
            end
        end
    end
end)

spawn(function()
    while _G.autoFeed and wait() do
        if game:GetService("Workspace").Creature.Tbh.Values.Hunger.Value < autoFeedNum then
            game:GetService("ReplicatedStorage").Events.ShopRemote:FireServer("Chip Flakes", false)
            wait(0.5)
            pRoot.CFrame = game:GetService("Workspace").Delivery["Chip Flakes"].CFrame
            wait(0.1)
            pRoot.CFrame = game:GetService("Workspace").Assets.Food.bowl.CFrame
            wait(0.1)
            t = game:GetService("Players").LocalPlayer.Backpack["Chip Flakes"]
            hum:EquipTool(t)
            wait(0.1)
            fireproximityprompt(game:GetService("Workspace").Assets.Food.bowl.Fill,1,true)
            wait(30)
        end
    end
end)

spawn(function()
    while _G.autoFlower and wait() do
        for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v.Name == "Handle" and v.Parent.Name == "Flower" then
                pRoot.CFrame = v.CFrame
                wait(0.5)
                pRoot.CFrame = game:GetService("Workspace").Map.Farm.Flowers.Proximity.CFrame
                wait(0.1)
                tt = game:GetService("Players").LocalPlayer.Backpack["Flower"]
                hum:EquipTool(tt)
                wait(0.1)
                fireproximityprompt(game:GetService("Workspace").Map.Farm.Flowers.Proximity.ProximityPrompt,1,true)
            end
        end
    end
end)
