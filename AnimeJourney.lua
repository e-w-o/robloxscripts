local BlekLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/laderite/bleklib/main/library.lua"))()
local win = BlekLib:Create({
    Name = "Anime Journey",
    StartupSound = {
        Toggle = false,
        SoundID = "rbxassetid://6958727243",
        TimePosition = 1
    }
})

local maintab = win:Tab('Main')
local localtab = win:Tab('Local')
local tptab= win:Tab('Teleports')
local uitab = win:Tab('UI')

maintab:Button('Cooldown Bypass',function(b)
    game:GetService("ReplicatedStorage").SharedModules.CooldownModule:Destroy()
end)

tptab:Button('Uraharas Shop',function(a)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(302.7507629394531, 62.47544479370117, 1636.49365234375)
end)

tptab:Button('SafeZone',function(a)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4.046927452087402, 62.475440979003906, 1739.4732666015625)
end)

localtab:Button('Walkspeed',function(e)
local WalkSpeed = 60
local __ = game.Players.LocalPlayer.Character

if ___ and not _G.___ == true then
    __.Humanoid.WalkSpeed = WalkSpeed
    return
    else
    _ = hookmetamethod(__, "__index", function(self,w)
    if w == "WalkSpeed" then
        return 16
    end
    return _(self,w)
end)
print("SPOOFED")
end

pcall(function()
getgenv().___ = true
end)
end)

uitab:Button('Destroy GUI', function()
    win:Exit()
end)
