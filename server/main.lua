if Config.Frameworks == 'ESX' then
    ESX = exports['es_extended']:getSharedObject()
elseif Config.Frameworks == 'QBCore' then
    QBCore = exports['qb-core']:GetCoreObject()
end

if Config.Frameworks == 'QBCore' then
    QBCore.Commands.Add(Config.Commands, "", {}, false, function(source)
        local src = source
        TriggerClientEvent('gusti-boostfps:showMenu', src)
    end, 'user')
end

--[[ Version Checker ]]--
local version = "1.0.2"

AddEventHandler("onResourceStart", function(resource)
    if Config.CheckForUpdates then
        if resource == GetCurrentResourceName() then
            CheckFrameworkVersion()
        end
    end
end)

function CheckFrameworkVersion()
    PerformHttpRequest("https://raw.githubusercontent.com/Gustiagung19/gusti-boostfps/master/version.txt", function(err, text, headers)
        if string.match(text, version) then
            print(" ")
            print("--------- ^4GUSTI BOOSTFPS VERSION^7 ---------")
            print("gusti-boostfps ^2is up to date^7 and ready to go!")
            print("Running on Version: ^2" .. version .."^7")
            print("^4https://github.com/Gustiagung19/gusti-boostfps^7")
            print("--------------------------------------------")
            print(" ")
        else
          print(" ")
          print("--------- ^4GUSTI BOOSTFPS VERSION^7 ---------")
          print("gusti-boostfps ^1is not up to date!^7 Please update!")
          print("Curent Version: ^1" .. version .. "^7 Latest Version: ^2" .. text .."^7")
          print("^4https://github.com/Gustiagung19/gusti-boostfps^7")
          print("--------------------------------------------")
          print(" ")
        end

    end, "GET", "", {})

end
