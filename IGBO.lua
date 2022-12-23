--[[
 _______                      
|       \                     
| $$$$$$$\  ______   __    __ 
| $$  | $$ /      \ |  \  /  \
| $$  | $$|  $$$$$$\ \$$\/  $$
| $$  | $$| $$    $$  >$$  $$ 
| $$__/ $$| $$$$$$$$ /  $$$$\ 
| $$    $$ \$$     \|  $$ \$$\
 \$$$$$$$   \$$$$$$$ \$$   \$$
                                                     
MADE BY DEX#8822 @ DISCORD!
IF YOU STEAL THIS GIVE CREDIT!
--]]

-- load library
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

-- create window
local Window = Rayfield:CreateWindow({
    Name = "Impossible Glass Bridge Obby",
    LoadingTitle = "Impossible Glass Bridge Obby",
    LoadingSubtitle = "by Dex",
    ConfigurationSaving = {
        Enabled = false,
        FolderName = nil,
        FileName = "IGBO"
    },
    Discord = {
        Enabled = false,
        Invite = "dexhub",
        RememberJoins = true
    },
    KeySystem = false,
    KeySettings = {
        Title = "DexHub",
        Subtitle = "Key System",
        Note = "Join the discord (discord.gg/dexhub)",
        FileName = "DexHubKey",
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = "DISABLED"
    }
})

local lStat = game.Players.LocalPlayer.leaderstats

-- create tabs
local Main = Window:CreateTab("Main", 9792634811)
local Credits = Window:CreateTab("Credits", 9792634075)

-- main section
local MS = Main:CreateSection("Main Features")

-- see correct tiles
local SCT = Main:CreateToggle({
    Name = "See Correct Tiles",
    CurrentValue = false,
    Flag = "SCTF",
    Callback = function(bool)
        local glassBridge = game.workspace['Glass Bridge'].GlassPane:GetChildren()
        if bool then
          for i=1,#glassBridge do -- thank you guy i forgot the name of
              if glassBridge[i]['1'].CanCollide == true then
                  glassBridge[i]['1'].Transparency = 0
              elseif glassBridge[i]['2'].CanCollide == true then
                  glassBridge[i]['2'].Transparency = 0
              end
          end
        else
          for i, v in pairs(game:GetService("Workspace")["Glass Bridge"].GlassPane:GetDescendants()) do
              if v:IsA("Part") then
                  v.Transparency = 0.7
              end
          end
        end
    end,
})

-- see correct tiles
local RGS = Main:CreateToggle({
    Name = "Remove Gamepass Stuff",
    CurrentValue = false,
    Flag = "RGSF",
    Callback = function(bool)
        if bool then
            game:GetService("Workspace").Pads.Parent = game.Lighting -- remove gamepass pads
            game:GetService("Workspace")["Become Squid Front Man"].Parent = game.Lighting -- remove become front man gamepass
            game:GetService("Workspace")["Become Squid Game Guard"].Parent = game.Lighting -- remove become guard gamepass
            game:GetService("Players").LocalPlayer.PlayerGui.Gamepass.Enabled = false -- remove gamepass gui   
        else
            game:GetService("Lighting").Pads.Parent = game.workspace -- add gamepass pads
            game:GetService("Lighting")["Become Squid Front Man"].Parent = game.workspace -- add become front man gamepass
            game:GetService("Lighting")["Become Squid Game Guard"].Parent = game.workspace -- add become guard gamepass
            game:GetService("Players").LocalPlayer.PlayerGui.Gamepass.Enabled = true -- add gamepass gui
        end
    end,
})

-- auto finish obby
local AFO = Main:CreateToggle({
    Name = "Auto Finish Obby",
    CurrentValue = false,
    Flag = "AFOF",
    Callback = function(bool)
        getgenv().autoObby = bool;
        while autoObby and task.wait(3.1) do
            local Finish = game:GetService("Workspace")["Glass Bridge"].Finish:FindFirstChild("TouchInterest", true).Parent
            local pRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
            firetouchinterest(pRoot, Finish, 0)
            firetouchinterest(pRoot, Finish, 1)
        end
    end,
})

-- finish obby
local FO = Main:CreateButton({
    Name = "Finish Obby",
    Callback = function()
        local Finish = game:GetService("Workspace")["Glass Bridge"].Finish:FindFirstChild("TouchInterest", true).Parent
        local pRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
        firetouchinterest(pRoot, Finish, 0)
        firetouchinterest(pRoot, Finish, 1)
    end,
})

-- stats
--local PS = Main:CreateSection("Player Stats")
--local PC = Main:CreateLabel("Cash: nil")
--local AC = Main:CreateLabel("nil")
--
--task.spawn(function()
--    while task.wait() do
--        PC:Set("Cash: "..lStat.Cash.Value)
--    end
--end)

-- credits
local CS = Credits:CreateSection("Credits")
local CL = Credits:CreateLabel("Script by Dex#8822")
