local BlekLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/laderite/bleklib/main/library.lua"))()

local win = BlekLib:Create({
    Name = "Kick Off Gui",
    StartupSound = {
        Toggle = false,
        SoundID = "rbxassetid://6958727243",
        TimePosition = 1
    }
})

local maintab = win:Tab('Main')
local localtab = win:Tab('Character')
local credits = win:Tab('Credits')
local uitab = win:Tab('UI')

maintab:Button('TP Ball to Cursor Keybind = C', function()
    
plrr = game.Players.LocalPlayer
mouse = plrr:GetMouse()
local uis = game:GetService("UserInputService")
uis.InputBegan:connect(function(Inp,Pro)
if Pro then return end

if not Pro and	Inp.KeyCode == Enum.KeyCode.C then	
mouse.TargetFilter = game.workspace.SoccerBall
local A_1 = "Kick"
local A_2 = "Normal"
local A_3 = game:GetService("Workspace").SoccerBall
local A_4 = 0
local A_5 = mouse.Hit.p
local A_6 = mouse.Hit.p
local A_7 =  mouse.Hit.p
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3, A_4, A_5, A_6, A_7)
end
end)
end)

maintab:Button('Fling ball Keybind = Z',function(e)
    --Press x , Made by Jacky. BeGonE BALLL

local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(a,b)
if b then return end

if not b and a.KeyCode == Enum.KeyCode.Z then
local begonethot = math.huge

local A_1 = "Kick"
local A_2 = "Trickshot"
local A_3 = game:GetService("Workspace").SoccerBall
local A_4 = begonethot
local A_5 = Vector3.new(begonethot,-begonethot,-begonethot)
local A_6 = Vector3.new(begonethot, -begonethot, -begonethot)
local A_7 = Vector3.new(begonethot, -begonethot, -begonethot)
local Event = game:GetService("ReplicatedStorage").MasterKey
Event:FireServer(A_1, A_2, A_3, A_4, A_5, A_6, A_7)
end
end)
end)

localtab:Button('Walkspeed',function(w)
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



credits:Label('Created by: //ewo#9438')
credits:Label('Discord server: https://discord.gg/cmFdabJ8pA')

uitab:Button('Destroy GUI', function()
    win:Exit()
end)
