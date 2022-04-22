local lovelib = loadstring(game:HttpGet("https://raw.githubusercontent.com/synolope/lovelib/main/lovelibbetav3.lua",true))()
local gui = lovelib:new()

local Farming = gui:newpage("Farming")
Farming:addlabel("Farming")

local tap = nil

Farming:addcheckbox("Auto Tap",false,function(b)
    if tap then tap:Disconnect() tap = nil end
    if b then
        while wait(.1) do
        game:GetService("ReplicatedStorage").Remotes.Tap:FireServer()
        end
    end
end)

local rebirth = nil
Farming:addcheckbox("Auto Rebirth",false,function(b)
    if rebirth then rebirth:Disconnect() rebirth = nil end
    if b then
        while wait(.1) do
            game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(1)
        end
    end
end)


local Extra = gui:newpage("Extras")
Extra:addlabel("Extra")

local teleport = nil
Extra:addcheckbox("Tween Teleport Ctrl+Click",false,function(b)
    if b then
        local speed = 80 
local bodyvelocityenabled = false 

local Imput = game:GetService("UserInputService")
local Plr = game.Players.LocalPlayer
local Mouse = Plr:GetMouse()

function To(position)
local Chr = Plr.Character
if Chr ~= nil then
local ts = game:GetService("TweenService")
local char = game:GetService("Players").LocalPlayer.Character
local hm = char.HumanoidRootPart
local dist = (hm.Position - Mouse.Hit.p).magnitude
local tweenspeed = dist/tonumber(speed)
local ti = TweenInfo.new(tonumber(tweenspeed), Enum.EasingStyle.Linear)
local tp = {CFrame = CFrame.new(position)}
ts:Create(hm, ti, tp):Play()
if bodyvelocityenabled == true then
local bv = Instance.new("BodyVelocity")
bv.Parent = hm
bv.MaxForce = Vector3.new(100000,100000,100000)
bv.Velocity = Vector3.new(0,0,0)
wait(tonumber(tweenspeed))
bv:Destroy()
    end
  end
end

Imput.InputBegan:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 and Imput:IsKeyDown(Enum.KeyCode.LeftControl) then
       To(Mouse.Hit.p)
      end
    end)
  end
end)

local speed = nil

Extra:addcheckbox("Walkspeed",false,function(b)
    if b then
        getgenv().WalkSpeedValue = 100; --set your desired walkspeed here
local Player = game:service'Players'.LocalPlayer;
Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
end)
Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
    end
end)

local jump = nil

Extra:addcheckbox("Infinite Jump",false,function(b)
    if b then
        local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';

_G.JumpHeight = 50;

function Action(Object, Function) if Object ~= nil then Function(Object); end end

UIS.InputBegan:connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)
end
end)


local Credits = gui:newpage("Credits")
Credits:addlabel("Credits")

Credits:addlabel("ewo#1337")


Farming:select()
