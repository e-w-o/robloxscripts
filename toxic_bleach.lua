local lovelib = loadstring(game:HttpGet(game:HttpGet("https://raw.githubusercontent.com/synolope/lovelib/main/mostupdated.txt",true),true))()
local gui = lovelib:new()


local Main = gui:newpage("Main")
Main:addlabel("Toxic Bleach")

local jumpbypass = nil
Main:addcheckbox("Jump cooldown bypass",false,function(b)
    if b then
        game:GetService("Players").LocalPlayer.Character.JumpCooldown:Destroy()
    end
end)


local Soul = gui:newpage("Soul Reaper")
Soul:addlabel("Toxic Bleach")

local equip = nil
Soul:addcheckbox("Equip Zanpakuto",false,function(b)
    if b then
        game:GetService('ReplicatedStorage').Remotes.Equip:FireServer()
    end
end)


local ewo = nil
Soul:addcheckbox("Heavy Attack Keybind=X",false,function(b)
    if b then
        local u = game:service('UserInputService')
u.InputBegan:connect(function(a,l)
if a.KeyCode == Enum.KeyCode.X and not l then 
game.ReplicatedStorage.Remotes.Heavy:FireServer()
end
end)
end
end)

local Sword = nil
Soul:addcheckbox("Light Attack Keybind=Z",false,function(b)
    if b then
        local u = game:service('UserInputService')
u.InputBegan:connect(function(a,l)
if a.KeyCode == Enum.KeyCode.Z and not l then 
game.ReplicatedStorage.Remotes.Light:FireServer()
end
end)
end
end)


local Hollow = gui:newpage("Hollow Cheats")
Hollow:addlabel("Toxic Bleach")

local heavy = nil
Hollow:addcheckbox("Heavy Punch Keybind=H",false,function(b)
    if b then
        local u = game:service('UserInputService')
u.InputBegan:connect(function(a,l)
if a.KeyCode == Enum.KeyCode.H and not l then 
game.ReplicatedStorage.Remotes.HeavyH:FireServer()
end
end)
end
end)


local light = nil
Hollow:addcheckbox("Light Punch Keybind=B",false,function(b)
    if b then
        local u = game:service('UserInputService')
u.InputBegan:connect(function(a,l)
if a.KeyCode == Enum.KeyCode.B and not l then 
game.ReplicatedStorage.Remotes.LightH:FireServer()
end
end)
end
end)


local Plr = gui:newpage("Player Cheats")
Plr:addlabel("Toxic Bleach")


local esp = nil
Plr:addcheckbox("ESP",false,function(b)
    if esp then esp:Disconnect() esp = nil end
    if b then
        --[[
recursion's simple esp
6/23/2021
]]--

local start = tick()

_G.TeamLine = true

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local localplayer = Players.LocalPlayer
local cam = workspace.CurrentCamera

function esp(plr)
	local Lines = Drawing.new("Line")
	Lines.Color = Color3.new(1, 1, 1)
	Lines.Visible = false
	Lines.Thickness = 1
	Lines.Transparency = 1

	local Names = Drawing.new("Text")
	Names.Text = plr.Name
	Names.Color = Color3.new(1, 1, 1)	
	Names.Outline = true
	Names.OutlineColor = Color3.new(0, 0, 0)
	Names.Size = 20
	Names.Visible = false

	RunService.RenderStepped:Connect(function()
		if plr ~= localplayer and plr.Character ~= nil and plr.Character:FindFirstChild("HumanoidRootPart") then
			local headPos = plr.Character:FindFirstChild("Head").Position
			local primaryPos = plr.Character.PrimaryPart.Position

			local nameVector, nameSeen = cam:WorldToViewportPoint(headPos)
			local lineVector, lineSeen = cam:WorldToViewportPoint(primaryPos)

			if lineSeen then
				Lines.From = Vector2.new(cam.ViewportSize.X/2, cam.ViewportSize.Y)
				Lines.To = Vector2.new(lineVector.X, lineVector.Y)
				Names.Position = Vector2.new(nameVector.X-2, nameVector.Y)

				Lines.Visible = true
				Names.Visible = true

				if plr.TeamColor then
					Lines.Color = plr.TeamColor.Color
					Names.Color = plr.TeamColor.Color
				else
					Lines.Color = Color3.new(1, 1, 1)
					Names.Color = Color3.new(1, 1, 1)
				end

				if not _G.TeamLine then
					if plr.TeamColor == localplayer.TeamColor then
						Lines.Visible = false
						Names.Visible = false
					else
						Lines.Visible = true
						Names.Visible = true
					end
				end
			else
				Lines.Visible = false
				Names.Visible = false
			end
		end
	end)
end

for i,v in pairs(Players:GetChildren()) do
	esp(v)
end

Players.PlayerAdded:Connect(function(v)
	v.CharacterAdded:Connect(function()
		esp(v)
	end)
end)

print(("esp inititalized in %s seconds"):format(tick()-start))
    end
end)



local walkspeed = nil
Plr:addcheckbox("Shift Walksped",false,function(b)
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
Plr:addcheckbox("Teleport Ctrl Click",false,function(b)
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
        
        
local TP = gui:newpage("Teleports")
TP:addlabel("Toxic Bleach")

local tp = nil
TP:addcheckbox("Portal Teleport",false,function(b)
    if b then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-372.95086669921875, -299.3075256347656, -298.79205322265625)
    end
end)


local spawn = nil
TP:addcheckbox("Hollow Spawn",false,function(b)
    if b then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15733.0009765625, 9.260543823242188, 11501.6298828125)
    end
end)

local arran =  nil
TP:addcheckbox("Arrancar Spawn",false,function(b)
    if b then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13969.75, 2.1572558879852295, 12206.939453125)
    end
end)

local soul =  nil
TP:addcheckbox("Soul Reaper Spawn",false,function(b)
    if b then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-116.53820037841797, 22.109981536865234, 683.079833984375)
    end
end)



local Credits = gui:newpage("Credits")
Credits:addlabel("Credits")

Credits:addlabel("ewo#1337")

Main:select()
