while getgenv().AutoCollect and task.wait(getgenv().Cooldown) do
    for i, v in pairs(game:GetService("Workspace").Chips:GetDescendants()) do
        if v:IsA("TouchTransmitter") and v.Parent.Name == "Chip" then
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
        end
    end
end
