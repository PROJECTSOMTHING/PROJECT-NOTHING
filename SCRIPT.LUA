local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "PROJECT NOTHING", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroText = "PROJECT NOTHING"})

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]
local Tab = Window:MakeTab({
	Name = "LEGEND OF SPEED",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
Tab:AddButton({
	Name = "Auto Collect Orbs",
	Callback = function()
        function l()
            local args = {
            [1] = "collectOrb",
            [2] = "Red Orb",
            [3] = "City"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("orbEvent"):FireServer(unpack(args))
			local args = {
            [1] = "collectOrb",
            [2] = "Blue Orb",
            [3] = "City"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("orbEvent"):FireServer(unpack(args))
			local args = {
            [1] = "collectOrb",
            [2] = "Yellow Orb",
            [3] = "City"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("orbEvent"):FireServer(unpack(args))
			local args = {
            [1] = "collectOrb",
            [2] = "Orange Orb",
            [3] = "City"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("orbEvent"):FireServer(unpack(args))
            wait(0.0000001)
            l()
            end
            l()
  	end    
})

Tab:AddButton({
	Name = "Auto Collect Gems",
	Callback = function()
        function o()
			local args = {
				[1] = "collectOrb",
				[2] = "Gem",
				[3] = "City"
				}
				
				game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("orbEvent"):FireServer(unpack(args))
				wait(0.000000000000000000000000000000000000000000000000000000000000000000000000001)
				o()
			end
			o()
		end
})

Tab:AddButton({
	Name = "Autoracer/farmer + Fake Steps, etc+",
	Callback = function()
        --[[WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!]]loadstring(game:HttpGet('https://raw.githubusercontent.com/StupidProAArsenal/main/main/Legenos%20of%20speedos'))()
		end
})



Tab:AddButton({
	Name = "Project Nothing",
	Callback = function()
        local VLib = loadstring(game:HttpGet("https://gitlab.com/L1ZOT/test-project/-/raw/main/PJM-GUI"))()
local Win = VLib:Window("Project Nothing", "Speed of Legends")
local Main = Win:Tab("Main")
local Autofarm = Win:Tab("Autofarm")
local Credits = Win:Tab("Credits")

if game.workspace:FindFirstChild("ManahubPart") then
    
else
    local ManahubPart = Instance.new("Part")
    ManahubPart.Name = "ManahubPart"
    ManahubPart.Parent = game.Workspace
    ManahubPart.Anchored = true
    ManahubPart.Transparency = 0
    ManahubPart.Size = Vector3.new(30,-0.5,30)
    ManahubPart.Position = Vector3.new(-543.452, 2873.2, 324.647)
end

Main:Slider("WalkSpeed", 0, 250, 16, function(v)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

Main:Slider("JumpPower", 0, 250, 50, function(v)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)


Autofarm:Toggle("Auto Steps", false, function (t)
    getgenv().Autostep = t
    while wait() do
        if getgenv().Autostep == true then
                    pcall(function ()
                        for i = 1,20 do
                            local args = {
                                [1] = "collectOrb",
                                [2] = "Red Orb",
                                [3] = "City"
                            }
                            
                            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
                            local args = {
                                [1] = "collectOrb",
                                [2] = "Blue Orb",
                                [3] = "City"
                            }
                            
                            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
                        end
                end)
             end
        end
end)

Autofarm:Toggle("Auto collect gems", false, function(t)
spawn(function()
    getgenv().AutocollectDiamonds = t
    while task.wait() do
    if getgenv().AutocollectDiamonds == true then
pcall(function()
    for i = 1,10 do
        local args = {
            [1] = "collectOrb",
            [2] = "Gem",
            [3] = "City"
            }
            
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
            
            local args = {
            [1] = "collectOrb",
            [2] = "Gem",
            [3] = "Desert"
            }
            
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
            
            local args = {
            [1] = "collectOrb",
            [2] = "Gem",
            [3] = "Magma City"
            }
            
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
    end
end)
end
end
end)
end)

Autofarm:Toggle("Hops Farm", false, function(t)
    getgenv().Autohops = t
    while task.wait() do
if getgenv().Autohops == true then
        for i,v in pairs(game:GetService("Workspace").Hoops:GetChildren()) do
            v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end
    end
end
end)

Autofarm:Toggle("Safe Hops Farm", false, function(t)
    HoopsFarm = t
end)

spawn(function()
    while task.wait() do
        if HoopsFarm then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Hoops:GetChildren()) do
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    wait(.3)
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(.3) do
        if HoopsFarm then
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-547.52026, 2893.19995, 327.647003)
            end)
        end
    end
end)


Autofarm:Toggle("AutoRebirth", false, function(t)
spawn(function()
    getgenv().AutoRebirth = t
    while wait() do
    if getgenv().AutoRebirth == true then
        pcall(function ()
            local args = {
                [1] = "rebirthRequest"
            }
            
            game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer(unpack(args))
            local args = {
                [1] = "rebirthRequest"
            }
            
            game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer(unpack(args))
        end)
        end
    end
end)
end)

Autofarm:Button("Collect Chests", false, function(t)

    local args = {
        [1] = "groupRewards"
    }
    game:GetService("ReplicatedStorage").rEvents.groupRemote:InvokeServer(unpack(args))

    local args = {
        [1] = "Enchanted Chest"
    }
    
    game:GetService("ReplicatedStorage").rEvents.checkChestRemote:InvokeServer(unpack(args))
    wait()
    local args = {
        [1] = workspace.rewardChests.rewardChest
    }
    
    game:GetService("ReplicatedStorage").rEvents.collectCourseChestRemote:InvokeServer(unpack(args))
end)




Credits:Button("LeadMarker#1219 & Karma#9368", function()
   
    setclipboard("https://discord.gg/97anmxFpkU")
    
end) 

Credits:Button("Mana#9724 & Septex#9788 (he is very hot)", function()
    setclipboard("https://discord.gg/97anmxFpkU")
end)

Credits:Button("UI Designer: Luke Marcus#4347", function()
    setclipboard("https://discord.gg/97anmxFpkU")
end)

Credits:Button("Project DONT JOIN Discord Server", function()
    setclipboard("https://discord.gg/97anmxFpkU")
        local req = (syn and syn.request) or (http and http.request) or http_request
        if req then
            req({
                Url = 'http://127.0.0.1:6463/rpc?v=1',
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json',
                    Origin = 'https://discord.com'
                },
                Body = game:GetService('HttpService'):JSONEncode({
                    cmd = 'INVITE_BROWSER',
                    nonce = game:GetService('HttpService'):GenerateGUID(false),
                    args = {code = '97anmxFpkU'}
                })
            })
        end
end)

Credits:line()
Credits:Button("Destroy Gui", function()
    game.CoreGui:FindFirstChild("woof"):Destroy()
end)

Credits:Button("Rejoin", function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:Teleport(game.PlaceId, p)
end)
  	end    
})

 -- VariÃ¡veis
 getgenv().AutoOrb = true
 getgenv().AutoRebirth = true
 getgenv().AutoGem = true
 getgenv().AutoEgg = true
 getgenv().Egg = "Yellow Crystal"
 getgenv().BugPet = true
 getgenv().AutoHoop = true
 local Player = game:GetService("Players").LocalPlayer

 -- FunÃ§Ãµes
 function AutoOrb()
	 while getgenv().AutoOrb == true do
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
		 wait()
	 end
 end

 function AutoGem()
	 while getgenv().AutoGem == true do
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
		 wait()
	 end
 end    

 function AutoRebirth()
	 while getgenv().AutoRebirth == true do
		 game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
		 wait()
	 end
 end
 
 function BugPet()
	 while getgenv().BugPet == true do
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
		 game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
		 wait(0.1)
	 end
 end

 -- Body
 local FarmTab = Window:MakeTab({
	 Name = "AUTO FARM LOS",
	 Icon = "rbxassetid://4483345998",
	 PremiumOnly = false
 })

 local TeleportTab = Window:MakeTab({
	 Name = "TELEPORTS LOS",
	 Icon = "rbxassetid://4483345998",
	 PremiumOnly = false
 })

 local EggTab = Window:MakeTab({
	 Name = "PETS LOS",
	 Icon = "rbxassetid://4483345998",
	 PremiumOnly = false
 })

 local MiscTab = Window:MakeTab({
	 Name = "MISC LOS",
	 Icon = "rbxassetid://4483345998",
	 PremiumOnly = false
 })

 -- Toggles
 FarmTab:AddToggle({
	 Name = "Auto Orb",
	 Default = false,
	 Callback = function(Value)
		 getgenv().AutoOrb = Value
		 AutoOrb()
	 end
 })
 
 FarmTab:AddToggle({
	 Name = "Auto Hoop",
	 Default = false,
	 Callback = function(Value)
		 getgenv().AutoHoop = Value
		 spawn(function()
			 while getgenv().AutoHoop == true do
				 for i, v in pairs(game:GetService("Workspace").Hoops:GetChildren()) do
					 firetouchinterest(v, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, 0)
					 wait()
					 firetouchinterest(v, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, 1)
				 end
			 end
		 end)    
	 end
 })

 FarmTab:AddToggle({
	 Name = "Auto Gem",
	 Default = false,
	 Callback = function(Value)
		 getgenv().AutoGem = Value
		 AutoGem()
	 end
 })

 MiscTab:AddToggle({
	 Name = "Auto Rebirth",
	 Default = false,
	 Callback = function(Value)
		 getgenv().AutoRebirth = Value
		 AutoRebirth()
	 end    
 })
 
 EggTab:AddToggle({
 Name = "Auto Egg",
 Default = false,
 Callback = function(Value)
		 function Egg()
			 while getgenv().AutoEgg == true do
				 game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", getgenv().Egg)
				 wait()
			 end
		 end
		 
		 getgenv().AutoEgg = Value
		 Egg()
	   end
 })
 
 EggTab:AddToggle({
	 Name = "Bug Pet",
	 Default = false,
	 Callback = function(Value)
		 getgenv().BugPet = Value
		 BugPet()
	 end    
 })

 -- Buttons
 TeleportTab:AddButton({
	 Name = "Highway Legends",
	 Callback = function()
		 local plr = game.Players.LocalPlayer
		 local char = plr.Character
		 char.HumanoidRootPart.CFrame = CFrame.new(3682.60254, 71.5308151, 5592.50879, -0.0193620101, 3.62180188e-08, -0.999812543, 4.99353519e-08, 1, 3.52577771e-08, 0.999812543, -4.92433294e-08, -0.0193620101)
	   end    
 })

 TeleportTab:AddButton({
	 Name = "Snow City",
	 Callback = function()
		 local plr = game.Players.LocalPlayer
		 local char = plr.Character
		 char.HumanoidRootPart.CFrame = CFrame.new(-866.386841, 4.00088787, 2165.70654, -0.499959469, -9.93534854e-08, -0.866048813, -4.44803661e-08, 1, -8.90424445e-08, 0.866048813, -5.99544503e-09, -0.499959469)
	   end    
 })

 TeleportTab:AddButton({
	 Name = "Magma City",
	 Callback = function()
		 local plr = game.Players.LocalPlayer
		 local char = plr.Character
		 char.HumanoidRootPart.CFrame = CFrame.new(1616.82739, 4.05089617, 4330.65283, 7.86637156e-06, -4.15036254e-08, -1, -6.3789912e-08, 1, -4.15041264e-08, 1, 6.37902389e-08, 7.86637156e-06)
	   end    
 })

 TeleportTab:AddButton({
	 Name = "City",
	 Callback = function()
		 local plr = game.Players.LocalPlayer
		 local char = plr.Character
		 char.HumanoidRootPart.CFrame = CFrame.new(-537.767456, 3.95088959, 386.226837, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	   end    
 })
 
 -- Dropdowns
 EggTab:AddDropdown({
 Name = "Select Egg",
 Default = "Yellow Crystal",
 Options = {"Yellow Crystal", "Blue Crystal", "Red Crystal", "Lightning Crystal", "Inferno Crystal", "Lava Crystal", "Snow Crystal", "Electro Legends Crystal", "Space Crystal", "Alien Crystal", "Electro Crystal", "Desert Crystal"},
 Callback = function(Value)
	 getgenv().Egg = Value
 end    
 })
local Tab = Window:MakeTab({
	Name = "DOORS",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "OPEN VYNIXIUS HUB SCRIPT (ROOMS + DOORS)",
	Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()
      	end    
})
Tab:AddButton({
	Name = "OPEN MSDOORS SCRIPT (ROOMS + DOORS)",
	Callback = function()
         loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/MSDOORS/main/MSDOORS.lua"),true))()
      	end    
})
Tab:AddButton({
	Name = "OPEN VERY OP SCRIPT (INF KNOBS +)",
	Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/sponguss/Doors-Entity-Replicator/main/source.lua"))()
      	end    
})
Tab:AddButton({
	Name = "OPEN POOPDOORS V0.1 (ORGINAL)",
	Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/DoorsCoolScripts/bypassspeed100/main/op%20script"))()
      	end    
})
Tab:AddButton({
	Name = "OPEN MORPHS SCRIPT (KINDA BAD WILL UPDATE)",
	Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))();
      	end    
})
Tab:AddButton({
	Name = "OPEN ENTITY SPAWNER SCRIPT",
	Callback = function()
         loadstring(game:HttpGet('https://raw.githubusercontent.com/plamen6789/UtilitiesHub/main/UtilitiesGUI'))()
      	end    
})
Tab:AddButton({
	Name = "OPEN BYPASSER SCRIPT",
	Callback = function()
         loadstring(game:HttpGet('https://raw.githubusercontent.com/weszek/Doors/main/Doors%20by'))()
      	end    
})
Tab:AddButton({
	Name = "OPEN FREE TABLET SCRIPT",
	Callback = function()
         loadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()
      	end    
})
Tab:AddButton({
	Name = "TABLET IN RIFT",
	Callback = function()
         loadstring(game:HttpGet('https://pastebin.com/raw/bucRxAMi'))()
      	end    
})
Tab:AddButton({
	Name = "OPEN MAYHEM MODE SCRIPT",
	Callback = function()
         loadstring(game:HttpGet("https://github.com/HollowedOutMods/MayhemMode/blob/main/loader.lua?raw=true"))()
      	end    
})
Tab:AddButton({
	Name = "NEVER BE KICKED FROM GAME",
	Callback = function()
         loadstring(game:HttpGet("https://pastebin.com/raw/gsxvWvnj"))()
      	end    
})
Tab:AddButton({
	Name = "INFINTE YEILD",
	Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
      	end    
})
Tab:AddButton({
	Name = "FLOOR 2 TEXTURES",
	Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/iCherryKardes/Doors/main/Floor%202%20Mod"))()
      	end    
})
Tab:AddButton({
	Name = "HARDCORE MODE",
	Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/DoorsCoolScripts/Doors-Hardcore-/main/Doors%20Hardcore"))()
      	end    
})
Tab:AddButton({
	Name = "FREE CRUCIFIX (PLAYER SPAWNED)",
	Callback = function()
         _G.Uses = 1 _G.Range = 30 loadstring(game:HttpGet('https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua'))()
      	end    
})
Tab:AddButton({
	Name = "A-1000 AUTOWALK",
	Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/DaRealGeo/roblox/master/rooms-autowalk"))()
      	end    
})
Tab:AddButton({
	Name = "TERMINALVIBES HUB (KINDA GOOD)",
	Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/OminousVibes-Exploit/Scripts/main/doors/loadstring.lua"))()
      	end    
})
Tab:AddButton({
	Name = "IMPOSSIBLE MODE",
	Callback = function()
         loadstring(game:HttpGet("https://pastebin.com/raw/CKBP3r47"))()
      	end    
})
Tab:AddButton({
	Name = "ALL PLUSHIES GUI",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/s21b8TkT", true))()
	end    
})
Tab:AddButton({
	Name = "NERD HACK (AUTO HIDE +)",
	Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/FullDoorsGuiHack_Done.lua", true))()
      	end    
})
Tab:AddButton({
	Name = "10+ SCRIPTS IN ONE GUI",
	Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/UltraStuff/scripts2/main/doors"))()
      	end    
})
Tab:AddButton({
	Name = "OPEN DOORS EARLY",
	Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/DoorsCoolScripts/Doors-Godmode/main/op"))()
      	end    
})
Tab:AddButton({
	Name = "INF USE CRUCIFIX",
	Callback = function()
         loadstring(game:HttpGet('https://raw.githubusercontent.com/DoorsCoolScripts/INF-Crucifix/main/op'))()
      	end    
})
Tab:AddButton({
	Name = "DOORS FLOOR 2 (VERY HARD)",
	Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/DoorsCoolScripts/FloorSpoof/main/Floor2Spoof"))()
      	end
})
Tab:AddButton({
	Name = "FREE SHEARS (CAN BREAK GAME)",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/DoorsCoolScripts/Shears/main/op"))()
  	end    
})
Tab:AddButton({
	Name = "SHEARS IN RIFT (CAN BREAK GAME)",
	Callback = function()
      		loadstring(game:HttpGet("https://github.com/CreckHub/main-Scripts/raw/main/shears.lua"))()
  	end    
})
Tab:AddButton({
	Name = "GET A GUN",
	Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/DoorsCoolScripts/doors-gun/main/gun"))()
      	end    
})
Tab:AddButton({
	Name = "BECOME TINY",
	Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/DoorsCoolScripts/small-doors/main/op%20script"))()
      	end    
})
Tab:AddButton({
	Name = "ULTRA VITAMINS (DRUGS)",
	Callback = function()
         loadstring(game:HttpGet('https://raw.githubusercontent.com/DoorsCoolScripts/god-vitamins/main/op%20script'))()
      	end    
})
Tab:AddButton({
	Name = "KILL YOURSELF",
	Callback = function()
        game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
      	end    
})
Tab:AddButton({
	Name = "CRUCIFIX ON EVERYTHING (Q + LEFT CLICK)",
	Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/DoorsCoolScripts/crucifixonall/main/op%20script"))()
      	end    
})
Tab:AddButton({
	Name = "BANANA THROW (FE SUPER HARD MODE)",
	Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/DoorsCoolScripts/BananaThrow/main/Op"))()
      	end    
})
Tab:AddButton({
	Name = "BANANA GUN (FE SUPER HARD MODE)",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/CBxBM55t", true))()
	end    
})
Tab:AddButton({
	Name = "HOLY HAND GERNADE ON EVERYTHING",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/x0YVrBkd", true))()
	end    
})
Tab:AddButton({
	Name = "GERNADE ON EVERYTHING",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/zeFBYYy9", true))()
	end    
})
Tab:AddButton({
	Name = "REMOVE BANANAS AND JEFF",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/iimateiYT/Scripts/main/April%20Fools%20Helper.lua", true))()
	end    
})
Tab:AddButton({
	Name = "TURN HOLY HAND GERNADE INTO REAL GERNADE",
	Callback = function()
		game.Players.LocalPlayer.Backpack.ChildAdded:Connect(function()
			if game.Players.LocalPlayer.Backpack:FindFirstChild("HolyGrenade") then	
				local HolyGrenade = game.Players.LocalPlayer.Backpack.HolyGrenade
				local Grenade = game:GetObjects("rbxassetid://431532934")[1]
				local Weld = Instance.new("Weld")
				
				HolyGrenade.Handle.Transparency = 1
				HolyGrenade.TextureId = "http://www.roblox.com/asset/?id=913025958"
				HolyGrenade.Handle.sound_open.SoundId = "rbxassetid://5699659105"
		
				Grenade.Parent = HolyGrenade	
				Grenade.CanCollide = false	
				Grenade.Anchored = false		
				Grenade.Size = Vector3.new(1, 1, 1)
				
				Weld.Parent = Grenade
				Weld.Part0 = Grenade	
				Weld.Part1 = HolyGrenade.Handle
			end
		end)		
	end    
})
Tab:AddButton({
	Name = "BECOME PARTLY BLIND (PATCHED)",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/iimateiYT/Scripts/main/Blind.lua"))()
      	end    
})
Tab:AddButton({
	Name = "TURN SCREECH INTO HAPPY MEAL",
	Callback = function()
		local Screech = game:GetObjects("rbxassetid://13046474650")[1]
Screech.Parent = game:GetService("ReplicatedStorage"):WaitForChild("Entities")
game:GetService("Debris"):AddItem(game:GetService("ReplicatedStorage"):WaitForChild("Entities").Screech, 0)
      	end    
})
Tab:AddButton({
	Name = "GET CHICKEN ITEM",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/iimateiYT/Scripts/main/Chicken%20Item.lua"))()
      	end    
})
Tab:AddButton({
	Name = "GET PURPLE FLASHLIGHT",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Purple%20Flashlight"))()
	end    
})
Tab:AddButton({
	Name = "GET A FLASHLIGHT",
	Callback = function()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Normal%20Flashlight"))()
	end    
})
Tab:AddButton({
	Name = "DEATH + KNOBS FARMER (EXECUTE ABOVE DOOR 30-40 FOR KNOBS)",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Doors%20Death%20Farmer"))()
	end    
})
Tab:AddButton({
	Name = "MAXWELL CAT PLUSHIE",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Maxwell%20Plushie"))()
	end    
})
Tab:AddButton({
	Name = "AUTO SWITCH DISPLAY ACHEIVEMENTS",
	Callback = function()
		local list = require(game:GetService("ReplicatedStorage").Achievements)
		while task.wait() do
			for i,v in pairs(list) do 
				game:GetService("ReplicatedStorage").EntityInfo.FlexAchievement:FireServer(i)
			end
		end
	end    
})
Tab:AddButton({
	Name = "GET JEFF THE KILLER PLUSHIE",
	Callback = function()
		local tool = game:GetObjects("rbxassetid://13069619857")[1]
		tool.Parent = game.Players.LocalPlayer.Backpack
      	end    
})
Tab:AddButton({
	Name = "FE JACK SPAMMER (MIGHT NEED ANTICHEAT BYPASS)",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/hyay9T8n'))()
      	end    
})
Tab:AddButton({
	Name = "BIRTHDAY MODE",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/plamen6789/BirthdayModeDOORS/main/BirthdayModeScript'))()
	end    
})
Tab:AddButton({
	Name = "5 KNOB TABLET IN STARTER SHOP",
	Callback = function()
		_G.UpdateStars = true -- stars disappear after picking up a book/breaker pole | false: a little lag
		_G.OnShop = true -- can buy on pre run shop
		_G.Price = 5  -- tablet price on shop
		_G.Description = "Stole This Tablet From A Six Year Old. I Think He's MadðŸ˜‚" -- tablet description on shop
		
		loadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()
	end    
})
Tab:AddButton({
	Name = "LAZER GUN",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Laser%20Gun"))()
	end    
})
Tab:AddButton({
	Name = "BETTER BANANA GUN (only synapse x)",
	Callback = function()
         loadstring(game:HttpGet("https://pastebin.com/raw/CBxBM55t", true))()
	end    
})
Tab:AddButton({
	Name = "ADD GUNS ON DOOR 0 NEXT TO KEY!",
	Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/DoorsCoolScripts/doorsgun0/main/op%20script"))()
	end    
})
Tab:AddButton({
	Name = "ADD SWORD IN STARTER SHOP (5 KNOBS)",
	Callback = function()
         local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()



local exampleTool = LoadCustomInstance("rbxassetid://47433")


CustomShop.CreateItem(exampleTool, {
    Title = "Sword",
    Desc = "It slices, it dices.",
    Image = "https://tr.rbxcdn.com/0c57ae9f8f02ff45adf3ddff6710b33a/420/420/Model/Png",
    Price = 5,
    Stack = 1,
})
	end    
})
Tab:AddButton({
	Name = "CHICKEN MOD",
	Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/iimateiYT/Scripts/main/Chicken%20Mod.lua", true))()
      	end    
})
Tab:AddLabel("None Of The Starter Shop Items Will Affect Your Knobs!")
Tab:AddButton({
	Name = "DESTORY GUI",
	Callback = function()
         OrionLib:Destroy()
      	end    
})
--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
local Tab = Window:MakeTab({
	Name = "JAIL BREAK",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddBind({
	Name = "Bind",
	Default = Enum.KeyCode.E,
	Hold = false,
	Callback = function()
        local args = {[1] = "Chassis", [2] = "Model3"} game:GetService("ReplicatedStorage"):WaitForChild("GarageSpawnVehicle"):FireServer(unpack(args))

	end    
})
Tab:AddButton({
	Name = "SENSATION HUB (WAY TOO OP)",
	Callback = function()
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/730854e5b6499ee91deb1080e8e12ae3.lua"))()
          end    
})

--[[
Name = <string> - The name of the bind.
Default = <keycode> - The default value of the bind.
Hold = <bool> - Makes the bind work like: Holding the key > The bind returns true, Not holding the key > Bind returns false.
Callback = <function> - The function of the bind.
]]
--[[
Name = <string> - The name of the bind.
Default = <keycode> - The default value of the bind.
Hold = <bool> - Makes the bind work like: Holding the key > The bind returns true, Not holding the key > Bind returns false.
Callback = <function> - The function of the bind.
]]
--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
Tab:AddButton({
	Name = "SILENT AIM + WALLBANG",
	Callback = function()
getgenv().toggled = true --/ true & f1alse

getgenv().old = getgenv().old or require(game:GetService("ReplicatedStorage").Module.RayCast).RayIgnoreNonCollideWithIgnoreList

if getgenv().toggled then
	require(game:GetService("ReplicatedStorage").Module.RayCast).RayIgnoreNonCollideWithIgnoreList = function(...)
		local nearestDistance, nearestEnemy = 1000, nil
	    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	    	if v.Team ~= game:GetService("Players").LocalPlayer.Team and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
	    	    if (v.Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < nearestDistance then
	    	    	nearestDistance, nearestEnemy = (v.Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude, v
	    	    end
	    	end
	    end
	    local arg = {old(...)}
	    if (tostring(getfenv(2).script) == "BulletEmitter" or tostring(getfenv(2).script) == "Taser") and nearestEnemy then
		    arg[1] = nearestEnemy.Character.HumanoidRootPart
		    arg[2] = nearestEnemy.Character.HumanoidRootPart.Position
		end
	    return unpack(arg)
	end
else
	require(game:GetService("ReplicatedStorage").Module.RayCast).RayIgnoreNonCollideWithIgnoreList = getgenv().old
end
      	end    
})
Tab:AddButton({
	Name = "SILENT AIM + WALLBANG (OFF)",
	Callback = function()
getgenv().toggled = false --/ true & f1alse

getgenv().old = getgenv().old or require(game:GetService("ReplicatedStorage").Module.RayCast).RayIgnoreNonCollideWithIgnoreList

if getgenv().toggled then
	require(game:GetService("ReplicatedStorage").Module.RayCast).RayIgnoreNonCollideWithIgnoreList = function(...)
		local nearestDistance, nearestEnemy = 1000, nil
	    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	    	if v.Team ~= game:GetService("Players").LocalPlayer.Team and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
	    	    if (v.Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < nearestDistance then
	    	    	nearestDistance, nearestEnemy = (v.Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude, v
	    	    end
	    	end
	    end
	    local arg = {old(...)}
	    if (tostring(getfenv(2).script) == "BulletEmitter" or tostring(getfenv(2).script) == "Taser") and nearestEnemy then
		    arg[1] = nearestEnemy.Character.HumanoidRootPart
		    arg[2] = nearestEnemy.Character.HumanoidRootPart.Position
		end
	    return unpack(arg)
	end
else
	require(game:GetService("ReplicatedStorage").Module.RayCast).RayIgnoreNonCollideWithIgnoreList = getgenv().old
end
      	end    
})
local Tab = Window:MakeTab({
	Name = "GLIDE SIM",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
 
Tab:AddButton({
	Name = "+1M SPEED (LIGHTNING)",
	Callback = function()
         local a = 1000000
for i = 1,a do
  game:GetService("ReplicatedStorage").Remote.Event.Game:FindFirstChild("[C-S]PlayerPick"):FireServer(1)
end
      	end    
})

_G.RunningAutoFarm = true

function pooerpe()
while _G.RunningAutoFarm == true do
  game:GetService("ReplicatedStorage").Remote.Event.Game:FindFirstChild("[C-S]PlayerPick"):FireServer(50)
wait(0.0000001)
end
end

Tab:AddToggle({
	Name = "QUICK SPEED AFK AUTO FARM",
	Defualt = false,
	Callback = function(Value)
         _G.RunningAutoFarm = Value
         pooerpe()
      	end    
})
Tab:AddButton({
	Name = "+10K SPEED",
	Callback = function()
         local a = 10000
for i = 1,a do
  game:GetService("ReplicatedStorage").Remote.Event.Game:FindFirstChild("[C-S]PlayerPick"):FireServer(1)
end
      	end    
})
Tab:AddButton({
	Name = "+1 SPEED",
	Callback = function()
  game:GetService("ReplicatedStorage").Remote.Event.Game:FindFirstChild("[C-S]PlayerPick"):FireServer(1)
      	end    
})
Tab:AddButton({
	Name = "SLOWER AUTOFARM (LESS CHANCE OF BAN)",
	Callback = function()
         function l() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2.90702939, 181.860809, 11.6168785, -0.999289513, 0.00669043371, 0.0370909795, -1.2993616e-08, 0.984118164, -0.177514598, -0.0376895554, -0.177388474, -0.983418941) wait(120) l() end l()
      	end    
})
Tab:AddLabel("Or Just Use The Built In Auto-Fly To Not Get Ban!")

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
local Tab = Window:MakeTab({
	Name = "RACE CLICKER",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
Tab:AddButton({
	Name = "AUTO FARM",
	Callback = function()
      		function opp()
				game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ClickService"):WaitForChild("RF"):WaitForChild("Click"):InvokeServer()
				wait(0000000000000000000000000000000000000000000000000000000000000000000000000000000.1)
				opp()
			end
			opp()
  	end   
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
local Tab = Window:MakeTab({
	Name = "GLOBE",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
Tab:AddButton({
	Name = "INFINITE YEILD (1M+ GAMES)",
	Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
      	end    
})
Tab:AddButton({
	Name = "OWL HUB (50+ GAMES)",
	Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))()
      	end    
})
local Tab = Window:MakeTab({
	Name = "LIFTING SIM",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
Tab:AddButton({
	Name = "Auto Farm Script",
	Callback = function()
		loadstring(game:HttpGetAsync('https://rentry.co/46649/raw'))()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
local Tab = Window:MakeTab({
	Name = "BLOXBURG",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
Tab:AddButton({
	Name = "AUTO FARM SCRIPT BANABLE",
	Callback = function()
		loadstring(game:HttpGet("https://luxhub.cc/script.lua"))()

  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
