local NotificationService = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

NotificationService:MakeNotification({
	Name = "Comet",
	Content = "Please run /console or wait 30s.",
	Image = "rbxassetid://4483345998",
	Time = 6.8
})

function consoleintro()
    local player = Players.LocalPlayer
    print("Welcome to CometHub,", player.Name, "!")
    print("=======================================")
    print("System INFO:")
    print("Exec:", identifyexecutor())
    print("Username:", player.Name)

    function rankchecker(player)
        local devs = {"", "", "", "", "", ""}

        local function isDeveloper(playerName)
            for _, dev in ipairs(devs) do
                if dev == playerName then
                    return true
                end
            end
            return false
        end

        if isDeveloper(player.Name) then 
            print("Rank: Dev")
        elseif player.Name == "Your_MilkMaker" then 
            print("Rank: Owner")
        else
            print("Rank: User")
        end
    end
    rankchecker(player)
    print("=======================================")
    print("Shortly, a Graphical Interface will load, this is CometHub. Thank you for going through the console introduction.")
    print("EWT: 30s")
    wait(30)
end
consoleintro()
