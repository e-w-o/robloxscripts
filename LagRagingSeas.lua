--game link https://www.roblox.com/games/7261261021/GHOST-FRUIT-CURSED-BLADE-Raging-Seas

repeat task.wait() until game:IsLoaded()

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

game:GetService("RunService").Heartbeat:Connect(function()
    task.spawn(function()
        for i = 1, 100 do
            LocalPlayer.Backpack.SwimScript.IceWalk.RemoteEvent:FireServer(game.Players.LocalPlayer.Character, 1)
        end
    end)
end)
