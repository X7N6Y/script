local a=loadstring(game:HttpGet("https://raw.githubusercontent.com/zachisfunny/BooHub/main/Boo"))()local b=a.Load({Title="Azure Z",Style=0,SizeX=400,SizeY=300,Theme="Dark"})local c=b.New({Title="Toggles"})local d=b.New({Title="Extras"})local e=b.New({Title="Teleports"})c.Label({Text="Made by zach.#6257"})c.Toggle({Text="Infinite Jump",Callback=function(f)getgenv().inf=f;spawn(function()while inf==true do if inf==false then break end;game:GetService("UserInputService").JumpRequest:connect(function()if inf then game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")end end)wait()end end)end,Enabled=false})c.Toggle({Text="Auto Farm",Callback=function(f)local g=game:GetService("Players")local h=workspace:WaitForChild("BoatStages"):WaitForChild("NormalStages")local i,j=workspace:WaitForChild("ChangeCharacter"),workspace:WaitForChild("ClaimRiverResultsGold")local k=game.Players.LocalPlayer;_G.Busy=f;while _G.Busy do local l=Instance.new("BodyVelocity")l.Velocity=Vector3.new(0,0,0)l.Parent=k.Character.HumanoidRootPart;for m=1,9 do if not k.Character or not k.Character:FindFirstChild("Humanoid")then repeat wait()until k.Character and k.Character:FindFirstChild("Humanoid")end;k.Character.HumanoidRootPart.CFrame=h["CaveStage"..m].DarknessPart.CFrame;wait(0.1)if not _G.Busy then k.Character.Humanoid.Health=0;exit(0)end;if m==1 then wait(6)else wait(3)end;j:FireServer()end;k.Character:Remove()repeat wait()until k.Character and k.Character:FindFirstChild("HumanoidRootPart")end end,Enabled=false})c.Toggle({Text="Water GodMode",Callback=function(f)getgenv().Water=f;game:GetService('RunService').Stepped:connect(function()pcall(function()if getgenv().Water and game.Players.LocalPlayer.Character:FindFirstChild("WaterDetector")then game.Players.LocalPlayer.Character.WaterDetector:remove()end end)end)end,Enabled=false})c.Toggle({Text="Auto Common Chest",Callback=function(f)getgenv().Number=1;getgenv().Common=f;game:GetService('RunService').Stepped:connect(function()if getgenv().Common then workspace.ItemBoughtFromShop:InvokeServer("Common Chest",getgenv().Number)end end)end,Enabled=false})c.Toggle({Text="Auto Uncommon Chest",Callback=function(f)getgenv().UnCommon=f;getgenv().Number=1;game:GetService('RunService').Stepped:connect(function()if getgenv().UnCommon then workspace.ItemBoughtFromShop:InvokeServer("Uncommon Chest",getgenv().Number)end end)end,Enabled=false})c.Toggle({Text="Auto Rare Chest",Callback=function(f)getgenv().Rare=f;getgenv().Number=1;game:GetService('RunService').Stepped:connect(function()if getgenv().Rare then workspace.ItemBoughtFromShop:InvokeServer("Rare Chest",getgenv().Number)end end)end,Enabled=false})c.Toggle({Text="Auto Epic Chest",Callback=function(f)getgenv().Epic=f;getgenv().Number=1;game:GetService('RunService').Stepped:connect(function()if getgenv().Epic then workspace.ItemBoughtFromShop:InvokeServer("Epic Chest",getgenv().Number)end end)end,Enabled=false})c.Toggle({Text="Auto Legendary Chest",Callback=function(f)getgenv().Legendary=f;getgenv().Number=1;game:GetService('RunService').Stepped:connect(function()if getgenv().Legendary then workspace.ItemBoughtFromShop:InvokeServer("Legendary Chest",getgenv().Number)end end)end,Enabled=false})d.Button({Text="Fly",Callback=function()local n=Enum.KeyCode.B;loadstring(game:HttpGet('https://raw.githubusercontent.com/zachisfunny/Fly-Script/main/Script'))()end})d.Button({Text="Vehicle Fly",Callback=function()local o=Enum.KeyCode.V;local p=Enum.KeyCode.LeftControl;local q=3;local r=256;local s=4;local t=16;local u=game:GetService("UserInputService")local v=game:GetService("StarterGui")local w=game:GetService("RunService")local x=game:GetService("Players")local y=x.LocalPlayer;local z=workspace.CurrentCamera;local A=nil;local B=nil;local C=nil;workspace.Changed:Connect(function()z=workspace.CurrentCamera end)local D=function(E)A=E;B=E:WaitForChild("HumanoidRootPart")end;y.CharacterAdded:Connect(D)if y.Character then D(y.Character)end;local F=Vector3.new(0,0,0)local G=function(H)local I=Vector3.new(0,0,0)if not u:GetFocusedTextBox()then if u:IsKeyDown(Enum.KeyCode.W)then I=I+z.CFrame.LookVector*r end;if u:IsKeyDown(Enum.KeyCode.A)then I=I-z.CFrame.RightVector*r end;if u:IsKeyDown(Enum.KeyCode.S)then I=I-z.CFrame.LookVector*r end;if u:IsKeyDown(Enum.KeyCode.D)then I=I+z.CFrame.RightVector*r end;if u:IsKeyDown(Enum.KeyCode.Space)then I=I+z.CFrame.UpVector*r end;if u:IsKeyDown(p)then I=I*q end end;if B then local J=B:GetRootPart()if J.Anchored then return end;if not isnetworkowner(J)then return end;F=F:Lerp(I,math.clamp(H*s,0,1))J.Velocity=F+Vector3.new(0,2,0)if J~=B then J.RotVelocity=Vector3.new(0,0,0)J.CFrame=J.CFrame:Lerp(CFrame.lookAt(J.Position,J.Position+F+z.CFrame.LookVector),math.clamp(H*t,0,1))end end end;u.InputBegan:Connect(function(K,L)if L then return end;if K.KeyCode==o then if C then v:SetCore("SendNotification",{Title="zachs car fly",Text="Flight disabled"})C:Disconnect()C=nil else v:SetCore("SendNotification",{Title="zachs car fly",Text="Flight enabled"})F=B.Velocity;C=w.Heartbeat:Connect(G)end end end)v:SetCore("SendNotification",{Title="zachs car fly",Text="Loaded successfully, Press V to toggle"})end})d.TextField({Text="HipHeight, Numbers Only",Callback=function(f)game.Players.LocalPlayer.Character.Humanoid.HipHeight=f end})d.TextField({Text="Walkspeed, Numbers Only",Callback=function(f)game.Players.LocalPlayer.Character.Humanoid.WalkSpeed=f end})d.TextField({Text="JumpPower, Numbers Only",Callback=function(f)game.Players.LocalPlayer.Character.Humanoid.JumpPower=f end})d.Button({Text="Fox Morph",Callback=function()workspace.ChangeCharacter:FireServer("FoxCharacter")end})d.Button({Text="Penguin Morph",Callback=function()workspace.ChangeCharacter:FireServer("PenguinCharacter")end})d.Button({Text="Chicken Morph",Callback=function()workspace.ChangeCharacter:FireServer("ChickenCharacter")end})d.Button({Text="Infinite Yield",Callback=function()loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()end})e.Button({Text="Teleport To Blue",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace")["Really blueZone"].CFrame*CFrame.new(0,5,0)end})e.Button({Text="Teleport To Black",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").BlackZone.CFrame*CFrame.new(0,5,0)end})e.Button({Text="Teleport To Magenta",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").MagentaZone.CFrame*CFrame.new(0,5,0)end})e.Button({Text="Teleport To Red",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(221.12088,-9.89999676,-64.0851135,0.0238732975,-3.54099043e-08,-0.999714971,3.27503464e-08,1,-3.46379174e-08,0.999714971,-3.19140909e-08,0.0238732975)end})e.Button({Text="Teleport To Yellow",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace")["New YellerZone"].CFrame*CFrame.new(0,5,0)end})e.Button({Text="Teleport To Green",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").CamoZone.CFrame*CFrame.new(0,5,0)end})e.Button({Text="Teleport To White",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game:GetService("Workspace").WhiteZone.CFrame*CFrame.new(0,5,0)end})e.Button({Text="Teleport To Void",Callback=function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(math.huge,math.huge,math.huge)end})e.Button({Text="Rejoin",Callback=function()game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)end})e.Button({Text="Server Hop",Callback=function()game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)end})d.Button({Text="Anti-AFK",Callback=function()wait(3)local M=game:service'VirtualUser'game:service('Players').LocalPlayer.Idled:connect(function()M:CaptureController()M:ClickButton2(Vector2.new())end)end})d.Button({Text="Anti-LAG",Callback=function()for N,O in pairs(game:GetService("Workspace"):GetDescendants())do if O:IsA("BasePart")and not O.Parent:FindFirstChild("Humanoid")then O.Material=Enum.Material.SmoothPlastic;if O:IsA("Texture")then O:Destroy()end end end end})c.Toggle({Text="Get a ton of some Blocks (patched)",Callback=function(f)_G.RUN=f;spawn(function()coroutine.wrap(function()while _G.RUN do wait()coroutine.wrap(function()while _G.RUN do wait()workspace.ItemBoughtFromShop:InvokeServer("Winter Chest",math.floor(game:GetService("Players").LocalPlayer.Data.Gold.Value/100))end end)()end end)()end)end,Enabled=false})