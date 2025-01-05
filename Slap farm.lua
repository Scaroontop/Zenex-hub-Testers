-- Function to get the current player's user ID.
function getPlayerUserID()
  return game.Players.LocalPlayer.UserId
end

-- Function to check if the current player is the authorized user.
function checkAuthorizedUser()
  local authorizedUserID = 7484705339 -- Replace with the actual authorized user ID
  local authorizedUserID = 7469210971 -- Replace with the actual authorized user ID
  local authorizedUserID = 7681543933 -- Replace with the actual authorized user ID

  if getPlayerUserID() ~= authorizedUserID then
    -- User is not authorized, restrict access
    game.Players.LocalPlayer:Kick("Please purchase premium and send proof to Sap :D.")
  end
end

-- Check authorization on player join
game.Players.PlayerAdded:Connect(checkAuthorizedUser)

-- Check authorization on game load (optional)
checkAuthorizedUser()
wait(3)
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Credits",Text = "Made By Sap, Zenex hub is not responsible for any bans using this (version:V1)." ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150"})

game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Credits",Text = "(Warning this code is unstable and has not been tested to work)." ,Duration = 15, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150"})

if not game.IsLoaded then
    game.Loaded:Wait()
end




local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end
function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                    wait()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
                wait(4)
            end
        end
    end
end

function Teleport()
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end






for i,v in pairs(game.Players:GetChildren()) do
	if v ~= game.Players.LocalPlayer then
		if v.Name:find("username") or v.Name:find("username2") or v.Name:find("username3") or v.Name:find("username4") then
			if v.leaderstats.Glove.Value == "Boxer" then
			game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "There's Sap or his friends on this server. But you're still going to farm bc Sap or his friends is farming too 🔥" ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150"})
			else
			game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "There's Saps or his friends on server. Serverhopping bc you better not farm on me or start exploiting on me 👏" ,Duration = 10, Icon = "rbxthumb://type=Asset&id=9649923610&w=150&h=150"})
			wait(1)
				while task.wait() do
				Teleport()
				end
			end
		end
	end
end



function Refarm()
AutoExecute = false

BypassAnticheat = true

AntiRecord = true

Nocollide = false

GhostInvis = true

Safespot = true

Ballerfarm = false

Blinkfarm = false

Replicafarm = true						

SlappowerMethod1 = true

SlappowerMethod2 = false

SlappowerMethod3 = false

SlappowerMethod4 = false

SlapplefarmV1 = true

SlapplefarmV2 = true

FarmOrbs = true

FarmToolbox = true

Refarm = false

Serverhop = true

loadstring(game:HttpGet('https://raw.githubusercontent.com/Scaroontop/Zenex-hub-Testers/refs/heads/main/Slap%20farm.lua'))()
	
	
	
Before = game.Players.LocalPlayer.leaderstats.Slaps.Value

wait(.3)
print("loaded")


	
	
	
if AutoExecute == true then
local Teleport = queueonteleport or queue_on_teleport
if Teleport then
    Teleport([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
AutoExecute = true
BypassAnticheat = true
AntiRecord = true
Nocollide = false
GhostInvis = true
Safespot = true
Ballerfarm = false
Blinkfarm = false
Replicafarm = true						
SlappowerMethod1 = true
SlappowerMethod2 = false
SlappowerMethod3 = false
SlapplefarmV1 = true
SlapplefarmV2 = true
FarmOrbs = true
FarmToolbox = true
Refarm = false
Serverhop = true
loadstring(game:HttpGet('https://raw.githubusercontent.com/Scaroontop/Zenex-hub-Testers/refs/heads/main/Slap%20farm.lua'))()
  ]])
end
end	
if BypassAnticheat == true then
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/BypassAntiCheat/main/main.lua'))()
end
if AntiRecord == true then
for i,p in pairs(game.Players:GetChildren()) do
if p ~= game.Players.LocalPlayer then
p.Chatted:Connect(function(message)
Words = message:split(" ")
if _G.AntiRecord == true then
for i, v in pairs(Words) do
if v:lower():match("recording") or v:lower():match(" rec") or v:lower():match("record") or v:lower():match("discor") or v:lower():match(" disco") or v:lower():match(" disc") or v:lower():match("ticket") or v:lower():match("tickets") or v:lower():match(" ds") or v:lower():match(" dc") or v:lower():match("dizzy") or v:lower():match("dizzycord") or v:lower():match(" clip") or v:lower():match("proof") or v:lower():match("evidence") or v:lower():match("Hacker") or v:lower():match("Exploiter") or v:lower():match("hack") or v:lower():match("hacks") or v:lower():match("exploit") or v:lower():match("Farm") or v:lower():match("Slap farm") or v:lower():match("gone") or v:lower():match("slapple") or v:lower():match("slapples") or v:lower():match("Hecks") or v:lower():match("Ban") or v:lower():match("Report") or v:lower():match("Reported") then
AntiKick:Set(false)
game.Players.LocalPlayer:Kick("Possible player recording detected.".." [ "..p.Name.." ]".." [ "..message.." ]")
game.Players.PlayerAdded:Connect(function(Player)
Player.Chatted:Connect(function(message)
Words = message:split(" ")
for i, v in pairs(Words) do
if v:lower():match("recording") or v:lower():match(" rec") or v:lower():match("record") or v:lower():match("discor") or v:lower():match(" disco") or v:lower():match(" disc") or v:lower():match("ticket") or v:lower():match("tickets") or v:lower():match(" ds") or v:lower():match(" dc") or v:lower():match("dizzy") or v:lower():match("dizzycord") or v:lower():match(" clip") or v:lower():match("proof") or v:lower():match("evidence") or v:lower():match("Hacker") or v:lower():match("Exploiter") or v:lower():match("hack") or v:lower():match("hacks") or v:lower():match("exploit") or v:lower():match("Farm") or v:lower():match("Slap farm") or v:lower():match("gone") or v:lower():match("slapple") or v:lower():match("slapples") or v:lower():match("Hecks") or v:lower():match("Ban") or v:lower():match("Report") or v:lower():match("Reported") then
AntiKick:Set(false)
game.Players.LocalPlayer:Kick("Possible player recording detected.".." [ "..Player.Name.." ]".." [ "..message.." ]")
end
end
end)
end)
end
end
end
end)
end
end
end
if NoCollide == true then
game.Workspace[game.Players.LocalPlayer.Name]["HumanoidRootPart"].CanCollide = false
game.Workspace[game.Players.LocalPlayer.Name]["Head"].CanCollide = false
game.Workspace[game.Players.LocalPlayer.Name]["Torso"].CanCollide = false
game.Workspace[game.Players.LocalPlayer.Name]["Left Arm"].CanCollide = false
game.Workspace[game.Players.LocalPlayer.Name]["Right Arm"].CanCollide = false
game.Workspace[game.Players.LocalPlayer.Name]["Left Leg"].CanCollide = false
game.Workspace[game.Players.LocalPlayer.Name]["Right Leg"].CanCollide = false
game.Players.LocalPlayer.Character["HumanoidRootPart"].CanCollide = false
game.Players.LocalPlayer.Character["Head"].CanCollide = false
game.Players.LocalPlayer.Character["Torso"].CanCollide = false
game.Players.LocalPlayer.Character["Left Arm"].CanCollide = false
game.Players.LocalPlayer.Character["Right Arm"].CanCollide = false
game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
end

for i,v in pairs(game.Workspace:GetChildren()) do
if string.find(v.Name, "ÅBarrier") then
v.CanCollide = false
end
end
for _,v in pairs(game.Players:GetChildren()) do
if v.Character:FindFirstChild("rock") then
v.Character:FindFirstChild("rock").CanTouch = false
v.Character:FindFirstChild("rock").CanQuery = false
v.Character:FindFirstChild("rock").CanCollide = false
end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.ClassName == "Part" then
v.Anchored = false
end
end
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
game.Workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"]:Destroy()
game.Workspace.DEATHBARRIER.CanTouch = false
game.Workspace.DEATHBARRIER2.CanTouch = false
game.Workspace.dedBarrier.CanTouch = false
game.Workspace.ArenaBarrier.CanTouch = false
game.Workspace.AntiDefaultArena.CanTouch = false
if game.Workspace.Lobby:FindFirstChild("brazil") then
game.Workspace.Lobby.brazil:Destroy()
end
if GhostInvis == true then

fireclickdetector(workspace.Lobby["Ghost"].ClickDetector)

wait(.5)

game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()

wait(.3)
  
end
if Safespot == true then
if workspace:FindFirstChild("Baseplate") == nil then
local S = Instance.new("Part")
S.Name = "Baseplate"
S.Anchored = true
S.CanCollide = true
S.Transparency = 0
S.Position = Vector3.new(-7000, -7000, -7000)
S.Size = Vector3.new(1000, 10, 1000)
S.Parent = workspace
end	

fireclickdetector(workspace.Lobby["el gato"].ClickDetector)
wait(0.1)
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Cat"):FireServer()
wait(0.2)
game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer()

if Ballerfarm == true then
fireclickdetector(workspace.Lobby["Baller"].ClickDetector)
wait(0.3)
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(0.4)
end
if BlinkFarm == true then
fireclickdetector(workspace.Lobby["Blink"].ClickDetector)
wait(0.3)
game:GetService("ReplicatedStorage").Blink:FireServer("OutOfBody", {["dir"] = Vector3.new(0, 0, 0),["ismoving"] = false,["mousebehavior"] = Enum.MouseBehavior.Default})
wait(0.4)
end
if Replicafarm == true then
fireclickdetector(workspace.Lobby.Replica.ClickDetector)
wait(0.01)
game:GetService("ReplicatedStorage").Duplicate:FireServer(true)
end
repeat task.wait()
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, workspace.Lobby.Teleport2, 0)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-909, 328, 3) -- regular arena
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
task.wait()
wait(1)
if SlappowerMethod1 == true then
for i, v in pairs(workspace:GetChildren()) do
                if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
game.ReplicatedStorage.b:FireServer(v:WaitForChild("HumanoidRootPart"),true)
                end
            end
task.wait()
end
if SlappowerMethod2 == true then
for i, v in pairs(workspace:GetChildren()) do
  if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
for i = 1, 1680 do
game.ReplicatedStorage.b:FireServer(v:WaitForChild("HumanoidRootPart"),true)
    end
  end
end
if SlappowerMethod3 == true then
for i, v in pairs(workspace:GetChildren()) do
  if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
for i = 1,2140 do
game.ReplicatedStorage.b:FireServer(v:WaitForChild("HumanoidRootPart"),true)
    end
  end
end
if SlappowerMethod4 == true then
for i, v in pairs(workspace:GetChildren()) do
  if v.Name:match(game.Players.LocalPlayer.Name) and v:FindFirstChild("HumanoidRootPart") then
for i = 1,10000 do
game.ReplicatedStorage.b:FireServer(v:WaitForChild("HumanoidRootPart"),true)
    end
  end
end
wait(0.2)
repeat task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-909, 328, 3) -- regular arena
until game.Players.LocalPlayer.Character:FindFirstChild("entered")
task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(697, 87, -99)
wait(.6)
if SlapplefarmV1 == true then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
for i, v in pairs(workspace.Arena.island5.Slapples:GetChildren()) do
                if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("entered") and v.Name == "Slapple" or v.Name == "GoldenSlapple" and v:FindFirstChild("Glove") and v.Glove:FindFirstChildWhichIsA("TouchTransmitter") then
                    v.Glove.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
               task.wait()
               end
            end
        end	
if SlapplefarmV2 == true then
for i, v in pairs(workspace.Arena.island5.Slapples:GetChildren()) do
                if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("entered") and v.Name == "Slapple" or v.Name == "GoldenSlapple" and v:FindFirstChild("Glove") and v.Glove:FindFirstChildWhichIsA("TouchTransmitter") then
                    v.Glove.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		    wait(.05)
		    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Glove, 0)
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Glove, 1)
                while true do 
print("Grabbed slapples")
		end
            end
end
if FarmOrbs == true then
if game.Workspace:FindFirstChild("MATERIALIZEOrb") then
game.Workspace.MATERIALIZEOrb.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(.05)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), game.Workspace.MATERIALIZEOrb, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), game.Workspace.MATERIALIZEOrb, 1)
end
if game.Workspace:FindFirstChild("JetOrb") then
game.Workspace.JetOrb.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(.05)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), game.Workspace.JetOrb, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), game.Workspace.JetOrb, 1)
end
if game.Workspace:FindFirstChild("PhaseOrb") then
game.Workspace.PhaseOrb.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(.05)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), game.Workspace.PhaseOrb, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), game.Workspace.PhaseOrb, 1)
end
if game.Workspace:FindFirstChild("GlitchOrb") then
game.Workspace.GlitchOrb.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(.05)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), game.Workspace.GlitchOrb, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), game.Workspace.GlitchOrb, 1)
end
if game.Workspace:FindFirstChild("SiphonOrb") then
game.Workspace.SiphonOrb.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(.05)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), game.Workspace.SiphonOrb, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), game.Workspace.SiphonOrb, 1)
end
end
end
if FarmToolbox == true then
if game.Workspace:FindFirstChild("Toolbox") then
fireclickdetector(game.Workspace.Toolbox.ClickDetector)
end
end
wait(0.1)
if Refarm == true then
coroutine.wrap(Refarm)()
			end
if Serverhop == true then
wait(18)
fireclickdetector(workspace.Lobby["el gato"].ClickDetector)
wait(0)					
game:GetService("Players").LocalPlayer:Kick("Server hopping, please wait!")
wait(0.1)
if SeverHOPSet then 
    SeverHOPSet = { 
        ErrorReply = "rejoin", 
        SwitchServerType = "serverhop" 
    }
end
repeat

until 
game.CoreGui.RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt")
    end)
    if FastServerhop == true then
    game:GetService("RunService").RenderStepped:Connect(function()
game:GetService("GuiService"):ClearError()
game.CoreGui:WaitForChild("RobloxLoadingGUI"):Destroy()
end)
		wait(1.5)
    else
game:GetService("RunService").RenderStepped:Connect(function()
game:GetService("GuiService"):ClearError()
game.CoreGui:WaitForChild("RobloxLoadingGUI"):Destroy()
end)
    wait(2.8)
    end
    Teleport()
    
else
Teleport() end

while true do
Teleport()
task.wait()
end	
function Stats()
game:GetService("RunService").RenderStepped:Connect(function()
game:GetService("GuiService"):ClearError()
game.CoreGui:WaitForChild("RobloxLoadingGUI"):Destroy()
end)
Total = game.Players.LocalPlayer.leaderstats.Slaps.Value - Before
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Profit",Text = "Earned ≈ "..Total.." slaps.",Icon = "rbxassetid://7733658504",Duration = 5})
end
