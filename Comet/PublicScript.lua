local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local plr = game.Players.LocalPlayer
local Window = Rayfield:CreateWindow({
   Name = "Cosmo.lol // ALPHA STAGE",
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
      Key = {"Cosmolol"}
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
   Callback = function(value)
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
   Callback = function(value)
       local player = game.Players.LocalPlayer
       local character = player.Character or player.CharacterAdded:Wait()
       character.Humanoid.JumpPower = value
   end,
})

local HeadlessButton = PlayerPage:CreateButton({
   Name = "Headless",
   Callback = function()
       local lp = game:GetService "Players".LocalPlayer
       if lp.Character:FindFirstChild "Head" then
           local char = lp.Character
           char.Archivable = true
           local new = char:Clone()
           new.Parent = workspace
           lp.Character = new
           wait(2)
           local oldhum = char:FindFirstChildWhichIsA "Humanoid"
           local newhum = oldhum:Clone()
           newhum.Parent = char
           newhum.RequiresNeck = false
           oldhum.Parent = nil
           wait(2)
           lp.Character = char
           new:Destroy()
           wait(1)
           newhum:GetPropertyChangedSignal("Health"):Connect(function()
               if newhum.Health <= 0 then
                   oldhum.Parent = lp.Character
                   wait(1)
                   oldhum:Destroy()
               end
           end)
           workspace.CurrentCamera.CameraSubject = char
           if char:FindFirstChild "Animate" then
               char.Animate.Disabled = true
               wait(.1)
               char.Animate.Disabled = false
           end
           lp.Character:FindFirstChild "Head":Destroy()
       end
   end,
})

-- GAMES TAB: (MOST LINES)

local ArsenalButton = GamesPage:CreateButton({
   Name = "Arsenal",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/cris123452/my/main/cas",true))()
   end,
})

local BloxFruitsButton = GamesPage:CreateButton({
   Name = "Blox Fruits | MAY HAVE KEY",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Yatsuraa/Yuri/main/Winterhub_V2.lua"))()
   end,
})

local VortexDHButton = GamesPage:CreateButton({
   Name = "Vortex DH",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/ImagineProUser/vortexdahood/main/vortex", true))()
   end,
})

local TOHButton = GamesPage:CreateButton({
   Name = "TOH | MAY HAVE KEY",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/dqvh/dqvh/main/SprinHub",true))()
   end,
})

local MM2Button = GamesPage:CreateButton({
   Name = "MM2",
   Callback = function()
       loadstring(game:HttpGet('https://pastebin.com/raw/JE66c77Q'))()
   end,
})

local DustyRoadTripButton = GamesPage:CreateButton({
   Name = "A dusty road trip",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/dusty/main/trip"))()
   end,
})

local DOORSButton = GamesPage:CreateButton({
   Name = "DOORS",
   Callback = function()
       loadstring(game:HttpGet(('https://pastebin.com/raw/9QPGnLx6'),true))()
   end,
})

local BedwarsButton = GamesPage:CreateButton({
   Name = "Bedwars",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
   end,
})

local AdoptMeButton = GamesPage:CreateButton({
   Name = "Adopt Me",
   Callback = function()
       if isfolder("IceHub") then
           delfolder("IceHub")
       end
       loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/AdoptMe/main/AdoptMe"))() -- Skips GameID check.
   end,
})

local BrookhavenButton = GamesPage:CreateButton({
   Name = "Brookhaven RP",
   Callback = function()
       if isfolder("IceHub") then
           delfolder("IceHub")
       end
       loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/Brookhaven/main/Brookhaven"))() -- Skips GameID check.
   end,
})

-- ConfigurationSaving
Rayfield:LoadConfiguration()
-- Loaded Notif
       Rayfield:Notify({
           Title = "COSMO:",
           Content = "The script has been completely loaded! Press K to show and hide the GUI",
           Duration = 6.5,
           Image = 0,
           Actions = { -- Notification Buttons
               Ignore = {
                   Name = "Okay!",
                   Callback = function()
                   end
               },
           },
       })
