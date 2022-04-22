local lovelib = loadstring(game:HttpGet("https://raw.githubusercontent.com/synolope/lovelib/main/lovelibbetav3.lua",true))()
local gui = lovelib:new()

local Farming = gui:newpage("Farming")
Farming:addlabel("Farming")

local inf = nil
Farming:addcheckbox("Infinite Cash",false,function(b)
    if b then
        getgenv().autofarm = true
while autofarm == true do

local args = {
    [1] = {
        ["Total"] = math.huge,
        ["Bruises"] = math.huge,
        ["Fractures"] = math.huge,
        ["Speed"] = math.huge,
        ["TestingNewInjury"] = math.huge,
        ["Sprains"] = math.huge,
        ["Breaks"] = math.huge
    }
}

game:GetService("ReplicatedStorage").Remotes.Player_NewRun:FireServer(unpack(args))

wait()
end
end
end)

local Upgrades = gui:newpage("Upgrades")
Upgrades:addlabel("Upgrades")

local breaks = nil
Upgrades:addcheckbox("Breaks",false,function(b)
    if breaks then breaks:Disconnect() breaks = nil end
    if b then
        while wait(0) do
        game.ReplicatedStorage.Remotes.Player_UpgradeLevel:FireServer("Breaks")
        end
    end
end)

local Fractures = nil
Upgrades:addcheckbox("Fractures",false,function(b)
    if Fractures then Fractures:Disconnect() Fractures = nil end
    if b then
        while wait(0) do
        game.ReplicatedStorage.Remotes.Player_UpgradeLevel:FireServer("Fractures")
        end
    end
end)

local Sprains = nil
Upgrades:addcheckbox("Sprains",false,function(b)
    if Sprains then Sprains:Disconnect() Sprains = nil end
    if b then
        while wait(0) do
        game.ReplicatedStorage.Remotes.Player_UpgradeLevel:FireServer("Sprains")
        end
    end
end)

local Bruises = nil
Upgrades:addcheckbox("Bruises",false,function(b)
    if Bruises then Bruises:Disconnect() Bruises = nil end
    if b then
        while wait(0) do
        game.ReplicatedStorage.Remotes.Player_UpgradeLevel:FireServer("Bruises")
        end
    end
end)

local Speed = nil
Upgrades:addcheckbox("Speed",false,function(b)
    if Speed then Speed:Disconnect() Speed = nil end
    if b then
        while wait(0) do
        game.ReplicatedStorage.Remotes.Player_UpgradeLevel:FireServer("Speed")
        end
    end
end)


local Powerup = nil
Upgrades:addcheckbox("Powerup",false,function(b)
    if Powerup then Powerup:Disconnect() Powerup = nil end
    if b then
        while wait(0) do
        game.ReplicatedStorage.Remotes.Player_UpgradeLevel:FireServer("Powerup")
        end
    end
end)


local Credits = gui:newpage("Credits")
Credits:addlabel("Credits")

Credits:addlabel("ewo#1337")


Farming:select()
