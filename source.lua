local AccessKey = "AquaHubOpenBetaLol"
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local plr = game.Players.LocalPlayer
local Window = Rayfield:CreateWindow({
    Name = "AquaHub",
    LoadingTitle = "Unlimited Power.",
    LoadingSubtitle = "Fetching assets from github..",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil,
        FileName = "NeptuneHaxx"
    },
    Discord = {
        Enabled = false,
        Invite = "noinvitelink",
        RememberJoins = true
    },
    KeySystem = false,
    KeySettings = {
        Title = "AquaHub",
        Subtitle = "Access Point",
        Note = "Insert The Public Key attached to the release note.",
        FileName = "NotSaved",
        SaveKey = false,
        GrabKeyFromSite = true,
        Key = {AccessKey}
    }
})
local MainPage = Window:CreateTab(". quick access")
local PlayerPage = Window:CreateTab(". player")
local GamesPage = Window:CreateTab(". games")
local External = Window:CreateTab(". visual")
-- MAIN TAB
local IY = {}
IY.main = MainPage:CreateButton({
    Name = "IY",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
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
-- Visuals
local FOVSlider = External:CreateSlider({
   Name = "FOV",
   Range = {0, 100},
   Increment = 10,
   Suffix = " ",
   CurrentValue = 10,
   Flag = "FOVSlider",
   Callback = function(value)
local player = game.Players.LocalPlayer
local camera = player.Camera
camera.FieldOfView = value
   end,
})

local ESP = {}
ESP.external = External:CreateButton({
    Name = "ESP",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/hyperionlawl/PrismHub/main/Modules/Visual/PrismESP.lua'))()
    end,
})

local External = {}
AquaGUI.external = External:CreateButton({
    Name = "Aqua.gg",
    Callback = function()

    end,
})

-- ConfigurationSaving
Rayfield:LoadConfiguration()
-- Loaded Notif
       Rayfield:Notify({
           Title = "AquaHub",
           Content = "The script has been completely loaded | K open/close",
           Duration = 6.5,
           Image = 0,
           Actions = { -- Notification Buttons
               Ignore = {
                   Name = "#",
                   Callback = function()
                   end
               },
           },
       })
