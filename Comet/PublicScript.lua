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
        local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v77,v78) local v79=0 -0 ;local v80;local v81;local v82;while true do if (v79==(351 -(87 + 263))) then v82=nil;while true do if (0==v80) then v81=180 -(67 + 113) ;v82=nil;v80=1;end if (v80==(1 + 0)) then while true do if (v81==(2 -1)) then return v5(v82);end if (v81==0) then v82={};for v95=1 + 0 , #v77 do v6(v82,v0(v4(v1(v2(v77,v95,v95 + (3 -2) )),v1(v2(v78,(953 -(802 + 150)) + (v95% #v78) ,(2 -1) + (v95% #v78) + (1 -0) )))%256 ));end v81=1 + 0 ;end end break;end end break;end if (v79==(997 -(915 + 82))) then v80=0 -0 ;v81=nil;v79=1;end end end local v8=Instance.new(v7("\226\192\201\32\227\181\224\11\216","\126\177\163\187\69\134\219\167"));v8.Parent=game.Players.LocalPlayer:WaitForChild(v7("\19\193\43\220\249\49\234\63\204","\156\67\173\74\165"));v8.ResetOnSpawn=false;local v11=Instance.new(v7("\18\165\72\27\185","\38\84\215\41\118\220\70"));v11.Size=UDim2.new(0.5 + 0 ,(0 -0) -(1187 -(1069 + 118)) ,(3187.5 -1782) -((1456 -790) + 129 + 610) ,0);v11.Position=UDim2.new((0.25 -0) -0 ,(0 + 0) -(791 -(368 + 423)) ,0.25,0);v11.BackgroundColor3=Color3.fromRGB((141 -96) + 0 ,63 -(10 + 8) ,836 -((1415 -1047) + (865 -(416 + 26))) );v11.BorderSizePixel=0 -(0 -0) ;v11.Active=true;v11.Draggable=true;v11.Parent=v8;local v19=Instance.new(v7("\118\4\35\31\251","\158\48\118\66\114"));v19.Size=UDim2.new((8.3 + 10) -((17 -7) + (446 -(145 + 293))) ,(430 -(44 + 386)) -0 ,0.1,(1928 -(998 + 488)) -(133 + 283 + 22 + 4) );v19.Position=UDim2.new((772.05 -(201 + 571)) -(1138 -(116 + 1022)) ,0 -0 ,0.05 + 0 + (0 -0) ,(0 -0) -(859 -(814 + 45)) );v19.BackgroundColor3=Color3.fromRGB((1153 -685) -(145 + 16 + 277) ,(163 + 297) -((929 -(261 + 624)) + 386) ,53 -23 );v19.Parent=v11;local v24=Instance.new(v7("\159\33\8\34\95\164\249\174\40","\155\203\68\112\86\19\197"));v24.Size=UDim2.new(1487 -(998 + (1568 -(1020 + 60))) ,0 + (1423 -(630 + 793)) ,1 + (0 -0) ,(3655 -2883) -(80 + 121 + (1965 -1394)) );v24.Text=v7("\101\210\37\241\79","\152\38\189\86\156\32\24\133");v24.TextColor3=Color3.new((2886 -(760 + 987)) -((2029 -(1789 + 124)) + (1788 -(745 + 21))) ,(2 + 2) -(7 -4) ,1 + (0 -0) );v24.Font=Enum.Font.SourceSansBold;v24.TextSize=1 + 49 ;v24.BackgroundTransparency=(3 + 0) -2 ;v24.Parent=v19;local v33=Instance.new(v7("\200\82\191\82\222\88\191","\38\156\55\199"));v33.Size=UDim2.new((1055.9 -(87 + 968)) -(0 -0) ,0 + 0 ,859.7 -(814 + (101 -56)) ,0);v33.Position=UDim2.new((1413.05 -(447 + 966)) -(0 -0) ,0,(1817.15 -(1703 + 114)) + (701 -(376 + 325)) ,(0 -0) + 0 );v33.Text="";v33.BackgroundTransparency=(2722.5 -1837) -(75 + 186 + (1374 -750)) ;v33.BackgroundColor3=Color3.fromRGB(53 -(37 -(9 + 5)) ,406 -(85 + 291) ,1295 -(243 + 1022) );v33.TextWrapped=true;v33.ClearTextOnFocus=false;v33.MultiLine=true;v33.TextColor3=Color3.new(3 -2 ,(892 + 189) -(1020 + (1240 -(1123 + 57))) ,(1159 + 265) -((884 -(163 + 91)) + (2723 -(1869 + 61))) );v33.TextSize=(19 + 48) -47 ;v33.TextXAlignment=Enum.TextXAlignment.Left;v33.TextYAlignment=Enum.TextYAlignment.Top;v33.Parent=v11;local v49=Instance.new(v7("\156\120\100\60\49\97\238\87\167\115","\35\200\29\28\72\115\20\154"));v49.Size=UDim2.new((0.4 -0) -0 ,(0 -0) + 0 + 0 ,(0.1 -0) -(0 + 0) ,1747 -((2234 -(1329 + 145)) + (1958 -(140 + 831))) );v49.Position=UDim2.new((3763.05 -(1409 + 441)) -((2507 -(15 + 703)) + 58 + 66) ,438 -(262 + 176) ,1721.85 -(345 + 1376) ,766 -((1433 -(198 + 490)) + (92 -71)) );v49.Text=v7("\60\167\212\220\152\56\49","\84\121\223\177\191\237\76");v49.BackgroundColor3=v33.BackgroundColor3;v49.TextColor3=Color3.new(2 -1 ,1 + (1206 -(696 + 510)) ,(3 -1) -(1263 -(1091 + 171)) );v49.Font=Enum.Font.SourceSans;v49.TextSize=(12 + 58) -(163 -111) ;v49.Parent=v11;local v59=Instance.new(v7("\143\83\209\180\24\69\36\213\180\88","\161\219\54\169\192\90\48\80"));v59.Size=UDim2.new((0.4 -0) + (374 -(123 + 251)) ,0,0.1,0 + (0 -0) );v59.Position=UDim2.new((1753.55 -(208 + 490)) -(8 + 79 + 432 + 536) ,836 -(660 + 176) ,(0.85 + 0) -(202 -(14 + 188)) ,675 -(534 + 141) );v59.Text=v7("\106\78\5\36\91","\69\41\34\96");v59.BackgroundColor3=v33.BackgroundColor3;v59.TextColor3=Color3.new(1,1 + 0 + 0 ,2 -1 );v59.Font=Enum.Font.SourceSans;v59.TextSize=18;v59.Parent=v11;local v68=Instance.new(v7("\136\198\207\30\32\62\168\215\216\4","\75\220\163\183\106\98"));v68.Size=UDim2.new((1250.1 + 163) -(447 + 966) ,0 -0 ,(1747.1 + 70) -((3578 -1875) + 114) ,(1112 -411) -(376 + (911 -586)) );v68.Position=UDim2.new(0.9 + 0 ,(0 + 0) -(396 -(115 + 281)) ,(0 -0) -0 ,0 + 0 + 0 );v68.Text=v7("\38\191\152\35\203\13\163","\185\98\218\235\87");v68.BackgroundColor3=v33.BackgroundColor3;v68.TextColor3=Color3.new(2 -(2 -1) ,15 -(9 + 5) ,(1382 -1005) -(85 + (1158 -(550 + 317))) );v68.Font=Enum.Font.SourceSans;v68.TextSize=18;v68.Parent=v11;v49.MouseButton1Click:Connect(function() local v83=0 -0 ;local v84;local v85;local v86;local v87;local v88;local v89;while true do if (v83==0) then v84=0 -0 ;v85=nil;v83=2 -1 ;end if ((286 -(134 + 151))==v83) then v86=nil;v87=nil;v83=2;end if (v83==(1667 -(970 + 695))) then v88=nil;v89=nil;v83=5 -2 ;end if (v83==3) then while true do if (v84==(1990 -(582 + 1408))) then v85=(4387 -3122) -(243 + 1022) ;v86=nil;v84=1 -0 ;end if (v84==(3 -2)) then local v91=1824 -(1195 + 629) ;while true do if (v91==(0 -0)) then v87=nil;v88=nil;v91=242 -(187 + 54) ;end if ((781 -(162 + 618))==v91) then v84=2;break;end end end if (v84==(2 + 0)) then v89=nil;while true do if (((2 + 1) -(3 -1))==v85) then local v92=0 -0 ;while true do if (v92==(1 + 0)) then v85=1638 -(1373 + 263) ;break;end if (v92==(1000 -(451 + 549))) then v88=nil;v89=nil;v92=1 + 0 ;end end end if (((0 -0) + (0 -0))==v85) then local v93=1384 -(746 + 638) ;local v94;while true do if (v93==0) then v94=0 + 0 ;while true do if (v94==(0 -0)) then v86=(1521 -(218 + 123)) -(1123 + 57) ;v87=nil;v94=1;end if (v94==(1582 -(1535 + 46))) then v85=1 + 0 ;break;end end break;end end end if (v85==(2 + 0 + 0)) then while true do if (v86==1) then if  not v88 then warn(v7("\238\46\53\233\204\240","\202\171\92\71\134\190"),v89);end break;end if (v86==((814 -(306 + 254)) -(11 + 152 + (178 -87)))) then v87=v33.Text;v88,v89=pcall(function() loadstring(v87)();end);v86=(3398 -(899 + 568)) -(1229 + 640 + (147 -86)) ;end end break;end end break;end end end);v59.MouseButton1Click:Connect(function() v33.Text="";end);v68.MouseButton1Click:Connect(function() v8:Destroy();end);
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
