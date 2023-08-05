while task.wait() and getgenv().autoUGC do
    for _, v in pairs (game:GetService("Workspace")["Game Systems"]["UGC Crates"]:GetDescendants()) do
        if v:IsA("ProximityPrompt") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
            wait(0.3)
            fireproximityprompt(v)
            wait(2)
        end
    end    
end

-- if u see this have a good day :)
