function rconsolekey()
print("=========================================")
print("PUBLIC ACCESS KEY: PRISMTEAMWINNING")
print("=========================================")
end

rconsolekey()

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
      Subtitle = "Enter the Public Script Token",
      Note = "check console for the key;)",
      FileName = "key",
      SaveKey = false,
      GrabKeyFromSite = false, --[[If true put the raw text link]]
      Key = "PRISMTEAMWINNING" -- PUBLICSCRIPTTOKEN
   }
})

-- TABS:
local uimanage = Window:CreateTab("ui")
local scripts = Window:CreateTab("main")
local chr = Window:CreateTab("character")

local Button = uimanage:CreateButton({
   Name = "Destroy TPUI",
   Interact = 'Changable',
   Callback = function()
print("Shutting down TPUI.")
wait(2)
Rayfield:Destroy()
   end,
})

local Button = scripts:CreateButton({
   Name = "Admin GUI",
   Interact = 'Changable',
   Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
wait(3)
   end,
})

local Slider = chr:CreateSlider({
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

local Slider = chr:CreateSlider({
   Name = "FOV",
   Range = {0, 100},
   Increment = 10,
   Suffix = "Bananas",
   CurrentValue = 10,
   Callback = function(fov)
 game:GetService("Workspace").CurrentCamera.FieldOfView = fov 
end,
})

local Toggle = chr:CreateToggle({
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
