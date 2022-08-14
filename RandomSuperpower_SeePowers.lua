-- click player to see their power
local function ClickedPlayer(player)
   local plrPower = game:GetService("Players")[player.Name].power.Value
   game.StarterGui:SetCore("SendNotification",{Title = player.Name.."'s Superpower",Text = plrPower})
end

local players = game:GetService("Players")
local uis = game:GetService("UserInputService")
local plr = players.LocalPlayer
local mouse = plr:GetMouse()

local function IsPlayer(obj)
  local p
  for _,v in pairs(players:GetPlayers()) do
      if v.Character and obj:IsDescendantOf(v.Character) then
          p = v
      end
  end
  return p
end

uis.InputBegan:Connect(function(i)
 if i.UserInputType == Enum.UserInputType.MouseButton1 and mouse.Target then
     local player = IsPlayer(mouse.Target)
     if player then
         ClickedPlayer(player)
     end
 end
end)
