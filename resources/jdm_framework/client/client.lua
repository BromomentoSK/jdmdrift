-- Čau! Ak si toto dumpol, tak si mega veľká píča a prajem ti ten najhorší deň, aký si kedy mohol mať.
-- Ak by si bol zasa z tých ktorý stále pindajú že toto není custom apod. , tak sa radšej choď zakopať.
-- Niečo som si sám napísal, ako ten kód ktorý odstraňuje pedov a weapon wheel. Pomohol mi marvis a strin. Díky moc.
-- A ty čo si to dumpol. Venujem ti video. https://www.youtube.com/watch?v=dQw4w9WgXcQ
-- A tento framework ti ani poriadne nepojde, lebo potrebuje Server side, ale ten bohuzial nikdy neziskas BOOHOOOO :(((
local localPlayerId = PlayerId()
local serverId = GetPlayerServerId(localPlayerId)
local serverPlayerId = GetPlayerFromServerId(playerServerId)


Citizen.CreateThread(function()
	while true do
	Citizen.Wait(0)
		local playerPed = GetPlayerPed(-1)
		local pos = GetEntityCoords(playerPed)
		if playerPed then
			SetVehicleDensityMultiplierThisFrame(0.0)
			SetPedDensityMultiplierThisFrame(0.0)
			SetRandomVehicleDensityMultiplierThisFrame(0.0)
			SetParkedVehicleDensityMultiplierThisFrame(0.0)
			SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)
			RemoveVehiclesFromGeneratorsInArea(pos['x'] - 500.0, pos['y'] - 500.0, pos['z'] - 500.0, pos['x'] + 500.0, pos['y'] + 500.0, pos['z'] + 500.0);
			SetGarbageTrucks(0)
			SetRandomBoats(0)
		end
	end
end)


Citizen.CreateThread(function()
	while true do
	Citizen.Wait(0)
		if GetPlayerWantedLevel(PlayerId()) ~= 0 then
            SetPlayerWantedLevel(PlayerId(), 0, false)
            SetPlayerWantedLevelNow(PlayerId(), false)
        end
		if GetPlayerInvincible(PlayerId()) ~= 0 then
            SetPlayerInvincible(PlayerId(), true)
        end
		if pedOnFoot then
			ResetPlayerStamina(PlayerId())
		end
	end
end)


function GetVehicleInDirection( coordFrom, coordTo )
    local rayHandle = CastRayPointToPoint( coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 10, GetPlayerPed( -1 ), 0 )
    local _, _, _, _, vehicle = GetRaycastResult( rayHandle )
    return vehicle
end


function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end
Citizen.CreateThread(function()
  AddTextEntry('FE_THDR_GTAO', "JDMDRIFT.CZ")
end)

Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(0)
	DisableControlAction(0, 37, true)
        HideHudComponentThisFrame(19)
        HideHudComponentThisFrame(20)
        BlockWeaponWheelThisFrame()
    end
end)


-- AUTA -----------------------------------
Citizen.CreateThread(function()
    AddTextEntry("ap2", "Honda S 2000")
    AddTextEntry("fd2", "Honda Civic Type-R") 
    AddTextEntry("fk2", "Honda Civic Type-R 2006")
    AddTextEntry("nc1", "Honda NSX 2nd Generation") 
    AddTextEntry("rcf", "Lexus RCF") 
    AddTextEntry("fd", "Mazda RX-7") 
    AddTextEntry("evo9", "Mitsubishi LANCER EvolutionMR") 
    AddTextEntry("evo10", "Mitsubishi LANCER EvolutionX FQ-400") 
    AddTextEntry("180sx", "Nissan 180SX") 
    AddTextEntry("skyline", "Nissan Skyline GTR R34") 
    AddTextEntry("subwrx", "Subaru Impreza WRX") 
    AddTextEntry("ae86", "Toyota Sprinter Apex Trueno 1986") 
    AddTextEntry("prius", "Toyota Prius Hybrid")
    AddTextEntry("a80", "Toyota Supra MKIV")
    AddTextEntry("mfc", "Mazda FC3S") -- drift
    AddTextEntry("84rx7k", "1984 Mazda RX-7 Stanced Version") --drift
    AddTextEntry("180sxrb", "Nissan 180sx Rocket Bunny") -- drift
    AddTextEntry("350z", "2003 Nissan 350z") -- drift
    AddTextEntry("350zrb", "Nissan 350z Rocket Bunny Kit Stanced") -- drift
    AddTextEntry("370z16", "2016 Nissan 370Z Nismo") -- drift
    AddTextEntry("180326", "Nissan 180sx 2JZ") -- drift
    AddTextEntry("apexgt", "Toyota Apex GT85") -- drift
    AddTextEntry("brz13", "2013 Subaru BRZ") -- drift
    AddTextEntry("brzrbv3", "2013 Subaru BRZ Rocket Bunny") -- drift
    AddTextEntry("celica", "Toyota Celica") -- drift
    AddTextEntry("celisupra", "oyota Celica-Supra (MKII)") -- drift
    AddTextEntry("crz", "2011 Honda CR-Z EX") -- drift
    AddTextEntry("cz4A", "Mitsubishi Lancer Evolution X (CZ4A)") -- drift
    AddTextEntry("dc5", "Honda Integra Type-R (DC5)") -- drift
    AddTextEntry("dk350z", "Veilside Nissan 350z") -- drift
    AddTextEntry("fk8", "2018 Honda Civic Type-R (FK8)") -- drift
    AddTextEntry("fto", "Mitsubishi FTO GP Version-R") -- drift
    AddTextEntry("gs350", "Lexus GS 350") -- drift
    AddTextEntry("gtrgt3", "Nissan GTR - GT3") -- drift
    AddTextEntry("gtrlb2", "2019 Nissan GT-R Liberty walk LB Performance 2nd Generation") -- drift
    AddTextEntry("honcrx91", "Honda CRX SiR 1991")
    AddTextEntry("mx5326", "2016 Mazda MX5 Stance")
    AddTextEntry("mxpan", "2016 Mazda MX5 Pandem")
    AddTextEntry("gtr", "2017 Nissan GTR")
    AddTextEntry("gx71", "1984 Toyota Mark II (GX71)")
    AddTextEntry("nis13", "1989-1992 Nissan Silvia S13")
    AddTextEntry("nisgtir", "Nissan Silvia S15 Spec-R")
    AddTextEntry("nis15", "Nissan Sunny Pulsar (GTI-R)")
    AddTextEntry("ntypex", "Nissan 180SX TYPE-X")
    AddTextEntry("s30", "1969 Nissan Fairlady Z (S30)")
    AddTextEntry("skyline", "Nissan Skyline GT-R R34")
    AddTextEntry("lwgtr", "Liberty Walk Nissan GT-R")
end)


-------- TELEPORTY ---------- PANE KUBČO NESAHEJTE NA TO  A NEZLOBTE!!!!
-- PARAMETERS
local NURBURGRING_MARKER_SIZE = 5.0
local NURBURGRING_COORDS_GP = { x = 3680.0, y = -6520.0, z = 2191.0, heading = 135.0 }
local NURBURGRING_COORDS_DOCK = { x = 217.75, y = -766.9, z = 30.85, heading = 250.75 }

-- Create preRace thread
Citizen.CreateThread(function()


    -- Loop forever and update every frame
    while true do
        Citizen.Wait(0)

        -- Get player and vehicle
        local player = GetPlayerPed(-1)
        local vehicle = GetVehiclePedIsUsing(player)

        -- Only allow travel when in vehicle and drivers seat
        if (IsPedInAnyVehicle(player, false)) and (GetPedInVehicleSeat(vehicle, -1) == player) then
            -- Docks location, draw marker and when close enough prompt player to teleport
            DrawMarker(1, NURBURGRING_COORDS_DOCK.x, NURBURGRING_COORDS_DOCK.y, NURBURGRING_COORDS_DOCK.z - 1.0, 0, 0, 0, 0, 0, 0, NURBURGRING_MARKER_SIZE, NURBURGRING_MARKER_SIZE, 1.0, 255, 165, 0, 96, 0, 0, 0, 0, 0, 0, 0)
            if (GetDistanceBetweenCoords(NURBURGRING_COORDS_DOCK.x, NURBURGRING_COORDS_DOCK.y, NURBURGRING_COORDS_DOCK.z, GetEntityCoords(player)) < NURBURGRING_MARKER_SIZE) then
                helpMessage("Stiskni ~INPUT_CONTEXT~ pro teleport do Nurburgringu")
                if (IsControlJustReleased(1, 51)) then
                    teleportToLocation(player, vehicle, NURBURGRING_COORDS_GP.x, NURBURGRING_COORDS_GP.y, NURBURGRING_COORDS_GP.z, NURBURGRING_COORDS_GP.heading)
                end
            end

            -- GP location, draw marker and when close enough prompt player to teleport
            DrawMarker(1, NURBURGRING_COORDS_GP.x, NURBURGRING_COORDS_GP.y, NURBURGRING_COORDS_GP.z - 1.0, 0, 0, 0, 0, 0, 0, NURBURGRING_MARKER_SIZE, NURBURGRING_MARKER_SIZE, 1.0, 255, 165, 0, 96, 0, 0, 0, 0, 0, 0, 0)
            if (GetDistanceBetweenCoords(NURBURGRING_COORDS_GP.x, NURBURGRING_COORDS_GP.y, NURBURGRING_COORDS_GP.z, GetEntityCoords(player)) < NURBURGRING_MARKER_SIZE) then
                helpMessage("Stiskni ~INPUT_CONTEXT~ aby jsi se vratil do Los Santos")
                if (IsControlJustReleased(1, 51)) then
                    teleportToLocation(player, vehicle, NURBURGRING_COORDS_DOCK.x, NURBURGRING_COORDS_DOCK.y, NURBURGRING_COORDS_DOCK.z, NURBURGRING_COORDS_DOCK.heading)
                end
            end
        end
    end
end)

-- Utility function to display help message
function helpMessage(text, duration)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayHelp(0, false, true, duration or 5000)
end

-- Utility function to add map blip
function addMapBlip(text, x, y, z)
    local blip = AddBlipForCoord(x, y, z)
    SetBlipSprite(blip, 523)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 1.0)
    SetBlipColour(blip, 5)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(text)
    EndTextCommandSetBlipName(blip)
end

-- Utility function to teleport vehicle to location
function teleportToLocation(player, vehicle, x, y, z, heading)
    -- Freeze vehicle position, disable collisions and fade screen out
    FreezeEntityPosition(vehicle, true)
    SetEntityCollision(vehicle, false, false)
    DoScreenFadeOut(1000)
    Citizen.Wait(1000)

    -- Teleport vehicle to location, unfreeze and enable collisions/physics
    SetEntityCoordsNoOffset(vehicle, x, y, z, false, false, false)
    SetEntityHeading(vehicle, heading)
    FreezeEntityPosition(vehicle, false)
    SetEntityCollision(vehicle, true, true)
    ActivatePhysics(vehicle)
    Citizen.Wait(3000)

    -- Fade screen back in
    DoScreenFadeIn(1000)
    Citizen.Wait(1000)
end

---------------------- KANAGAWA ------------------------
-- PARAMETERS
local KANAGAWA_MARKER_SIZE = 5.0
local KANAGAWA_COORDS_GP = { x = -3811.39, y = -1243.9, z = 220.62, heading = 269.9 }
local KANAGAWA_COORDS_DOCK = { x = 215.39, y = -774.7, z = 30.85, heading = 250.75 }

-- Create preRace thread
Citizen.CreateThread(function()


    -- Loop forever and update every frame
    while true do
        Citizen.Wait(0)

        -- Get player and vehicle
        local player = GetPlayerPed(-1)
        local vehicle = GetVehiclePedIsUsing(player)

        -- Only allow travel when in vehicle and drivers seat
        if (IsPedInAnyVehicle(player, false)) and (GetPedInVehicleSeat(vehicle, -1) == player) then
            -- Docks location, draw marker and when close enough prompt player to teleport
            DrawMarker(1, KANAGAWA_COORDS_DOCK.x, KANAGAWA_COORDS_DOCK.y, KANAGAWA_COORDS_DOCK.z - 1.0, 0, 0, 0, 0, 0, 0, KANAGAWA_MARKER_SIZE, KANAGAWA_MARKER_SIZE, 1.0, 255, 165, 0, 96, 0, 0, 0, 0, 0, 0, 0)
            if (GetDistanceBetweenCoords(KANAGAWA_COORDS_DOCK.x, KANAGAWA_COORDS_DOCK.y, KANAGAWA_COORDS_DOCK.z, GetEntityCoords(player)) < KANAGAWA_MARKER_SIZE) then
                helpMessage("Stiskni ~INPUT_CONTEXT~ pro teleport do Kanagawa Road")
                if (IsControlJustReleased(1, 51)) then
                    teleportToLocation(player, vehicle, KANAGAWA_COORDS_GP.x, KANAGAWA_COORDS_GP.y, KANAGAWA_COORDS_GP.z, KANAGAWA_COORDS_GP.heading)
                end
            end

            -- GP location, draw marker and when close enough prompt player to teleport
            DrawMarker(1, KANAGAWA_COORDS_GP.x, KANAGAWA_COORDS_GP.y, KANAGAWA_COORDS_GP.z - 1.0, 0, 0, 0, 0, 0, 0, KANAGAWA_MARKER_SIZE, KANAGAWA_MARKER_SIZE, 1.0, 255, 165, 0, 96, 0, 0, 0, 0, 0, 0, 0)
            if (GetDistanceBetweenCoords(KANAGAWA_COORDS_GP.x, KANAGAWA_COORDS_GP.y, KANAGAWA_COORDS_GP.z, GetEntityCoords(player)) < KANAGAWA_MARKER_SIZE) then
                helpMessage("Stiskni ~INPUT_CONTEXT~ aby jsi se vratil do Los Santos")
                if (IsControlJustReleased(1, 51)) then
                    teleportToLocation(player, vehicle, KANAGAWA_COORDS_DOCK.x, KANAGAWA_COORDS_DOCK.y, KANAGAWA_COORDS_DOCK.z, KANAGAWA_COORDS_DOCK.heading)
                end
            end
        end
    end
end)

-- Utility function to display help message
function helpMessage(text, duration)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayHelp(0, false, true, duration or 5000)
end

-- Utility function to add map blip
function addMapBlip(text, x, y, z)
    local blip = AddBlipForCoord(x, y, z)
    SetBlipSprite(blip, 523)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 1.0)
    SetBlipColour(blip, 5)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(text)
    EndTextCommandSetBlipName(blip)
end

-- Utility function to teleport vehicle to location
function teleportToLocation(player, vehicle, x, y, z, heading)
    -- Freeze vehicle position, disable collisions and fade screen out
    FreezeEntityPosition(vehicle, true)
    SetEntityCollision(vehicle, false, false)
    DoScreenFadeOut(1000)
    Citizen.Wait(1000)

    -- Teleport vehicle to location, unfreeze and enable collisions/physics
    SetEntityCoordsNoOffset(vehicle, x, y, z, false, false, false)
    SetEntityHeading(vehicle, heading)
    FreezeEntityPosition(vehicle, false)
    SetEntityCollision(vehicle, true, true)
    ActivatePhysics(vehicle)
    Citizen.Wait(3000)

    -- Fade screen back in
    DoScreenFadeIn(1000)
    Citizen.Wait(1000)
end

---------------------- BIHOKU ------------------------
-- PARAMETERS
local BIHOKU_MARKER_SIZE = 5.0
local BIHOKU_COORDS_GP = { x = 6193.28, y = -6099.81, z = 34.42, heading = 180.68 }
local BIHOKU_COORDS_DOCK = { x = 212.55, y = -782.14, z = 30.85, heading = 250.75 }

-- Create preRace thread
Citizen.CreateThread(function()


    -- Loop forever and update every frame
    while true do
        Citizen.Wait(0)

        -- Get player and vehicle
        local player = GetPlayerPed(-1)
        local vehicle = GetVehiclePedIsUsing(player)

        -- Only allow travel when in vehicle and drivers seat
        if (IsPedInAnyVehicle(player, false)) and (GetPedInVehicleSeat(vehicle, -1) == player) then
            -- Docks location, draw marker and when close enough prompt player to teleport
            DrawMarker(1, BIHOKU_COORDS_DOCK.x, BIHOKU_COORDS_DOCK.y, BIHOKU_COORDS_DOCK.z - 1.0, 0, 0, 0, 0, 0, 0, BIHOKU_MARKER_SIZE, BIHOKU_MARKER_SIZE, 1.0, 255, 165, 0, 96, 0, 0, 0, 0, 0, 0, 0)
            if (GetDistanceBetweenCoords(BIHOKU_COORDS_DOCK.x, BIHOKU_COORDS_DOCK.y, BIHOKU_COORDS_DOCK.z, GetEntityCoords(player)) < BIHOKU_MARKER_SIZE) then
                helpMessage("Stiskni ~INPUT_CONTEXT~ pro teleport do Bihoku Highland Circuit")
                if (IsControlJustReleased(1, 51)) then
                    teleportToLocation(player, vehicle, BIHOKU_COORDS_GP.x, BIHOKU_COORDS_GP.y, BIHOKU_COORDS_GP.z, BIHOKU_COORDS_GP.heading)
                end
            end

            -- GP location, draw marker and when close enough prompt player to teleport
            DrawMarker(1, BIHOKU_COORDS_GP.x, BIHOKU_COORDS_GP.y, BIHOKU_COORDS_GP.z - 1.0, 0, 0, 0, 0, 0, 0, KANAGAWA_MARKER_SIZE, KANAGAWA_MARKER_SIZE, 1.0, 255, 165, 0, 96, 0, 0, 0, 0, 0, 0, 0)
            if (GetDistanceBetweenCoords(BIHOKU_COORDS_GP.x, BIHOKU_COORDS_GP.y, BIHOKU_COORDS_GP.z, GetEntityCoords(player)) < BIHOKU_MARKER_SIZE) then
                helpMessage("Stiskni ~INPUT_CONTEXT~ aby jsi se vratil do Los Santos")
                if (IsControlJustReleased(1, 51)) then
                    teleportToLocation(player, vehicle, BIHOKU_COORDS_DOCK.x, BIHOKU_COORDS_DOCK.y, BIHOKU_COORDS_DOCK.z, BIHOKU_COORDS_DOCK.heading)
                end
            end
        end
    end
end)

-- Utility function to display help message
function helpMessage(text, duration)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayHelp(0, false, true, duration or 5000)
end

-- Utility function to add map blip
function addMapBlip(text, x, y, z)
    local blip = AddBlipForCoord(x, y, z)
    SetBlipSprite(blip, 523)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 1.0)
    SetBlipColour(blip, 5)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(text)
    EndTextCommandSetBlipName(blip)
end

-- Utility function to teleport vehicle to location
function teleportToLocation(player, vehicle, x, y, z, heading)
    -- Freeze vehicle position, disable collisions and fade screen out
    FreezeEntityPosition(vehicle, true)
    SetEntityCollision(vehicle, false, false)
    DoScreenFadeOut(1000)
    Citizen.Wait(1000)

    -- Teleport vehicle to location, unfreeze and enable collisions/physics
    SetEntityCoordsNoOffset(vehicle, x, y, z, false, false, false)
    SetEntityHeading(vehicle, heading)
    FreezeEntityPosition(vehicle, false)
    SetEntityCollision(vehicle, true, true)
    ActivatePhysics(vehicle)
    Citizen.Wait(3000)

    -- Fade screen back in
    DoScreenFadeIn(1000)
    Citizen.Wait(1000)
end

---------------------- MIZUKO ------------------------
-- PARAMETERS
local MIZUKO_MARKER_SIZE = 5.0
local MIZUKO_COORDS_GP = { x = 3901.61, y = -2108.55, z = 134.41, heading = 284.1 }
local MIZUKO_COORDS_DOCK = { x = 209.48, y = -789.58, z = 30.94, heading = 250.75 }

-- Create preRace thread
Citizen.CreateThread(function()


    -- Loop forever and update every frame
    while true do
        Citizen.Wait(0)

        -- Get player and vehicle
        local player = GetPlayerPed(-1)
        local vehicle = GetVehiclePedIsUsing(player)

        -- Only allow travel when in vehicle and drivers seat
        if (IsPedInAnyVehicle(player, false)) and (GetPedInVehicleSeat(vehicle, -1) == player) then
            -- Docks location, draw marker and when close enough prompt player to teleport
            DrawMarker(1, MIZUKO_COORDS_DOCK.x, MIZUKO_COORDS_DOCK.y, MIZUKO_COORDS_DOCK.z - 1.0, 0, 0, 0, 0, 0, 0, MIZUKO_MARKER_SIZE, MIZUKO_MARKER_SIZE, 1.0, 255, 165, 0, 96, 0, 0, 0, 0, 0, 0, 0)
            if (GetDistanceBetweenCoords(MIZUKO_COORDS_DOCK.x, MIZUKO_COORDS_DOCK.y, MIZUKO_COORDS_DOCK.z, GetEntityCoords(player)) < MIZUKO_MARKER_SIZE) then
                helpMessage("Stiskni ~INPUT_CONTEXT~ pro teleport do Mizukoshi")
                if (IsControlJustReleased(1, 51)) then
                    teleportToLocation(player, vehicle, MIZUKO_COORDS_GP.x, MIZUKO_COORDS_GP.y, MIZUKO_COORDS_GP.z, MIZUKO_COORDS_GP.heading)
                end
            end

            -- GP location, draw marker and when close enough prompt player to teleport
            DrawMarker(1, MIZUKO_COORDS_GP.x, MIZUKO_COORDS_GP.y, MIZUKO_COORDS_GP.z - 1.0, 0, 0, 0, 0, 0, 0, MIZUKO_MARKER_SIZE, MIZUKO_MARKER_SIZE, 1.0, 255, 165, 0, 96, 0, 0, 0, 0, 0, 0, 0)
            if (GetDistanceBetweenCoords(MIZUKO_COORDS_GP.x, MIZUKO_COORDS_GP.y, MIZUKO_COORDS_GP.z, GetEntityCoords(player)) < MIZUKO_MARKER_SIZE) then
                helpMessage("Stiskni ~INPUT_CONTEXT~ aby jsi se vratil do Los Santos")
                if (IsControlJustReleased(1, 51)) then
                    teleportToLocation(player, vehicle, MIZUKO_COORDS_DOCK.x, MIZUKO_COORDS_DOCK.y, MIZUKO_COORDS_DOCK.z, MIZUKO_COORDS_DOCK.heading)
                end
            end
        end
    end
end)

-- Utility function to display help message
function helpMessage(text, duration)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayHelp(0, false, true, duration or 5000)
end

-- Utility function to add map blip
function addMapBlip(text, x, y, z)
    local blip = AddBlipForCoord(x, y, z)
    SetBlipSprite(blip, 523)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 1.0)
    SetBlipColour(blip, 5)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(text)
    EndTextCommandSetBlipName(blip)
end

-- Utility function to teleport vehicle to location
function teleportToLocation(player, vehicle, x, y, z, heading)
    -- Freeze vehicle position, disable collisions and fade screen out
    FreezeEntityPosition(vehicle, true)
    SetEntityCollision(vehicle, false, false)
    DoScreenFadeOut(1000)
    Citizen.Wait(1000)

    -- Teleport vehicle to location, unfreeze and enable collisions/physics
    SetEntityCoordsNoOffset(vehicle, x, y, z, false, false, false)
    SetEntityHeading(vehicle, heading)
    FreezeEntityPosition(vehicle, false)
    SetEntityCollision(vehicle, true, true)
    ActivatePhysics(vehicle)
    Citizen.Wait(3000)

    -- Fade screen back in
    DoScreenFadeIn(1000)
    Citizen.Wait(1000)
end

---------------------- MINOO ------------------------
-- PARAMETERS
local MINOO_MARKER_SIZE = 5.0
local MINOO_COORDS_GP = { x = 6382.43, y = 3654.62, z = 255.40, heading = 152.77 }
local MINOO_COORDS_DOCK = { x = 206.29, y = -796.67, z = 31.01, heading = 250.75 }

-- Create preRace thread
Citizen.CreateThread(function()


    -- Loop forever and update every frame
    while true do
        Citizen.Wait(0)

        -- Get player and vehicle
        local player = GetPlayerPed(-1)
        local vehicle = GetVehiclePedIsUsing(player)

        -- Only allow travel when in vehicle and drivers seat
        if (IsPedInAnyVehicle(player, false)) and (GetPedInVehicleSeat(vehicle, -1) == player) then
            -- Docks location, draw marker and when close enough prompt player to teleport
            DrawMarker(1, MINOO_COORDS_DOCK.x, MINOO_COORDS_DOCK.y, MINOO_COORDS_DOCK.z - 1.0, 0, 0, 0, 0, 0, 0, MINOO_MARKER_SIZE, MINOO_MARKER_SIZE, 1.0, 255, 165, 0, 96, 0, 0, 0, 0, 0, 0, 0)
            if (GetDistanceBetweenCoords(MINOO_COORDS_DOCK.x, MINOO_COORDS_DOCK.y, MINOO_COORDS_DOCK.z, GetEntityCoords(player)) < MINOO_MARKER_SIZE) then
                helpMessage("Stiskni ~INPUT_CONTEXT~ pro teleport do Route 4 Katsuoji Minoo")
                if (IsControlJustReleased(1, 51)) then
                    teleportToLocation(player, vehicle, MINOO_COORDS_GP.x, MINOO_COORDS_GP.y, MINOO_COORDS_GP.z, MINOO_COORDS_GP.heading)
                end
            end

            -- GP location, draw marker and when close enough prompt player to teleport
            DrawMarker(1, MINOO_COORDS_GP.x, MINOO_COORDS_GP.y, MINOO_COORDS_GP.z - 1.0, 0, 0, 0, 0, 0, 0, MINOO_MARKER_SIZE, MINOO_MARKER_SIZE, 1.0, 255, 165, 0, 96, 0, 0, 0, 0, 0, 0, 0)
            if (GetDistanceBetweenCoords(MINOO_COORDS_GP.x, MINOO_COORDS_GP.y, MINOO_COORDS_GP.z, GetEntityCoords(player)) < MINOO_MARKER_SIZE) then
                helpMessage("Stiskni ~INPUT_CONTEXT~ aby jsi se vratil do Los Santos")
                if (IsControlJustReleased(1, 51)) then
                    teleportToLocation(player, vehicle, MINOO_COORDS_DOCK.x, MINOO_COORDS_DOCK.y, MINOO_COORDS_DOCK.z, MINOO_COORDS_DOCK.heading)
                end
            end
        end
    end
end)

-- Utility function to display help message
function helpMessage(text, duration)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayHelp(0, false, true, duration or 5000)
end

-- Utility function to add map blip
function addMapBlip(text, x, y, z)
    local blip = AddBlipForCoord(x, y, z)
    SetBlipSprite(blip, 523)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 1.0)
    SetBlipColour(blip, 5)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(text)
    EndTextCommandSetBlipName(blip)
end

-- Utility function to teleport vehicle to location
function teleportToLocation(player, vehicle, x, y, z, heading)
    -- Freeze vehicle position, disable collisions and fade screen out
    FreezeEntityPosition(vehicle, true)
    SetEntityCollision(vehicle, false, false)
    DoScreenFadeOut(1000)
    Citizen.Wait(1000)

    -- Teleport vehicle to location, unfreeze and enable collisions/physics
    SetEntityCoordsNoOffset(vehicle, x, y, z, false, false, false)
    SetEntityHeading(vehicle, heading)
    FreezeEntityPosition(vehicle, false)
    SetEntityCollision(vehicle, true, true)
    ActivatePhysics(vehicle)
    Citizen.Wait(3000)

    -- Fade screen back in
    DoScreenFadeIn(1000)
    Citizen.Wait(1000)
end

---------------------- EBISUTOUGE ------------------------
-- PARAMETERS
local EBISUTOUGE_MARKER_SIZE = 5.0
local EBISUTOUGE_COORDS_GP = { x = -1349.28, y = 1349.28, z = 828.84, heading = 328.84 }
local EBISUTOUGE_COORDS_DOCK = { x = 219.3, y = -793.01, z = 30.76, heading = 69 }

-- Create preRace thread
Citizen.CreateThread(function()


    -- Loop forever and update every frame
    while true do
        Citizen.Wait(0)

        -- Get player and vehicle
        local player = GetPlayerPed(-1)
        local vehicle = GetVehiclePedIsUsing(player)

        -- Only allow travel when in vehicle and drivers seat
        if (IsPedInAnyVehicle(player, false)) and (GetPedInVehicleSeat(vehicle, -1) == player) then
            -- Docks location, draw marker and when close enough prompt player to teleport
            DrawMarker(1, EBISUTOUGE_COORDS_DOCK.x, EBISUTOUGE_COORDS_DOCK.y, EBISUTOUGE_COORDS_DOCK.z - 1.0, 0, 0, 0, 0, 0, 0, EBISUTOUGE_MARKER_SIZE, EBISUTOUGE_MARKER_SIZE, 1.0, 255, 165, 0, 96, 0, 0, 0, 0, 0, 0, 0)
            if (GetDistanceBetweenCoords(EBISUTOUGE_COORDS_DOCK.x, EBISUTOUGE_COORDS_DOCK.y, EBISUTOUGE_COORDS_DOCK.z, GetEntityCoords(player)) < EBISUTOUGE_MARKER_SIZE) then
                helpMessage("Stiskni ~INPUT_CONTEXT~ pro teleport do Ebisu Touge")
                if (IsControlJustReleased(1, 51)) then
                    teleportToLocation(player, vehicle, EBISUTOUGE_COORDS_GP.x, EBISUTOUGE_COORDS_GP.y, EBISUTOUGE_COORDS_GP.z, EBISUTOUGE_COORDS_GP.heading)
                end
            end

            -- GP location, draw marker and when close enough prompt player to teleport
            DrawMarker(1, EBISUTOUGE_COORDS_GP.x, EBISUTOUGE_COORDS_GP.y, EBISUTOUGE_COORDS_GP.z - 1.0, 0, 0, 0, 0, 0, 0, EBISUTOUGE_MARKER_SIZE, EBISUTOUGE_MARKER_SIZE, 1.0, 255, 165, 0, 96, 0, 0, 0, 0, 0, 0, 0)
            if (GetDistanceBetweenCoords(EBISUTOUGE_COORDS_GP.x, EBISUTOUGE_COORDS_GP.y, EBISUTOUGE_COORDS_GP.z, GetEntityCoords(player)) < EBISUTOUGE_MARKER_SIZE) then
                helpMessage("Stiskni ~INPUT_CONTEXT~ aby jsi se vratil do Los Santos")
                if (IsControlJustReleased(1, 51)) then
                    teleportToLocation(player, vehicle, EBISUTOUGE_COORDS_DOCK.x, EBISUTOUGE_COORDS_DOCK.y, EBISUTOUGE_COORDS_DOCK.z, EBISUTOUGE_COORDS_DOCK.heading)
                end
            end
        end
    end
end)

-- Utility function to display help message
function helpMessage(text, duration)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayHelp(0, false, true, duration or 5000)
end

-- Utility function to add map blip
function addMapBlip(text, x, y, z)
    local blip = AddBlipForCoord(x, y, z)
    SetBlipSprite(blip, 523)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 1.0)
    SetBlipColour(blip, 5)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(text)
    EndTextCommandSetBlipName(blip)
end

-- Utility function to teleport vehicle to location
function teleportToLocation(player, vehicle, x, y, z, heading)
    -- Freeze vehicle position, disable collisions and fade screen out
    FreezeEntityPosition(vehicle, true)
    SetEntityCollision(vehicle, false, false)
    DoScreenFadeOut(1000)
    Citizen.Wait(1000)

    -- Teleport vehicle to location, unfreeze and enable collisions/physics
    SetEntityCoordsNoOffset(vehicle, x, y, z, false, false, false)
    SetEntityHeading(vehicle, heading)
    FreezeEntityPosition(vehicle, false)
    SetEntityCollision(vehicle, true, true)
    ActivatePhysics(vehicle)
    Citizen.Wait(3000)

    -- Fade screen back in
    DoScreenFadeIn(1000)
    Citizen.Wait(1000)
end

---------------------- HAKONE ------------------------
-- PARAMETERS
local HAKONE_MARKER_SIZE = 5.0
local HAKONE_COORDS_GP = { x = -4337.47, y = -4647.48, z = 149.8, heading = 345.11 }
local HAKONE_COORDS_DOCK = { x = 215.57, y = -801.87, z = 30.81, heading = 64.29 }

-- Create preRace thread
Citizen.CreateThread(function()


    -- Loop forever and update every frame
    while true do
        Citizen.Wait(0)

        -- Get player and vehicle
        local player = GetPlayerPed(-1)
        local vehicle = GetVehiclePedIsUsing(player)

        -- Only allow travel when in vehicle and drivers seat
        if (IsPedInAnyVehicle(player, false)) and (GetPedInVehicleSeat(vehicle, -1) == player) then
            -- Docks location, draw marker and when close enough prompt player to teleport
            DrawMarker(1, HAKONE_COORDS_DOCK.x, HAKONE_COORDS_DOCK.y, HAKONE_COORDS_DOCK.z - 1.0, 0, 0, 0, 0, 0, 0, HAKONE_MARKER_SIZE, HAKONE_MARKER_SIZE, 1.0, 255, 165, 0, 96, 0, 0, 0, 0, 0, 0, 0)
            if (GetDistanceBetweenCoords(HAKONE_COORDS_DOCK.x, HAKONE_COORDS_DOCK.y, HAKONE_COORDS_DOCK.z, GetEntityCoords(player)) < HAKONE_MARKER_SIZE) then
                helpMessage("Stiskni ~INPUT_CONTEXT~ pro teleport do Hakone Ohiradai")
                if (IsControlJustReleased(1, 51)) then
                    teleportToLocation(player, vehicle, HAKONE_COORDS_GP.x, HAKONE_COORDS_GP.y, HAKONE_COORDS_GP.z, HAKONE_COORDS_GP.heading)
                end
            end

            -- GP location, draw marker and when close enough prompt player to teleport
            DrawMarker(1, HAKONE_COORDS_GP.x, HAKONE_COORDS_GP.y, HAKONE_COORDS_GP.z - 1.0, 0, 0, 0, 0, 0, 0, HAKONE_MARKER_SIZE, HAKONE_MARKER_SIZE, 1.0, 255, 165, 0, 96, 0, 0, 0, 0, 0, 0, 0)
            if (GetDistanceBetweenCoords(HAKONE_COORDS_GP.x, HAKONE_COORDS_GP.y, HAKONE_COORDS_GP.z, GetEntityCoords(player)) < HAKONE_MARKER_SIZE) then
                helpMessage("Stiskni ~INPUT_CONTEXT~ aby jsi se vratil do Los Santos")
                if (IsControlJustReleased(1, 51)) then
                    teleportToLocation(player, vehicle, HAKONE_COORDS_DOCK.x, HAKONE_COORDS_DOCK.y, HAKONE_COORDS_DOCK.z, HAKONE_COORDS_DOCK.heading)
                end
            end
        end
    end
end)

-- Utility function to display help message
function helpMessage(text, duration)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayHelp(0, false, true, duration or 5000)
end

-- Utility function to add map blip
function addMapBlip(text, x, y, z)
    local blip = AddBlipForCoord(x, y, z)
    SetBlipSprite(blip, 523)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 1.0)
    SetBlipColour(blip, 5)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(text)
    EndTextCommandSetBlipName(blip)
end

-- Utility function to teleport vehicle to location
function teleportToLocation(player, vehicle, x, y, z, heading)
    -- Freeze vehicle position, disable collisions and fade screen out
    FreezeEntityPosition(vehicle, true)
    SetEntityCollision(vehicle, false, false)
    DoScreenFadeOut(1000)
    Citizen.Wait(1000)

    -- Teleport vehicle to location, unfreeze and enable collisions/physics
    SetEntityCoordsNoOffset(vehicle, x, y, z, false, false, false)
    SetEntityHeading(vehicle, heading)
    FreezeEntityPosition(vehicle, false)
    SetEntityCollision(vehicle, true, true)
    ActivatePhysics(vehicle)
    Citizen.Wait(3000)

    -- Fade screen back in
    DoScreenFadeIn(1000)
    Citizen.Wait(1000)
end

---------------------- EBISUMINAMI ------------------------
-- PARAMETERS
local EBISUMINAMI_MARKER_SIZE = 5.0
local EBISUMINAMI_COORDS_GP = { x = 945.27, y = 1057.48, z = 458.35, heading = 284.36 }
local EBISUMINAMI_COORDS_DOCK = { x = 221.79, y = -785.21, z = 30.77, heading = 69 }

-- Create preRace thread
Citizen.CreateThread(function()


    -- Loop forever and update every frame
    while true do
        Citizen.Wait(0)

        -- Get player and vehicle
        local player = GetPlayerPed(-1)
        local vehicle = GetVehiclePedIsUsing(player)

        -- Only allow travel when in vehicle and drivers seat
        if (IsPedInAnyVehicle(player, false)) and (GetPedInVehicleSeat(vehicle, -1) == player) then
            -- Docks location, draw marker and when close enough prompt player to teleport
            DrawMarker(1, EBISUMINAMI_COORDS_DOCK.x, EBISUMINAMI_COORDS_DOCK.y, EBISUMINAMI_COORDS_DOCK.z - 1.0, 0, 0, 0, 0, 0, 0, EBISUMINAMI_MARKER_SIZE, EBISUMINAMI_MARKER_SIZE, 1.0, 255, 165, 0, 96, 0, 0, 0, 0, 0, 0, 0)
            if (GetDistanceBetweenCoords(EBISUMINAMI_COORDS_DOCK.x, EBISUMINAMI_COORDS_DOCK.y, EBISUMINAMI_COORDS_DOCK.z, GetEntityCoords(player)) < EBISUMINAMI_MARKER_SIZE) then
                helpMessage("Stiskni ~INPUT_CONTEXT~ pro teleport do Ebisu Minami")
                if (IsControlJustReleased(1, 51)) then
                    teleportToLocation(player, vehicle, EBISUMINAMI_COORDS_GP.x, EBISUMINAMI_COORDS_GP.y, EBISUMINAMI_COORDS_GP.z, EBISUMINAMI_COORDS_GP.heading)
                end
            end

            -- GP location, draw marker and when close enough prompt player to teleport
            DrawMarker(1, EBISUMINAMI_COORDS_GP.x, EBISUMINAMI_COORDS_GP.y, EBISUMINAMI_COORDS_GP.z - 1.0, 0, 0, 0, 0, 0, 0, EBISUMINAMI_MARKER_SIZE, EBISUMINAMI_MARKER_SIZE, 1.0, 255, 165, 0, 96, 0, 0, 0, 0, 0, 0, 0)
            if (GetDistanceBetweenCoords(EBISUMINAMI_COORDS_GP.x, EBISUMINAMI_COORDS_GP.y, EBISUMINAMI_COORDS_GP.z, GetEntityCoords(player)) < EBISUMINAMI_MARKER_SIZE) then
                helpMessage("Stiskni ~INPUT_CONTEXT~ aby jsi se vratil do Los Santos")
                if (IsControlJustReleased(1, 51)) then
                    teleportToLocation(player, vehicle, EBISUMINAMI_COORDS_DOCK.x, EBISUMINAMI_COORDS_DOCK.y, EBISUMINAMI_COORDS_DOCK.z, EBISUMINAMI_COORDS_DOCK.heading)
                end
            end
        end
    end
end)

-- Utility function to display help message
function helpMessage(text, duration)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayHelp(0, false, true, duration or 5000)
end

-- Utility function to add map blip
function addMapBlip(text, x, y, z)
    local blip = AddBlipForCoord(x, y, z)
    SetBlipSprite(blip, 523)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 1.0)
    SetBlipColour(blip, 5)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(text)
    EndTextCommandSetBlipName(blip)
end

-- Utility function to teleport vehicle to location
function teleportToLocation(player, vehicle, x, y, z, heading)
    -- Freeze vehicle position, disable collisions and fade screen out
    FreezeEntityPosition(vehicle, true)
    SetEntityCollision(vehicle, false, false)
    DoScreenFadeOut(1000)
    Citizen.Wait(1000)

    -- Teleport vehicle to location, unfreeze and enable collisions/physics
    SetEntityCoordsNoOffset(vehicle, x, y, z, false, false, false)
    SetEntityHeading(vehicle, heading)
    FreezeEntityPosition(vehicle, false)
    SetEntityCollision(vehicle, true, true)
    ActivatePhysics(vehicle)
    Citizen.Wait(3000)

    -- Fade screen back in
    DoScreenFadeIn(1000)
    Citizen.Wait(1000)
end

---------------------- Okutama FZC ------------------------
-- PARAMETERS
local OKUTAMA_MARKER_SIZE = 5.0
local OKUTAMA_COORDS_GP = { x = -2381.21, y = 4244.94, z = 17.98, heading = 70.9 }
local OKUTAMA_COORDS_DOCK = { x = 224.52, y = -777.64, z = 30.77, heading = 69 }

-- Create preRace thread
Citizen.CreateThread(function()


    -- Loop forever and update every frame
    while true do
        Citizen.Wait(0)

        -- Get player and vehicle
        local player = GetPlayerPed(-1)
        local vehicle = GetVehiclePedIsUsing(player)

        -- Only allow travel when in vehicle and drivers seat
        if (IsPedInAnyVehicle(player, false)) and (GetPedInVehicleSeat(vehicle, -1) == player) then
            -- Docks location, draw marker and when close enough prompt player to teleport
            DrawMarker(1, OKUTAMA_COORDS_DOCK.x, OKUTAMA_COORDS_DOCK.y, OKUTAMA_COORDS_DOCK.z - 1.0, 0, 0, 0, 0, 0, 0, OKUTAMA_MARKER_SIZE, OKUTAMA_MARKER_SIZE, 1.0, 255, 165, 0, 96, 0, 0, 0, 0, 0, 0, 0)
            if (GetDistanceBetweenCoords(OKUTAMA_COORDS_DOCK.x, OKUTAMA_COORDS_DOCK.y, OKUTAMA_COORDS_DOCK.z, GetEntityCoords(player)) < OKUTAMA_MARKER_SIZE) then
                helpMessage("Stiskni ~INPUT_CONTEXT~ pro teleport do Okutama FZC")
                if (IsControlJustReleased(1, 51)) then
                    teleportToLocation(player, vehicle, OKUTAMA_COORDS_GP.x, OKUTAMA_COORDS_GP.y, OKUTAMA_COORDS_GP.z, OKUTAMA_COORDS_GP.heading)
                end
            end

            -- GP location, draw marker and when close enough prompt player to teleport
            DrawMarker(1, OKUTAMA_COORDS_GP.x, OKUTAMA_COORDS_GP.y, OKUTAMA_COORDS_GP.z - 1.0, 0, 0, 0, 0, 0, 0, OKUTAMA_MARKER_SIZE, OKUTAMA_MARKER_SIZE, 1.0, 255, 165, 0, 96, 0, 0, 0, 0, 0, 0, 0)
            if (GetDistanceBetweenCoords(OKUTAMA_COORDS_GP.x, OKUTAMA_COORDS_GP.y, OKUTAMA_COORDS_GP.z, GetEntityCoords(player)) < OKUTAMA_MARKER_SIZE) then
                helpMessage("Stiskni ~INPUT_CONTEXT~ aby jsi se vratil do Los Santos")
                if (IsControlJustReleased(1, 51)) then
                    teleportToLocation(player, vehicle, OKUTAMA_COORDS_DOCK.x, OKUTAMA_COORDS_DOCK.y, OKUTAMA_COORDS_DOCK.z, OKUTAMA_COORDS_DOCK.heading)
                end
            end
        end
    end
end)

-- Utility function to display help message
function helpMessage(text, duration)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayHelp(0, false, true, duration or 5000)
end

-- Utility function to add map blip
function addMapBlip(text, x, y, z)
    local blip = AddBlipForCoord(x, y, z)
    SetBlipSprite(blip, 523)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 1.0)
    SetBlipColour(blip, 5)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(text)
    EndTextCommandSetBlipName(blip)
end

-- Utility function to teleport vehicle to location
function teleportToLocation(player, vehicle, x, y, z, heading)
    -- Freeze vehicle position, disable collisions and fade screen out
    FreezeEntityPosition(vehicle, true)
    SetEntityCollision(vehicle, false, false)
    DoScreenFadeOut(1000)
    Citizen.Wait(1000)

    -- Teleport vehicle to location, unfreeze and enable collisions/physics
    SetEntityCoordsNoOffset(vehicle, x, y, z, false, false, false)
    SetEntityHeading(vehicle, heading)
    FreezeEntityPosition(vehicle, false)
    SetEntityCollision(vehicle, true, true)
    ActivatePhysics(vehicle)
    Citizen.Wait(3000)

    -- Fade screen back in
    DoScreenFadeIn(1000)
    Citizen.Wait(1000)
end

---------------------- MAXDRIFT ------------------------
-- PARAMETERS
local MAXDRIFT_MARKER_SIZE = 5.0
local MAXDRIFT_COORDS_GP = { x = -3037.29, y = 2597.24, z = 634.02, heading = 102.94 }
local MAXDRIFT_COORDS_DOCK = { x = 227.66, y = -770.09, z = 30.78, heading = 69 }

-- Create preRace thread
Citizen.CreateThread(function()


    -- Loop forever and update every frame
    while true do
        Citizen.Wait(0)

        -- Get player and vehicle
        local player = GetPlayerPed(-1)
        local vehicle = GetVehiclePedIsUsing(player)

        -- Only allow travel when in vehicle and drivers seat
        if (IsPedInAnyVehicle(player, false)) and (GetPedInVehicleSeat(vehicle, -1) == player) then
            -- Docks location, draw marker and when close enough prompt player to teleport
            DrawMarker(1, MAXDRIFT_COORDS_DOCK.x, MAXDRIFT_COORDS_DOCK.y, MAXDRIFT_COORDS_DOCK.z - 1.0, 0, 0, 0, 0, 0, 0, MAXDRIFT_MARKER_SIZE, MAXDRIFT_MARKER_SIZE, 1.0, 255, 165, 0, 96, 0, 0, 0, 0, 0, 0, 0)
            if (GetDistanceBetweenCoords(MAXDRIFT_COORDS_DOCK.x, MAXDRIFT_COORDS_DOCK.y, MAXDRIFT_COORDS_DOCK.z, GetEntityCoords(player)) < MAXDRIFT_MARKER_SIZE) then
                helpMessage("Stiskni ~INPUT_CONTEXT~ pro teleport do MaxDrift Drift Park")
                if (IsControlJustReleased(1, 51)) then
                    teleportToLocation(player, vehicle, MAXDRIFT_COORDS_GP.x, MAXDRIFT_COORDS_GP.y, MAXDRIFT_COORDS_GP.z, MAXDRIFT_COORDS_GP.heading)
                end
            end

            -- GP location, draw marker and when close enough prompt player to teleport
            DrawMarker(1, MAXDRIFT_COORDS_GP.x, MAXDRIFT_COORDS_GP.y, MAXDRIFT_COORDS_GP.z - 1.0, 0, 0, 0, 0, 0, 0, MAXDRIFT_MARKER_SIZE, MAXDRIFT_MARKER_SIZE, 1.0, 255, 165, 0, 96, 0, 0, 0, 0, 0, 0, 0)
            if (GetDistanceBetweenCoords(MAXDRIFT_COORDS_GP.x, MAXDRIFT_COORDS_GP.y, MAXDRIFT_COORDS_GP.z, GetEntityCoords(player)) < MAXDRIFT_MARKER_SIZE) then
                helpMessage("Stiskni ~INPUT_CONTEXT~ aby jsi se vratil do Los Santos")
                if (IsControlJustReleased(1, 51)) then
                    teleportToLocation(player, vehicle, MAXDRIFT_COORDS_DOCK.x, MAXDRIFT_COORDS_DOCK.y, MAXDRIFT_COORDS_DOCK.z, MAXDRIFT_COORDS_DOCK.heading)
                end
            end
        end
    end
end)

-- Utility function to display help message
function helpMessage(text, duration)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayHelp(0, false, true, duration or 5000)
end

-- Utility function to add map blip
function addMapBlip(text, x, y, z)
    local blip = AddBlipForCoord(x, y, z)
    SetBlipSprite(blip, 523)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 1.0)
    SetBlipColour(blip, 5)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(text)
    EndTextCommandSetBlipName(blip)
end

-- Utility function to teleport vehicle to location
function teleportToLocation(player, vehicle, x, y, z, heading)
    -- Freeze vehicle position, disable collisions and fade screen out
    FreezeEntityPosition(vehicle, true)
    SetEntityCollision(vehicle, false, false)
    DoScreenFadeOut(1000)
    Citizen.Wait(1000)

    -- Teleport vehicle to location, unfreeze and enable collisions/physics
    SetEntityCoordsNoOffset(vehicle, x, y, z, false, false, false)
    SetEntityHeading(vehicle, heading)
    FreezeEntityPosition(vehicle, false)
    SetEntityCollision(vehicle, true, true)
    ActivatePhysics(vehicle)
    Citizen.Wait(3000)

    -- Fade screen back in
    DoScreenFadeIn(1000)
    Citizen.Wait(1000)
end


--[[

ČAUKY PANE TADI JSOU 3D TEXTY A VISTE PICA KDIS DUMPUJETE MUJ SERVR HAHAHAHA


]]--

Citizen.CreateThread(function()
    Negrovina()
end)

function Negrovina()
		while true do
			Citizen.Wait(0)			
				-- Nurburgring
		if GetDistanceBetweenCoords( 218.79, -767.36, 30.02, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( 218.32, -766.94, 30.84  -1.400, "Nurburgring", 13, 0.1, 0.1)	
		end		
				--Kanagawa Road
		if GetDistanceBetweenCoords( 215.82, -774.68, 30.85, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( 215.82, -774.68, 30.85  -1.400, "Kanagawa", 13, 0.1, 0.1)
			Draw3DText( 215.82, -774.68, 30.85  -1.600, "Road", 13, 0.1, 0.1)	
		end
		       -- Bihoku
		if GetDistanceBetweenCoords( 213.21, -782.2, 30.89, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( 213.21, -782.2, 30.89  -1.400, "Bihoku", 13, 0.1, 0.1)
			Draw3DText( 213.21, -782.2, 30.89  -1.600, "Highland", 13, 0.1, 0.1)
			Draw3DText( 213.21, -782.2, 30.89  -1.800, "Circuit", 13, 0.1, 0.1)	
		end	
              -- mizukoshi
		if GetDistanceBetweenCoords( 209.82, -789.63, 30.93, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( 209.82, -789.63, 30.93  -1.400, "Mizukoshi", 13, 0.1, 0.1)
		end	
		     -- KATSUOJI MINOO
		if GetDistanceBetweenCoords( 206.5, -796.84, 31.0, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( 206.5, -796.84, 31.0  -1.400, "Route 4", 13, 0.1, 0.1)
			Draw3DText( 206.5, -796.84, 31.0  -1.600, "Katsuoji", 13, 0.1, 0.1)
			Draw3DText( 206.5, -796.84, 31.0  -1.800, "Minoo", 13, 0.1, 0.1)
		end	
		   --- Hakone
		if GetDistanceBetweenCoords( 215.45, -802.04, 30.81, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( 215.45, -802.04, 30.81  -1.400, "Hakone", 13, 0.1, 0.1)
			Draw3DText( 215.45, -802.04, 30.81  -1.600, "Ohiradai", 13, 0.1, 0.1)
		end	
		    --- VAROVANIE TEXT
		if GetDistanceBetweenCoords( 206.43, -813.81, 30.86, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( 206.43, -813.81, 30.86  -1.400, "UPOZORNĚNÍ!", 13, 0.1, 0.1)
			Draw3DText( 206.43, -813.81, 30.86  -1.600, "Občas při teleportování se můžete propadnout pod zem.", 13, 0.1, 0.1)
			Draw3DText( 206.43, -813.81, 30.86  -1.800, "Musíte nejprv vyčkat, kým se vám načte mapa.", 13, 0.1, 0.1)
			Draw3DText( 206.43, -813.81, 30.86  -2.000, "Kdyby ste se propadali pod mapu, stiskněte F2 pro Noclip a", 13, 0.1, 0.1)
			Draw3DText( 206.43, -813.81, 30.86  -2.200, "vraťte se na závodní trať. Teleporty fungujou jenom, když jste v autě.", 13, 0.1, 0.1)
		end	
		   -- ebisu touge
		if GetDistanceBetweenCoords( 219.3, -793.01, 30.76, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( 219.3, -793.01, 30.76  -1.400, "Ebisu", 13, 0.1, 0.1)
			Draw3DText( 219.3, -793.01, 30.76  -1.600, "Touge", 13, 0.1, 0.1)
		end	
		  -- ebisu minami
		if GetDistanceBetweenCoords( 221.79, -785.21, 30.77, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( 221.79, -785.21, 30.77  -1.400, "Ebisu", 13, 0.1, 0.1)
			Draw3DText( 221.79, -785.21, 30.77  -1.600, "Minami", 13, 0.1, 0.1)
		end	
		   --- OKUTAMA
		if GetDistanceBetweenCoords( 224.52, -777.64, 30.77, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( 224.52, -777.64, 30.77  -1.400, "Okutama", 13, 0.1, 0.1)
			Draw3DText( 224.52, -777.64, 30.77  -1.600, "FZC", 13, 0.1, 0.1)
		end	
		  -- MaxDrift Drift Park
		if GetDistanceBetweenCoords( 227.66, -770.09, 30.78, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( 227.66, -770.09, 30.78  -1.400, "MaXDrift", 13, 0.1, 0.1)
			Draw3DText( 227.66, -770.09, 30.78  -1.600, "Drift Park", 13, 0.1, 0.1)
		end	
		  -- SPAUN LOBBI
		if GetDistanceBetweenCoords( 216.66, -903.36, 30.69, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( 216.66, -903.36, 30.69  -1.400, "Ahoj vitaj na JDM DRIFT!", 13, 0.1, 0.1)
			Draw3DText( 216.66, -903.36, 30.69  -1.600, "Dúfam že sa ti tu bude páčiť.", 13, 0.1, 0.1)
			Draw3DText( 216.66, -903.36, 30.69  -1.800, "Viacej nájdeš na www.jdmdrift.cz", 13, 0.1, 0.1)
		end	
	end
end

-------------------------------NEJAKE PICOVINKY ALE TY TOMU CHAPAT NEBUDES :(----------------------------------------------------------------------------------
function Draw3DText(x,y,z,textInput,fontId,scaleX,scaleY)
         local px,py,pz=table.unpack(GetGameplayCamCoords())
         local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
         local scale = (1/dist)*20
         local fov = (1/GetGameplayCamFov())*100
         local scale = scale*fov   
         SetTextScale(scaleX*scale, scaleY*scale)
         SetTextFont(fontId)
         SetTextProportional(1)
         SetTextColour(238, 198, 78, 255)
         SetTextDropshadow(1, 1, 1, 1, 255)
         SetTextEdge(2, 0, 0, 0, 150)
         SetTextDropShadow()
         SetTextOutline()
         SetTextEntry("STRING")
         SetTextCentre(1)
         AddTextComponentString(textInput)
         SetDrawOrigin(x,y,z+2, 0)
         DrawText(0.0, 0.0)
         ClearDrawOrigin()
        end
