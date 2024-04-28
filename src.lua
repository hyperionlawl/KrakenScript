local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/CustomFIeld/main/RayField.lua'))()

local Window = Rayfield:CreateWindow({
   Name = "PrismHub // v0.01a",
   LoadingTitle = "The Prism Universal Interface / TPUI",
   LoadingSubtitle = "Made with <3 by PrismTeam",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil,
      FileName = "notbeingused"
   },
   },
   KeySystem = true,
   KeySettings = {
      Title = "PrismHub",
      Subtitle = "You require an access key, this will need to be inserted everytime you load up TPUI. || SAVE IT IN A TXT FILE!",
      Note = "https://prismteam.vercel.app/",
      FileName = "key",
      SaveKey = false,
      GrabKeyFromSite = false, --[[If true put the raw text link]]
      Key = "flames" -- Reference to the OG branding.
   }
})

Rayfield:Notify({
	Title = "Welcome to Prism!",
	Content = "To get started input your access key.",
	Duration = 6.5,
	Actions = {
		Ignore = {
			Name = ">>",
			Callback = function()
print("PrismNotificationRes:Dismissed")
			end
		},
	},
})

local scripts = Window:CreateTab("main")

local Button = scripts:CreateButton({
   Name = "Admin GUI",
   Interact = 'Changable',
   Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() -- Infyield is the OG util bruv
   end,
})

local Slider = scripts:CreateSlider({
   Name = "Walkspeed",
   Range = {0, 100},
   Increment = 10,
   Suffix = "Bananas",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(v)
game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = v   
end,
})

local Slider = scripts:CreateSlider({
   Name = "FOV",
   Range = {0, 100},
   Increment = 10,
   Suffix = "Bananas",
   CurrentValue = 10,
   Callback = function(fov)
 game:GetService("Workspace").CurrentCamera.FieldOfView = fov 
end,
})

local Toggle = scripts:CreateToggle({
   Name = "Fly", -- The code in the callback semi literally came out of my ass :sob:
   CurrentValue = false,
   Callback = function(Value)
        if value then

            game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(character)
                local humanoid = character:WaitForChild("Humanoid")
                local fly = Instance.new("Fly")
                fly.Name = "Fly"
                fly.Parent = humanoid
                humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, true)
            end)
        else

            local fly = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fly")
            if fly then
                fly:Destroy()
   end,
})

local Button = scripts:CreateButton({
   Name = "Destroy TPUI",
   Interact = 'Changable',
   Callback = function()
Rayfield:Destroy()
   end,
})
