-- game link https://v3rmillion.net/showthread.php?tid=1175737

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

game:GetService("ReplicatedStorage").ServerAndClientDataCommunication.Drain:FireServer(-9e9)

LocalPlayer.CharacterAdded:Connect(function()
    game:GetService("ReplicatedStorage").ServerAndClientDataCommunication.Drain:FireServer(-9e9)
end)
