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

-- Client-seitige Events für den Rockstar Editor

-- Aufnahme starten
RegisterNetEvent('startRockstarEditor')
AddEventHandler('startRockstarEditor', function()
    StartRecording(1) -- Startet die Aufnahme
    print("Rockstar Editor Aufnahme gestartet.")
end)

-- Aufnahme stoppen und Clip speichern
RegisterNetEvent('stopRockstarEditor')
AddEventHandler('stopRockstarEditor', function()
    StopRecordingAndSaveClip() -- Stoppt die Aufnahme und speichert den Clip
    print("Rockstar Editor Aufnahme gestoppt und Clip gespeichert.")
end)

-- Rockstar Editor öffnen
RegisterNetEvent('openRockstarEditor')
AddEventHandler('openRockstarEditor', function()
    NetworkSessionLeaveSinglePlayer() -- Beendet die Sitzung und wechselt in den Singleplayer-Modus
    ActivateRockstarEditor()          -- Öffnet den Rockstar Editor
    print("Rockstar Editor geöffnet.")
end)
