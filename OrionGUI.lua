local UILib = loadstring(game:HttpGet('https://raw.githubusercontent.com/hyperionlawl/PrismHub/main/LIB/hydralib.lua'))()
local player = Players.LocalPlayer
local Window = UILib.new("CometTest", player.Name, "Rank: User")
local Category1 = Window:Category("Main", "http://www.roblox.com/asset/?id=8395621517")
local SubButton1 = Category1:Button("Combat", "http://www.roblox.com/asset/?id=8395747586")
local Section1 = SubButton1:Section("Section", "Left")
Section1:Button({
    Title = "Kill All",
    ButtonName = "KILL!!",
    Description = "kills everyone",
    }, function(value)
    print(value)
end)
Section1:Toggle({
    Title = "Auto Farm Coins",
    Description = "Optional Description here",
    Default = false
    }, function(value)
    print(value)
end)
Section1:Slider({
    Title = "Walkspeed",
    Description = "",
    Default = 16,
    Min = 0,
    Max = 120
    }, function(value)
    print(value)
end)
Section1:ColorPicker({
    Title = "Colorpicker",
    Description = "",
    Default = Color3.new(255,0,0), -- testing ui libs
    }, function(value)
    print(value)
end)
Section1:Textbox({
    Title = "Damage Multiplier",
    Description = "",
    Default = "",
    }, function(value)
    print(value)
end)
Section1:Keybind({
    Title = "Kill All",
    Description = "",
    Default = Enum.KeyCode.Q,
    }, function(value)
    print(value)
end)
