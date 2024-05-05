local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "PrismScript - BETA v0.2",
	LoadingTitle = "Prism",
	LoadingSubtitle = "#1 ScriptHub | BETA CHANNEL",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "PrismBetaHub",
		FileName = "Configuaration"
	},
	KeySystem = true,
	KeySettings = {
		Title = "PrismBETAGUI",
		Subtitle = "Key System",
		Note = "Enter the access key.",
		SaveKey = true,
		Key = "PrismTestingServer"
	}
})
local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Script")

local Button = Tab:CreateButton({
	Name = "InfYield",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end,
})

local Section2 = Tab:CreateSection("Visual")

local Toggle = Tab:CreateToggle({
    Name = "Toggle Tracers",
    CurrentValue = false,
    Flag = "ToggleTracers",
    Callback = function(Value)
        if Value then
            game:GetService("RunService").RenderStepped:Connect(function()

                for _, player in ipairs(game:GetService("Players"):GetPlayers()) do

                    if player ~= game:GetService("Players").LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0 and player.Character:FindFirstChild("Head") then

                        local tracer = Drawing.new("Line")
                        tracer.Visible = true
                        tracer.From = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
                        tracer.To = player.Character.Head.Position
                        tracer.Color = Color3.new(0, 1, 0)
                        tracer.Thickness = 2
                    end
                end
            end)
        else

            for _, drawing in ipairs(Drawing:GetChildren()) do
                drawing:Remove()
            end
        end
    end,
})

local Button = Tab:CreateButton({
	Name = "ESP",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end,
})


local Section3 = Tab:CreateSection("Sliders")

local Slider = Tab:CreateSlider({
	Name = "Walkspeed",
	Range = {0, 100},
	Increment = 10,
	Suffix = " ",
	CurrentValue = 10,
	Flag = "WalkspeedSlider",
	Callback = function(num)
local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.WalkSpeed = num
wait(5)
		print("=====================")
		print("WALKSPEED CHANGED! #")
		print("=====================")
	end,
})

local Section4 = Tab:CreateSection("Misc")

local Keybind = Tab:CreateKeybind({
	Name = "Mass Console",
	CurrentKeybind = "Q",
	HoldToInteract = false,
	Flag = "MassConsoleKeybind"
	Callback = function(Keybind)
		print("=====================")
		print("==== PRISM HUB =====")
		print("=== MASS CONSOLE ====")
		print("prismteam.vercel.app/")
		print("dsc.gg/prismteam ====")
		print("=====================")
	end,
})

local Button = Tab:CreateButton({
	Name = "Destroy UI",
	Callback = function()
		Rayfield:Destroy()
	end,
})
