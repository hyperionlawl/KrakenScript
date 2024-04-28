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

local Button = scripts:CreateButton({
   Name = "Server Browser",
   Interact = 'Changable',
   Callback = function()
p
   end,
})

