_menuPool = NativeUI.CreatePool()
mainMenu = NativeUI.CreateMenu("", "~w~JDM Vozidla")
_menuPool:Add(mainMenu)
_menuPool:MouseControlsEnabled (false);
_menuPool:MouseEdgeEnabled (false);
_menuPool:ControlDisablingEnabled(false);

	
-- THIS IS FOR AN EXAMPLE, PLEASE USE YOOUR OWN CARS SEE THE README.MD FILE FOR MORE!


function FirstItem(menu)
    local submenu = _menuPool:AddSubMenu(menu, "Honda") 
    local carItem = NativeUI.CreateItem("Honda S2000", "Stiskni ENTER pro spawn vozidla")
         submenu:AddItem(carItem)
    carItem.Activated = function(sender, item)
        if item == carItem then
            spawnCar("ap2")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
        end
   end
       local vehItem = NativeUI.CreateItem("2011 Honda CR-Z EX", "Stiskni ENTER pro spawn vozidla")
       submenu:AddItem(vehItem)
           vehItem.Activated = function(sender, item) 
            if item == vehItem then
            spawnCar("crz")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
        end
   end
          local vehItems = NativeUI.CreateItem("Honda Integra Type-R (DC5)", "Stiskni ENTER pro spawn vozidla")
       submenu:AddItem(vehItems)
           vehItems.Activated = function(sender, item) 
            if item == vehItems then
                spawnCar("dc5")
                exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
        end
   end
             local caraItems = NativeUI.CreateItem("Honda Civic Type-R", "Stiskni ENTER pro spawn vozidla")
       submenu:AddItem(caraItems)
           caraItems.Activated = function(sender, item) 
            if item == caraItems then
            spawnCar("fd2")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
        end
   end
   
            local caraItems = NativeUI.CreateItem("Honda Civic Type-R 2006", "Stiskni ENTER pro spawn vozidla")
        submenu:AddItem(caraItems)
            caraItems.Activated = function(sender, item) 
            if item == caraItems then
            spawnCar("fk2")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
    end
end

            local caraItems = NativeUI.CreateItem("2018 Honda Civic Type-R (FK8)", "Stiskni ENTER pro spawn vozidla")
        submenu:AddItem(caraItems)
            caraItems.Activated = function(sender, item) 
            if item == caraItems then
            spawnCar("fk8")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
    end
end

            local caraItems = NativeUI.CreateItem("Honda CRX SiR 1991", "Stiskni ENTER pro spawn vozidla")
        submenu:AddItem(caraItems)
            caraItems.Activated = function(sender, item) 
            if item == caraItems then
            spawnCar("honcrx91")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
    end
end

            local caraItems = NativeUI.CreateItem("Honda NSX 2nd Generation", "Stiskni ENTER pro spawn vozidla")
        submenu:AddItem(caraItems)
            caraItems.Activated = function(sender, item) 
            if item == caraItems then
            spawnCar("nc1")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
    end
end

   _menuPool:MouseControlsEnabled(false)
    _menuPool:ControlDisablingEnabled(false)
end

function SecondItem(menu)
    local submenu = _menuPool:AddSubMenu(menu, "Lexus") 
    local carItem = NativeUI.CreateItem("Lexus", "Stiskni ENTER pro spawn vozidla")
         submenu:AddItem(carItem)
    carItem.Activated = function(sender, item)
        if item == carItem then
            spawnCar("rcf")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
        end
   end

   _menuPool:MouseControlsEnabled(false)
    _menuPool:ControlDisablingEnabled(false)
end

function ThirdItem(menu)
    local submenu = _menuPool:AddSubMenu(menu, "Mazda") 
    local carItem = NativeUI.CreateItem("1984 Mazda RX-7 Stanced Version", "Stiskni ENTER pro spawn vozidla")
         submenu:AddItem(carItem)
    carItem.Activated = function(sender, item)
        if item == carItem then
            spawnCar("84rx7k")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
        end
   end
       local vehItem = NativeUI.CreateItem("Mazda RX-7", "Stiskni ENTER pro spawn vozidla")
       submenu:AddItem(vehItem)
           vehItem.Activated = function(sender, item) 
            if item == vehItem then
            spawnCar("fd")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
        end
   end
          local vehItems = NativeUI.CreateItem("Mazda FC3S", "Stiskni ENTER pro spawn vozidla")
       submenu:AddItem(vehItems)
           vehItems.Activated = function(sender, item) 
            if item == vehItems then
                spawnCar("mfc")
                exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
        end
   end
             local caraItems = NativeUI.CreateItem("2016 Mazda MX5 Stance", "Stiskni ENTER pro spawn vozidla")
       submenu:AddItem(caraItems)
           caraItems.Activated = function(sender, item) 
            if item == caraItems then
            spawnCar("mx5326")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
        end
   end
   
            local caraItems = NativeUI.CreateItem("2016 Mazda MX5 Pandem", "Stiskni ENTER pro spawn vozidla")
        submenu:AddItem(caraItems)
            caraItems.Activated = function(sender, item) 
            if item == caraItems then
            spawnCar("mxpan")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
    end
end

   _menuPool:MouseControlsEnabled(false)
    _menuPool:ControlDisablingEnabled(false)
end

function FourthItem(menu)
    local submenu = _menuPool:AddSubMenu(menu, "Mitsubishi") 
    local carItem = NativeUI.CreateItem("Mitsubishi LANCER EvolutionMR IX", "Stiskni ENTER pro spawn vozidla")
         submenu:AddItem(carItem)
    carItem.Activated = function(sender, item)
        if item == carItem then
            spawnCar("evo9")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
        end
   end
       local vehItem = NativeUI.CreateItem("Mitsubishi FTO GP Version-R", "Stiskni ENTER pro spawn vozidla")
       submenu:AddItem(vehItem)
           vehItem.Activated = function(sender, item) 
            if item == vehItem then
            spawnCar("fto")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
        end
   end

   _menuPool:MouseControlsEnabled(false)
    _menuPool:ControlDisablingEnabled(false)
end

function FifthItem(menu)
    local submenu = _menuPool:AddSubMenu(menu, "Nissan") 
    local carItem = NativeUI.CreateItem("Nissan 180sx 2JZ", "Stiskni ENTER pro spawn vozidla")
         submenu:AddItem(carItem)
    carItem.Activated = function(sender, item)
        if item == carItem then
            spawnCar("180326")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
        end
   end
       local vehItem = NativeUI.CreateItem("Nissan 180SX", "Stiskni ENTER pro spawn vozidla")
       submenu:AddItem(vehItem)
           vehItem.Activated = function(sender, item) 
            if item == vehItem then
            spawnCar("180sx")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
        end
   end

             local caraItems = NativeUI.CreateItem("Nissan 350z", "Stiskni ENTER pro spawn vozidla")
       submenu:AddItem(caraItems)
           caraItems.Activated = function(sender, item) 
            if item == caraItems then
            spawnCar("350z")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
        end
   end
   
            local caraItems = NativeUI.CreateItem("Nissan 350z Rocket Bunny", "Stiskni ENTER pro spawn vozidla")
        submenu:AddItem(caraItems)
            caraItems.Activated = function(sender, item) 
            if item == caraItems then
            spawnCar("350zrb")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
    end
end

            local caraItems = NativeUI.CreateItem("Veilside Nissan 350z", "Stiskni ENTER pro spawn vozidla")
        submenu:AddItem(caraItems)
            caraItems.Activated = function(sender, item) 
            if item == caraItems then
            spawnCar("dk350z")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
    end
end

            local caraItems = NativeUI.CreateItem("2017 Nissan GTR", "Stiskni ENTER pro spawn vozidla")
        submenu:AddItem(caraItems)
            caraItems.Activated = function(sender, item) 
            if item == caraItems then
            spawnCar("gtr")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
    end
end

            local caraItems = NativeUI.CreateItem("1984 Toyota Mark II (GX71)", "Stiskni ENTER pro spawn vozidla")
        submenu:AddItem(caraItems)
            caraItems.Activated = function(sender, item) 
            if item == caraItems then
            spawnCar("gx71")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
    end
end

            local caraItems = NativeUI.CreateItem("Nissan GTR Liberty Walk", "Stiskni ENTER pro spawn vozidla")
        submenu:AddItem(caraItems)
            caraItems.Activated = function(sender, item) 
            if item == caraItems then
            spawnCar("lwgtr")    
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
    end 
end

            local caraItems = NativeUI.CreateItem("1989-1992 Nissan Silvia S13", "Stiskni ENTER pro spawn vozidla")
        submenu:AddItem(caraItems)
            caraItems.Activated = function(sender, item) 
            if item == caraItems then
            spawnCar("nis13")    
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
    end 
end

            local caraItems = NativeUI.CreateItem("Nissan Silvia S15", "Stiskni ENTER pro spawn vozidla")
        submenu:AddItem(caraItems)
            caraItems.Activated = function(sender, item) 
            if item == caraItems then
            spawnCar("nis15")    
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
    end 
end

            local caraItems = NativeUI.CreateItem("Nissan Sunny Pulsar (GTI-R)", "Stiskni ENTER pro spawn vozidla")
        submenu:AddItem(caraItems)
            caraItems.Activated = function(sender, item) 
            if item == caraItems then
            spawnCar("nisgtir")    
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
    end 
end

            local caraItems = NativeUI.CreateItem("1969 Nissan Fairlady Z (S30)", "Stiskni ENTER pro spawn vozidla")
        submenu:AddItem(caraItems)
            caraItems.Activated = function(sender, item) 
            if item == caraItems then
            spawnCar("s30")    
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
    end 
end

    _menuPool:MouseControlsEnabled(false)
    _menuPool:ControlDisablingEnabled(false)
end

function SixthItem(menu)
    local submenu = _menuPool:AddSubMenu(menu, "Subaru") 
    local carItem = NativeUI.CreateItem("2013 Subaru BRZ", "Stiskni ENTER pro spawn vozidla")
         submenu:AddItem(carItem)
    carItem.Activated = function(sender, item)
        if item == carItem then
            spawnCar("brz13")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
        end
   end
       local vehItem = NativeUI.CreateItem("2013 Subaru BRZ Rocket Bunny", "Stiskni ENTER pro spawn vozidla")
       submenu:AddItem(vehItem)
           vehItem.Activated = function(sender, item) 
            if item == vehItem then
            spawnCar("brzrbv3")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
        end
   end
          local vehItems = NativeUI.CreateItem("Subaru Impreza WRX", "Stiskni ENTER pro spawn vozidla")
       submenu:AddItem(vehItems)
           vehItems.Activated = function(sender, item) 
            if item == vehItems then
                spawnCar("subwrx")
                exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
        end
   end

   _menuPool:MouseControlsEnabled(false)
    _menuPool:ControlDisablingEnabled(false)
end

function SeventhItem(menu)
    local submenu = _menuPool:AddSubMenu(menu, "Toyota") 
    local carItem = NativeUI.CreateItem("Toyota Sprinter Apex Trueno 1986", "Stiskni ENTER pro spawn vozidla")
         submenu:AddItem(carItem)
    carItem.Activated = function(sender, item)
        if item == carItem then
            spawnCar("ae86")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
        end
   end
       local vehItem = NativeUI.CreateItem("Toyota Apex GT85", "Stiskni ENTER pro spawn vozidla")
       submenu:AddItem(vehItem)
           vehItem.Activated = function(sender, item) 
            if item == vehItem then
            spawnCar("apexgt")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
        end
   end
          local vehItems = NativeUI.CreateItem("Toyota Celica", "Stiskni ENTER pro spawn vozidla")
       submenu:AddItem(vehItems)
           vehItems.Activated = function(sender, item) 
            if item == vehItems then
                spawnCar("celica")
                exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
        end
   end

        local vehItems = NativeUI.CreateItem("Toyota Prius Hybrid", "Stiskni ENTER pro spawn vozidla")
    submenu:AddItem(vehItems)
        vehItems.Activated = function(sender, item) 
        if item == vehItems then
            spawnCar("prius")
            exports['mythic_notify']:SendAlert('inform', 'Vozidlo Spawnuto')
    end
end

   _menuPool:MouseControlsEnabled(false)
    _menuPool:ControlDisablingEnabled(false)
end

FirstItem(mainMenu)
SecondItem(mainMenu)
ThirdItem(mainMenu)
FourthItem(mainMenu)
FifthItem(mainMenu)
SixthItem(mainMenu)
SeventhItem(mainMenu)
_menuPool:RefreshIndex()
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        _menuPool:ProcessMenus()
        --[[ The "e" button will activate the menu ]]
        if IsControlJustPressed(1, 288) then
            mainMenu:Visible(not mainMenu:Visible())
        end
    end
end)




--[[ COPY BELOW ]]

function notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(true, true)
end


function spawnCar(car)
    local car = GetHashKey(car)

    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(50)
    end

    local x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), false))
    local vehicle = CreateVehicle(car, x + 2, y + 2, z + 1, GetEntityHeading(PlayerPedId()), true, false)
    SetPedIntoVehicle(PlayerPedId(), vehicle, -1)
    
    SetEntityAsNoLongerNeeded(vehicle)
    SetModelAsNoLongerNeeded(vehicleName)
    
end

