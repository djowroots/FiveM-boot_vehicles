--[[ Version Checker ]]--
local version = "1.3"

AddEventHandler("onResourceStart", function(resource)
    if resource == GetCurrentResourceName() then
        CheckFrameworkVersion()
    end
end)

function CheckFrameworkVersion()
    PerformHttpRequest("https://raw.githubusercontent.com/itsJarrett/FiveM-boot_vehicles/master/version.txt", function(err, text, headers)
        if text == version then
            print(" ")
            print("---------- BOOT VEHICLES VERSION ----------")
            print("Boot Vehicles Script is up to date and ready to go!")
            print("https://github.com/itsJarrett/FiveM-boot_vehicles")
            print("--------------------------------")
            print(" ")
        else
            print(" ")
            print("---------- BOOT VEHICLES VERSION ----------")
            print("Boot Vehicles Script is outdated. Update for more features!")
            print("https://github.com/itsJarrett/FiveM-boot_vehicles")
            print("--------------------------------")
            print(" ")
        end

    end, "GET", "", {})

end
