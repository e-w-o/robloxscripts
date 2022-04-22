local lovelib = loadstring(game:HttpGet(game:HttpGet("https://raw.githubusercontent.com/synolope/lovelib/main/mostupdated.txt",true),true))()

local gui = lovelib:new()

local Main = gui:newpage("Main")
Main:addlabel("East Brickton Gui")

local ws = nil
Main:addcheckbox("Shift Walkspeed",false,function(b)
    if b then

local Players = game:service("Players")
local Player = Players.LocalPlayer
local userInput = game:service("UserInputService")
local runService = game:service("RunService")
repeat wait() until Player.Character
local Character = Player.Character
local pHum = Character:WaitForChild("Humanoid")
local humRoot = Character:WaitForChild("HumanoidRootPart")
local Multiplier = 2.0 --adjust this for more or less speed

userInput.InputBegan:connect(function(Key)
if Key.KeyCode == Enum.KeyCode.LeftBracket then
Multiplier = Multiplier + 0.1

wait(0.2)


while userInput:IsKeyDown(Enum.KeyCode.LeftBracket) do

wait()

Multiplier = Multiplier + 0.1
end
end

if Key.KeyCode == Enum.KeyCode.RightBracket then
Multiplier = Multiplier - 0.1

wait(0.2)

while userInput:IsKeyDown(Enum.KeyCode.RightBracket) do

wait()

Multiplier = Multiplier - 0.1
end
end
end)

runService.Stepped:connect(function()
if userInput:IsKeyDown(Enum.KeyCode.LeftShift) then
humRoot.CFrame = humRoot.CFrame + pHum.MoveDirection * Multiplier
end
end)
end
end)


local teleport = nil
Main:addcheckbox("Teleport Ctrl+Click",false,function(b)
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


local silent =  nil
Main:addcheckbox("FOV Silent Aim",false,function(b)
    if b then
        local FOV = Drawing.new("Circle") FOV.Visible = true
_G.FoV = 100
FOV.Color = Color3.fromRGB(88, 88, 88) FOV.Thickness = 2
FOV.NumSides = 10 FOV.Filled = false
local FoV = _G.FoV
local aimbotting = false local plr = game.Players.LocalPlayer; local UIS = game.UserInputService
local readjusting = false local mouse = plr:GetMouse();
local function inlos(p, ...)
return #workspace.CurrentCamera:GetPartsObscuringTarget({p}, {workspace.CurrentCamera, game.Players.LocalPlayer.Character, ...}) == 0 end
FOV.Radius =  FoV
local vClose = 96.69
local hpOverride = 60 
local inset = game:GetService("GuiService"):GetGuiInset()

game:GetService("RunService").RenderStepped:Connect(function()
local min = math.huge 
local lowhp = math.huge
local closest = nil FOV.Position = Vector2.new(mouse.X + inset.X, mouse.Y + inset.Y)
local mHum = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
game.Workspace.CurrentCamera.FieldOfView = 95
if aimbotting == true and readjusting == false and game.Players.LocalPlayer.Character ~=nil and mHum ~= nil then
for _, v in pairs(game.Players:GetPlayers()) do
if v ~=nil and  v ~= plr and workspace.CurrentCamera ~= nil and workspace.CurrentCamera.CameraSubject then
if v.Character and v.TeamColor ~= plr.TeamColor and mHum ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
if v.Character:FindFirstChildOfClass("Humanoid") and not v.Character:FindFirstChildOfClass("ForceField") and v.Character:FindFirstChild("Right Leg")   then
local eHum = v.Character:FindFirstChildOfClass("Humanoid") 
local plrpos, OnScreen = workspace.CurrentCamera:WorldToViewportPoint(v.Character["Right Leg"].Position)
if mHum ~= nil and mHum.Health > 0 and eHum.Health > 0 and v.Character:FindFirstChild("HumanoidRootPart") ~=nil and inlos(v.Character["Right Leg"].Position, v.Character) and OnScreen then
local dis = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
local distance = math.sqrt(math.pow(mouse.X - plrpos.X, 2), math.pow(mouse.Y - plrpos.Y, 2))
local fovdistance = math.sqrt(math.pow(FOV.Position.X - plrpos.X, 2) + math.pow(FOV.Position.Y - plrpos.Y, 2))
if fovdistance <= FOV.Radius and eHum.Health < lowhp then
if distance < min then
min = distance; closest = v; lowhp = eHum.Health
end end  end end end end end

if closest ~= nil and closest.Character ~= nil and game.Players.LocalPlayer.Character~= nil and mHum ~=nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")  then
local hp2_1,OS2 = workspace.CurrentCamera:WorldToViewportPoint(closest.Character.HumanoidRootPart.Position)

if OS2  then 
local hrpc = Vector2.new(hp2_1.X, hp2_1.Y)
mousemoveabs(hrpc.X, hrpc.Y + math.random(-2,7))
end  
end
elseif aimbotting == false then  game:GetService("RunService").RenderStepped:Wait() -- remove this if u wanna make it faster
end
end)
UIS.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton2 then
readjusting = true
end
end)
UIS.InputEnded:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton2 then
readjusting = false
end
end)

UIS.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
aimbotting = true
end
end)

UIS.InputEnded:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
aimbotting = false
end
end)
end
end)

local Credits = gui:newpage("Credits")
Credits:addlabel("Credits")

Credits:addlabel("ewo#1337")

Main:select()
