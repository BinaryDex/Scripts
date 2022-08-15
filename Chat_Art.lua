local prefix = "."

local letters = {
    ["a"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛⬛⬛⬛⬛",
    },
    ["b"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛⬛⬛",
    },
    ["c"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛⬛⬛",
    },
    ["d"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛⬛⬛",
    },
    ["e"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛⬛⬛",
    },
    ["f"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴⬛⬛⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["g"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["h"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["i"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛🔴⬛⬛",
        "⬛⬛🔴⬛⬛",
        "⬛⬛🔴⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["j"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛🔴⬛",
        "⬛⬛⬛🔴⬛",
        "⬛⬛⬛🔴⬛",
        "⬛🔴🔴⬛⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["k"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴⬛⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["l"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["m"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["n"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["o"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["p"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴⬛⬛⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["q"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛🔴⬛",
        "⬛⬛⬛⬛⬛",
    },
    ["r"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴🔴⬛⬛",
        "⬛🔴⬛🔴⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["s"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛⬛⬛",
        "⬛⬛🔴⬛⬛",
        "⬛⬛⬛🔴⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["t"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛🔴⬛⬛",
        "⬛⬛🔴⬛⬛",
        "⬛⬛🔴⬛⬛",
        "⬛⬛🔴⬛⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["u"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["v"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛⬛🔴⬛⬛",
        "⬛⬛⬛⬛⬛", 
    },
    ["w"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴🔴🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛⬛⬛⬛⬛",
        "⬛⬛⬛⬛⬛",
    },
    ["x"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛⬛🔴⬛⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛⬛⬛⬛⬛",
    },
    ["y"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴⬛🔴⬛",
        "⬛🔴⬛🔴⬛",
        "⬛⬛🔴⬛⬛",
        "⬛⬛🔴⬛⬛",
        "⬛⬛🔴⬛⬛",
        "⬛⬛⬛⬛⬛",
    },
    ["z"] = {
        "⬛⬛⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛🔴⬛",
        "⬛⬛🔴⬛⬛",
        "⬛🔴⬛⬛⬛",
        "⬛🔴🔴🔴⬛",
        "⬛⬛⬛⬛⬛",
    },
    [" "] = {
        "⬛⬛⬛⬛⬛",
        "⬛⬛⬛⬛⬛",
        "⬛⬛⬛⬛⬛",
        "⬛⬛⬛⬛⬛",
        "⬛⬛⬛⬛⬛",
        "⬛⬛⬛⬛⬛",
        "⬛⬛⬛⬛⬛",
    }
}


local gmt = getrawmetatable(game)
setreadonly(gmt, false)
local oldNameCall = gmt.__namecall

game.StarterGui:SetCore("SendNotification", {
    Title = 'Chat Art Loaded!',
    Text = 'Send Chat Art with '..prefix..'MESSAGEH.\nIt does not support special characters.',
    Icon = '',
    Duration = 5,
})

DexHub:Notification("DexHub ☕", "Send Chat Art with "..prefix.."MESSAGE.\nIt does not support special characters like { ] - + etc.")
local sound = Instance.new("Sound", game.Workspace)
sound.SoundId = "rbxassetid://9128519965"
sound:Play()

gmt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(self) == "SayMessageRequest" and tostring(getnamecallmethod()) == "FireServer" then
        local msg = args[1]
        if string.sub(msg,1,string.len(prefix)) == prefix then
            local message = string.sub(msg,string.len(prefix)+1)
            local final = {"","","","","","",""}
            for i = 1, #message do
                local l = message:sub(i,i)
                for x, line in pairs(letters[string.lower(l)]) do
                    final[x] = final[x] .. line
                end
            end
            for _, v in pairs(final) do
                game:GetService("ReplicatedStorage")["DefaultChatSystemChatEvents"].SayMessageRequest:FireServer(v, "All")
            end
            return nil
        end
    end
    return oldNameCall(self, ...)
end)
