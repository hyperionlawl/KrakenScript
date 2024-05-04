-- Window
local PrismUI = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = PrismUI:MakeWindow({Name = "Orion Example", HidePremium = true, SaveConfig = true, ConfigFolder = "PrismTeam:PrismHub"})
-- Scripts Tab
local ScriptsTab = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Scripts = PlayerTab:AddSection({
	Name = "Scripts"
})

Scripts:AddButton({
	Name = "ESP",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/hyperionlawl/PrismHub/main/Modules/Visual/PrismESP.lua'))()
print("ESP is now active!")
  	end    
})

Scripts:AddButton({
	Name = "Infinite Yield",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
print("Prism has loaded IY!")
  	end    
})

Scripts:AddButton({
	Name = "DEx",
	Callback = function()
PrismUI:MakeNotification({
	Name = "PrismHub",
	Content = "That script hasnt been added yet! It will come in a later update.",
	Image = "rbxassetid://4483345998",
	Time = 5
})
  	end    
})

local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local PlayerSection = PlayerTab:AddSection({
	Name = "Player"
})


PlayerSection:AddSlider({
	Name = "Walkspeed",
	Min = 16,
	Max = 100,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Walkspeed",
	Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})
local SettingsTab = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local SettingsSection = SettingsTab:AddSection({
	Name = "Settings"
})

SettingsSection:AddButton({
	Name = "Destroy UI",
	Callback = function()
        PrismUI:Destroy()
  	end    
})

PrismUI:Init()
