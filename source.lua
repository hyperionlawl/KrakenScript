local AccessKey = "Krakening"
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local plr = game.Players.LocalPlayer
local Window = Rayfield:CreateWindow({
    Name = "Kraken",
    LoadingTitle = "Unlimited Power.",
    LoadingSubtitle = "Fetching assets from github..",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil,
        FileName = "KrakenGUI"
    },
    Discord = {
        Enabled = false,
        Invite = "noinvitelink",
        RememberJoins = true
    },
    KeySystem = true,
    KeySettings = {
        Title = "Kraken",
        Subtitle = "Access Point",
        Note = "We winning",
        FileName = "NotSaved",
        SaveKey = false,
        GrabKeyFromSite = true,
        Key = {AccessKey}
    }
})
local MainPage = Window:CreateTab(". quick access")
local PlayerPage = Window:CreateTab(". player")
local GamesPage = Window:CreateTab(". games")
local ExternalTab = Window:CreateTab(". visual")
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
local FOVSlider = ExternalTab:CreateSlider({
   Name = "FOV",
   Range = {0, 100},
   Increment = 10,
   Suffix = " ",
   CurrentValue = 10,
   Flag = "FOVSlider",
   Callback = function(value)
       local camera = workspace.CurrentCamera
       camera.FieldOfView = value
   end,
})

local ESP = {}
ESP.external = ExternalTab:CreateButton({
    Name = "ESP",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/hyperionlawl/PrismHub/main/Modules/Visual/PrismESP.lua'))()
    end,
})

local ExecSkin = ExternalTab:CreateButton({
   Name = "Executor GUI",
   Callback = function()
       if isfolder("IceHub") then
           delfolder("IceHub")
       end
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local guiFrame = Instance.new("Frame")
guiFrame.Size = UDim2.new(0.4, 0, 0.4, 0)
guiFrame.Position = UDim2.new(0.3, 0, 0.3, 0)
guiFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
guiFrame.BorderSizePixel = 0
guiFrame.AnchorPoint = Vector2.new(0.5, 0.5)
guiFrame.Parent = playerGui

local frameCorner = Instance.new("UICorner")
frameCorner.CornerRadius = UDim.new(0, 12)
frameCorner.Parent = guiFrame

local dragging = false
local dragInput, mousePos, framePos

local function update(input)
    local delta = input.Position - mousePos
    guiFrame.Position = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
end

guiFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        mousePos = input.Position
        framePos = guiFrame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

guiFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0.9, 0, 0.6, 0)
textBox.Position = UDim2.new(0.05, 0, 0.1, 0)
textBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
textBox.TextWrapped = true
textBox.ClearTextOnFocus = false
textBox.Parent = guiFrame

local textBoxCorner = Instance.new("UICorner")
textBoxCorner.CornerRadius = UDim.new(0, 8)
textBoxCorner.Parent = textBox

local executeButton = Instance.new("TextButton")
executeButton.Size = UDim2.new(0.4, 0, 0.15, 0)
executeButton.Position = UDim2.new(0.3, 0, 0.75, 0)
executeButton.BackgroundColor3 = Color3.fromRGB(0, 150, 200)
executeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
executeButton.Text = "Execute"
executeButton.Parent = guiFrame

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 8)
buttonCorner.Parent = executeButton

local function executeScript()
    local scriptText = textBox.Text
    local success, errorMessage = pcall(function()
        local scriptFunction = loadstring(scriptText)
        scriptFunction()
    end)
    
    if not success then
        warn("ERR:" .. errorMessage)
    end
end

executeButton.MouseButton1Click:Connect(executeScript)
   end,
})

-- ConfigurationSaving
Rayfield:LoadConfiguration()
-- Loaded Notif
Rayfield:Notify({
   Title = "Kraken",
   Content = "Welcome to the homewrecker project.",
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
