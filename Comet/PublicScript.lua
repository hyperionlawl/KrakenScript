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
      Note = "Insert your Cosmatic Licence.",
      FileName = "CosmoLicence",
      SaveKey = false,
      GrabKeyFromSite = false,
      Key = {"COSMOWINNING","BETABITCHESS","Cosmo","Flame","BlackeriumDays","RememberAtlantis","Prism"}
   }
})

local MainPage = Window:CreateTab(". quick access")
local PlayerPage = Window:CreateTab(". player")
local GamesPage = Window:CreateTab(". games")

-- MAIN TAB
local ESP = {}
ESP.main = MainPage:CreateButton({
   Name = "ESP",
   Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/hyperionlawl/PrismHub/main/Modules/Visual/PrismESP.lua'))()
   end,
})

local IY = {}
IY.main = MainPage:CreateButton({
   Name = "IY",
   Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

local cosmoexec = {}
cosmoexec.main = MainPage:CreateButton({
   Name = "cosmo beta executor GUI",
   Callback = function()
       Rayfield:Notify({
           Title = "Error",
           Content = plr.Name .. " isn't whitelisted! Womp womp. 💀",
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
       plr:Kick("Bye bye ;)")
   end,
})

-- PLAYER TAB:

local WalkspeedSlider = PlayerPage:CreateSlider({
   Name = "Walkspeed",
   Range = {0, 100},
   Increment = 10,
   Suffix = " ",
   CurrentValue = 10,
   Flag = "WalkSpeedSlider",
   Callback = function(Value)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
character.Humanoid.WalkSpeed = value
   end,
})

local JumpSlider = PlayerPage:CreateSlider({
   Name = "Jump",
   Range = {0, 100},
   Increment = 10,
   Suffix = " ",
   CurrentValue = 10,
   Flag = "JumpPowerSlider",
   Callback = function(Value)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
character.Humanoid.JumpPower = value
   end,
})

-- GAMES TAB: (MOST LINES)

local Button = GamesPage:CreateButton({
   Name = "Arsenal",
   Callback = function()

   end,
})

local Button = GamesPage:CreateButton({
   Name = "Blox Fruits",
   Callback = function()

   end,
})

-- ConfigurationSaving
Rayfield:LoadConfiguration()
