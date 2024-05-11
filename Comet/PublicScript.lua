local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local plr = game.Players.LocalPlayer
local Window = Rayfield:CreateWindow({
   Name = "CosmoGUI",
   LoadingTitle = "Beating the best.",
   LoadingSubtitle = "Last Updated: 11/5/24",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "CosmoGUI"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },
   KeySystem = true,
   KeySettings = {
      Title = "CosmoGUI",
      Subtitle = "Keysystem",
      Note = "paste the code from prismteam.vercel.app/auth.html into here to gain access.",
      FileName = "CosmoLicence",
      SaveKey = false,
      GrabKeyFromSite = false,
      Key = {"COSMOWINNING","BETABITCHESS","Cosmo","Flame","BlackeriumDays","RememberAtlantis","Prism"}
   }
})

local MainPage = Window:CreateTab(". main")
local PlayerPage = Window:CreateTab(". player")

local ESP.main = MainPage:CreateButton({
   Name = "ESP",
   Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/hyperionlawl/PrismHub/main/Modules/Visual/PrismESP.lua'))()
   end,
})

local IY.main = MainPage:CreateButton({
   Name = "IY",
   Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

local cosmoexec.main = MainPage:CreateButton({
   Name = "cosmo beta executor GUI",
   Callback = function()
Rayfield:Notify({
   Title = "Error",
   Content = plr.Name .. "Isnt whitelisted! Womp womp. 💀",
   Duration = 6.5,
   Image = 0,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
plr:Kick("Bye bye ;)")
      end
   },
},
})
wait(10)
plr:Kick("Bye bye;)")
   end,
})

-- ConfigurationSaving
Rayfield:LoadConfiguration()
