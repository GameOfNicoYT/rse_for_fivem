-- # # # # # # # # # # # # # # # # # #
-- #     Software by Nico Proyer     #
-- #  (C) nicoproyer.at, 2019-2024   #
-- #       All rights reserved       #
-- #   Republishing and/or selling   #
-- #          is prohibited          #
-- #                                 #
-- #  SoftwareId: 27082024-FM-485756 #
-- #          Version: 1.0.0         #
-- # # # # # # # # # # # # # # # # # #

-- Rockstar Editor starten
RegisterCommand("rse", function(source, args, rawCommand)
    local player = source

    if player == 0 then
        print("Dieser Befehl kann nur von einem Spieler verwendet werden.")
        return
    end

    if args[1] == "start" then
        TriggerClientEvent('startRockstarEditor', player)
    elseif args[1] == "stop" then
        TriggerClientEvent('stopRockstarEditor', player)
    elseif args[1] == "open" then
        TriggerClientEvent('openRockstarEditor', player)
    else
        print("Ungültiger Befehl. Verwende 'rse start', 'rse stop' oder 'rse open'.")
    end
end, false)
