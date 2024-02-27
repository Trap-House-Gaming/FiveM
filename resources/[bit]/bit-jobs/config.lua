Config, Lang, Noti, ConfigJob, Clothes, ClothesMale, ClothesFemale, Jobcenter = {}, {}, {}, {}, {}, {}, {}, {}
selConfig, selClothes, selClothesM, selClothesF = nil, nil, nil, nil

-- $$$$$$\   $$$$$$\  $$\   $$\ $$$$$$$$\ $$$$$$\  $$$$$$\  $$\   $$\ $$$$$$$\   $$$$$$\ $$$$$$$$\ $$$$$$\  $$$$$$\  $$\   $$\ 
-- $$  __$$\ $$  __$$\ $$$\  $$ |$$  _____|\_$$  _|$$  __$$\ $$ |  $$ |$$  __$$\ $$  __$$\\__$$  __|\_$$  _|$$  __$$\ $$$\  $$ |
-- $$ /  \__|$$ /  $$ |$$$$\ $$ |$$ |        $$ |  $$ /  \__|$$ |  $$ |$$ |  $$ |$$ /  $$ |  $$ |     $$ |  $$ /  $$ |$$$$\ $$ |
-- $$ |      $$ |  $$ |$$ $$\$$ |$$$$$\      $$ |  $$ |$$$$\ $$ |  $$ |$$$$$$$  |$$$$$$$$ |  $$ |     $$ |  $$ |  $$ |$$ $$\$$ |
-- $$ |      $$ |  $$ |$$ \$$$$ |$$  __|     $$ |  $$ |\_$$ |$$ |  $$ |$$  __$$< $$  __$$ |  $$ |     $$ |  $$ |  $$ |$$ \$$$$ |
-- $$ |  $$\ $$ |  $$ |$$ |\$$$ |$$ |        $$ |  $$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |  $$ |     $$ |  $$ |  $$ |$$ |\$$$ |
-- \$$$$$$  | $$$$$$  |$$ | \$$ |$$ |      $$$$$$\ \$$$$$$  |\$$$$$$  |$$ |  $$ |$$ |  $$ |  $$ |   $$$$$$\  $$$$$$  |$$ | \$$ |
-- \______/  \______/ \__|  \__|\__|      \______| \______/  \______/ \__|  \__|\__|  \__|  \__|   \______| \______/ \__|  \__|

-- Use "esx" or "qb"
Config.Framework = "qb"
-- If you are using one of the most recent versions of ESX, set the script name. Default = "es_extended"
Config.ESXExport = "qb-core"
-- Default ESX: "esx:getSharedObject" | Default QB: "qb-core"
Config.Core = "qb-core"
-- oxmysql, mysql-async or ghmattisql
Config.Mysql = "oxmysql"
-- Set true if you use OX_Inventory
Config.useOXInventory = false
-- Set true if you use QS_Inventory
Config.useQSInventory = false
-- Alert Font. Use 0 if you use chinese language
Config.alertTextFont = 4
-- How the male gender is displayed in your database
Config.genderMale = 0
-- How the female gender is displayed in your database
Config.genderFemale = 1
-- Progress bar export
Config.progressBar = "progressbar"
-- If you want to make it mandatory for the user to have the assigned job to start working. Otherwise these jobs will work as temporary jobs.
Config.jobRequired = false
-- If you want the NPC to change location each time a certain number of items are sold
Config.rotateNPCatSell = true
-- Activate if you want to use markers instead of 3D icons in the collection process
Config.useMarkerInsteadIcons = false
-- If you want to modify the drawtext (static text on the screen) for a customized one
Config.useCustomDrawText = false
-- If you want to change the 3D text on items and NPC's for a customized one
Config.useCustom3DText = false
-- If you want to use route when a job is selected set to true
Config.useRoute = true
-- Activate if you have problems with the character not staying still during progressbars
Config.forceFreeze = false

-- If the Config.useMarkerInsteadIcons option is active, customize the following function:
function customCollectMarker(location)
    DrawMarker(23, location.x, location.y, location.z - 0.85, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 2.0, 2.0, 2.0, 73, 196,
        137, 50, false, true, 2, nil, nil, false)
end

-- If the Config.useCustomDrawText option is active, customize the following function:
function customDrawText(msg)
    -- example:
    if msg.push then
        -- TriggerEvent('codem-notification', msg.text, 2000, "check")
        -- return "break"
    else
        -- drawTxt(msg.text, 4, 1, 0.5, 0.8, 0.6, 255, 255, 255, 255)
    end
end

-- If the Config.useCustom3DText option is active, customize the following function:
function custom3DText(coord, msg)
    -- example:
    -- Draw3DText(coord.x, coord.y, coord.z, msg , 4, 0.15, 0.1)
end

--   $$$$$\  $$$$$$\  $$$$$$$\         $$$$$$\  $$$$$$$$\ $$\   $$\ $$$$$$$$\ $$$$$$$$\ $$$$$$$\  
--   \__$$ |$$  __$$\ $$  __$$\       $$  __$$\ $$  _____|$$$\  $$ |\__$$  __|$$  _____|$$  __$$\ 
--      $$ |$$ /  $$ |$$ |  $$ |      $$ /  \__|$$ |      $$$$\ $$ |   $$ |   $$ |      $$ |  $$ |
--      $$ |$$ |  $$ |$$$$$$$\ |      $$ |      $$$$$\    $$ $$\$$ |   $$ |   $$$$$\    $$$$$$$  |
-- $$\   $$ |$$ |  $$ |$$  __$$\       $$ |      $$  __|   $$ \$$$$ |   $$ |   $$  __|   $$  __$$< 
-- $$ |  $$ |$$ |  $$ |$$ |  $$ |      $$ |  $$\ $$ |      $$ |\$$$ |   $$ |   $$ |      $$ |  $$ |
-- \$$$$$$  | $$$$$$  |$$$$$$$  |      \$$$$$$  |$$$$$$$$\ $$ | \$$ |   $$ |   $$$$$$$$\ $$ |  $$ |
-- \______/  \______/ \_______/        \______/ \________|\__|  \__|   \__|   \________|\__|  \__|

Jobcenter.useJobCenter = true
Jobcenter.usePed = true
Jobcenter.pedModel = "s_m_m_fiboffice_02"
Jobcenter.usePedAnimation = true
Jobcenter.pedAnimationDict = "anim@heists@heist_corona@team_idles@male_a"
Jobcenter.pedAnimationName = "idle"
Jobcenter.coord = vector4(-264.81, -964.44, 30.22, 212.18)
Jobcenter.useMarker = true
Jobcenter.markerSize = 2.0
Jobcenter.markerType = 23
Jobcenter.markerRGB = {
    r = 73,
    g = 196,
    b = 137
}
Jobcenter.useBlip = true
Jobcenter.blip = {
    bliptype = 351,
    color = 25,
    scale = 0.8,
    text = "Job center"
}
Jobcenter.useFloatingText = true
Jobcenter.FloatingText = "Job Center"

-- $$$$$$$\  $$$$$$$\   $$$$$$\   $$$$$$\  $$$$$$$\  $$$$$$$$\  $$$$$$\   $$$$$$\        $$$$$$$\   $$$$$$\  $$$$$$$\  
-- $$  __$$\ $$  __$$\ $$  __$$\ $$  __$$\ $$  __$$\ $$  _____|$$  __$$\ $$  __$$\       $$  __$$\ $$  __$$\ $$  __$$\ 
-- $$ |  $$ |$$ |  $$ |$$ /  $$ |$$ /  \__|$$ |  $$ |$$ |      $$ /  \__|$$ /  \__|      $$ |  $$ |$$ /  $$ |$$ |  $$ |
-- $$$$$$$  |$$$$$$$  |$$ |  $$ |$$ |$$$$\ $$$$$$$  |$$$$$\    \$$$$$$\  \$$$$$$\        $$$$$$$\ |$$$$$$$$ |$$$$$$$  |
-- $$  ____/ $$  __$$< $$ |  $$ |$$ |\_$$ |$$  __$$< $$  __|    \____$$\  \____$$\       $$  __$$\ $$  __$$ |$$  __$$< 
-- $$ |      $$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |      $$\   $$ |$$\   $$ |      $$ |  $$ |$$ |  $$ |$$ |  $$ |
-- $$ |      $$ |  $$ | $$$$$$  |\$$$$$$  |$$ |  $$ |$$$$$$$$\ \$$$$$$  |\$$$$$$  |      $$$$$$$  |$$ |  $$ |$$ |  $$ |
-- \__|      \__|  \__| \______/  \______/ \__|  \__|\________| \______/  \______/       \_______/ \__|  \__|\__|  \__|

function progressBar(step, totalAmount, jobSteps, individualObject)
    exports[Config.progressBar]:Progress({
        name = "random_task",
        duration = jobSteps.processTime,
        label = jobSteps.processLabel,
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true
        },
        animation = {
            animDict = jobSteps.dict,
            anim = jobSteps.animation,
            flags = 49
        },
        prop = {
            model = jobSteps.prop,
            bone = jobSteps.propBone,
            coords = jobSteps.propPlacement,
            rotation = jobSteps.propRotation
        },
        propTwo = {}
    }, function(cancelled)
        if not cancelled then
            if step == 1 then
                local playerID = GetPlayerServerId(PlayerId())
                if Config.forceFreeze then
                    FreezeEntityPosition(PlayerPedId(), false)
                end
                if totalAmount ~= nil then
                    totalAmount = totalAmount + jobSteps.giveItemAmount
                end
                TriggerServerEvent("bit-jobs:giveItem", playerID, jobSteps.giveItem, jobSteps.giveItemAmount)
                notifications(Noti.check, Lang.obtained, Noti.time)
                local working = false
                EndCam()
                local step1Text = true
                local individualPropSpawned = false
                local changeindividuallocation = true
                DeleteEntity(individualObject)
                Citizen.Wait(200)
                DestroyAllProps()
                Citizen.Wait(1000)
                return working, step1Text, individualPropSpawned, changeindividuallocation, jobSteps.prop, totalAmount
            elseif step == 2 then
                if Config.forceFreeze then
                    FreezeEntityPosition(PlayerPedId(), false)
                end
                EndCam()
                FreezeEntityPosition(PlayerPedId(), false)
                local playerID = GetPlayerServerId(PlayerId())
                TriggerServerEvent("bit-jobs:changeItems", playerID, jobSteps.removeItem, jobSteps.removeItemsAmount,
                    jobSteps.giveItem, jobSteps.giveItemAmount)
                local step2Text = true
                Citizen.Wait(200)
                DestroyAllProps()
                return step2Text, jobSteps.prop
            elseif step == 3 then
                if Config.forceFreeze then
                    FreezeEntityPosition(PlayerPedId(), false)
                end
                local playerID = GetPlayerServerId(PlayerId())
                EndCam()
                FreezeEntityPosition(PlayerPedId(), false)
                TriggerServerEvent("bit-jobs:changeItems", playerID, jobSteps.removeItem, jobSteps.removeItemsAmount,
                    jobSteps.giveItem, jobSteps.giveItemAmount)
                local step3Text = true
                Citizen.Wait(200)
                DestroyAllProps()
                return step3Text, jobSteps.prop
            end
        else
            if step == 1 then
                notifications(Noti.error, Lang.cancelled, Noti.time)
                local working = false
                EndCam()
                local step1Text = true
                Citizen.Wait(200)
                DestroyAllProps()
                if Config.forceFreeze then
                    FreezeEntityPosition(PlayerPedId(), false)
                end
                return working, step1Text, nil, nil, nil, jobSteps.prop, nil
            elseif step == 2 then
                if Config.forceFreeze then
                    FreezeEntityPosition(PlayerPedId(), false)
                end
                notifications(Noti.error, Lang.cancelled, Noti.time)
                EndCam()
                local step2Text = true
                Citizen.Wait(200)
                DestroyAllProps()
                return step2Text, jobSteps.prop
            elseif step == 3 then
                if Config.forceFreeze then
                    FreezeEntityPosition(PlayerPedId(), false)
                end
                notifications(Noti.error, Lang.cancelled, Noti.time)
                EndCam()
                local step3Text = true
                Citizen.Wait(200)
                DestroyAllProps()
                return step3Text, jobSteps.prop
            end
        end
    end)
end

-- $$\   $$\  $$$$$$\ $$$$$$$$\ $$$$$$\ $$$$$$$$\ $$$$$$\  $$$$$$\   $$$$$$\ $$$$$$$$\ $$$$$$\  $$$$$$\  $$\   $$\  $$$$$$\  
-- $$$\  $$ |$$  __$$\\__$$  __|\_$$  _|$$  _____|\_$$  _|$$  __$$\ $$  __$$\\__$$  __|\_$$  _|$$  __$$\ $$$\  $$ |$$  __$$\ 
-- $$$$\ $$ |$$ /  $$ |  $$ |     $$ |  $$ |        $$ |  $$ /  \__|$$ /  $$ |  $$ |     $$ |  $$ /  $$ |$$$$\ $$ |$$ /  \__|
-- $$ $$\$$ |$$ |  $$ |  $$ |     $$ |  $$$$$\      $$ |  $$ |      $$$$$$$$ |  $$ |     $$ |  $$ |  $$ |$$ $$\$$ |\$$$$$$\  
-- $$ \$$$$ |$$ |  $$ |  $$ |     $$ |  $$  __|     $$ |  $$ |      $$  __$$ |  $$ |     $$ |  $$ |  $$ |$$ \$$$$ | \____$$\ 
-- $$ |\$$$ |$$ |  $$ |  $$ |     $$ |  $$ |        $$ |  $$ |  $$\ $$ |  $$ |  $$ |     $$ |  $$ |  $$ |$$ |\$$$ |$$\   $$ |
-- $$ | \$$ | $$$$$$  |  $$ |   $$$$$$\ $$ |      $$$$$$\ \$$$$$$  |$$ |  $$ |  $$ |   $$$$$$\  $$$$$$  |$$ | \$$ |\$$$$$$  |
-- \__|  \__| \______/   \__|   \______|\__|      \______| \______/ \__|  \__|  \__|   \______| \______/ \__|  \__| \______/

function notifications(notitype, message, time)
    -- Change this trigger for your notification system keeping the variables
    TriggerEvent('codem-notification', message, time, notitype)
end

-- Notifications types:
Noti.info = 'info'
Noti.check = 'check'
Noti.error = 'error'

-- Notification time:
Noti.time = 5000

-- $$\   $$\ $$$$$$$$\ $$\     $$\  $$$$$$\         $$$\           $$$$$$$$\ $$\   $$\ $$$$$$$$\ $$\       
-- $$ | $$  |$$  _____|\$$\   $$  |$$  __$$\       $$ $$\          $$  _____|$$ |  $$ |$$  _____|$$ |      
-- $$ |$$  / $$ |       \$$\ $$  / $$ /  \__|      \$$$\ |         $$ |      $$ |  $$ |$$ |      $$ |      
-- $$$$$  /  $$$$$\      \$$$$  /  \$$$$$$\        $$\$$\$$\       $$$$$\    $$ |  $$ |$$$$$\    $$ |      
-- $$  $$<   $$  __|      \$$  /    \____$$\       $$ \$$ __|      $$  __|   $$ |  $$ |$$  __|   $$ |      
-- $$ |\$$\  $$ |          $$ |    $$\   $$ |      $$ |\$$\        $$ |      $$ |  $$ |$$ |      $$ |      
-- $$ | \$$\ $$$$$$$$\     $$ |    \$$$$$$  |       $$$$ $$\       $$ |      \$$$$$$  |$$$$$$$$\ $$$$$$$$\ 
-- \__|  \__|\________|    \__|     \______/        \____\__|      \__|       \______/ \________|\________|

-- Function to deliver the keys of the work vehicle to the players
function jobVehicleKeys(vehicle)
    -- Example for QB, or change for your key system
     TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(vehicle))
end

function setVehFuel(vehicle)
    SetVehicleFuelLevel(vehicle, 100.0)
end

-- $$\        $$$$$$\  $$\   $$\  $$$$$$\  $$\   $$\  $$$$$$\   $$$$$$\  $$$$$$$$\ 
-- $$ |      $$  __$$\ $$$\  $$ |$$  __$$\ $$ |  $$ |$$  __$$\ $$  __$$\ $$  _____|
-- $$ |      $$ /  $$ |$$$$\ $$ |$$ /  \__|$$ |  $$ |$$ /  $$ |$$ /  \__|$$ |      
-- $$ |      $$$$$$$$ |$$ $$\$$ |$$ |$$$$\ $$ |  $$ |$$$$$$$$ |$$ |$$$$\ $$$$$\    
-- $$ |      $$  __$$ |$$ \$$$$ |$$ |\_$$ |$$ |  $$ |$$  __$$ |$$ |\_$$ |$$  __|   
-- $$ |      $$ |  $$ |$$ |\$$$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |      
-- $$$$$$$$\ $$ |  $$ |$$ | \$$ |\$$$$$$  |\$$$$$$  |$$ |  $$ |\$$$$$$  |$$$$$$$$\ 
-- \________|\__|  \__|\__|  \__| \______/  \______/ \__|  \__| \______/ \________|

Lang.enter = {
    text = "Press ~r~E~w~ to change clothes",
    push = true
}
Lang.goVehicle = {
    text = "Get in the work vehicle and drive to the point",
    push = true
}
Lang.leaveVehicle = {
    text = "Get out of the vehicle and get to work",
    push = true
}
Lang.startAction = {
    text = "Press ~r~E~w~ to work",
    push = true
}
Lang.infoAction = {
    text = "Press ~r~X~w~ to exit",
    push = true
}
Lang.startProcess = {
    text = "Press ~r~E~w~ to start process",
    push = true
}
Lang.collect = {
    text = "Press ~r~E~w~ to collect",
    push = true
}
Lang.getProcessPoint = {
    text = "Press ~r~E~w~ to get the path to the process point.",
    push = true
}
Lang.deliverAction = {
    text = "Press ~r~E~w~ to deliver the goods",
    push = true
}
Lang.noItem = "You need an item to do the job"
Lang.noQuantity = "You don't have enough to sell it. Minimum quantity:"
Lang.howItWorks = "How it works?"
Lang.leaderboard = "Leaderboard"
Lang.cancelled = "You have cancelled the process"
Lang.obtained = "You have obtained an item"
Lang.requires = "REQUIRES"
Lang.work = "WORK!"
Lang.back = "BACK"
Lang.name = "NAME"
Lang.missions = "MISSIONS"
Lang.earned = "EARNED"
Lang.noJob = "You have not been assigned the necessary work"
Lang.noGrade = "You do not have the grade of job required to perform the work."
Lang.jobCenter = "Job Center"
Lang.enterJobCenter = "Press ~g~E~w~ to access the job center"
Lang.activeJob = "Now you have the job of"
Lang.itemError = "Error delivering the item"
Lang.itemSellError = "You do not have the necessary items to sell"
Lang.notEnough = "You do not have enough items"
Lang.received = "You have received "

--    $$$$$\  $$$$$$\  $$$$$$$\   $$$$$$\        $$$$$$$$\ $$$$$$$$\ $$\   $$\ $$$$$$$$\  $$$$$$\  
--    \__$$ |$$  __$$\ $$  __$$\ $$  __$$\       \__$$  __|$$  _____|$$ |  $$ |\__$$  __|$$  __$$\ 
--       $$ |$$ /  $$ |$$ |  $$ |$$ /  \__|         $$ |   $$ |      \$$\ $$  |   $$ |   $$ /  \__|
--       $$ |$$ |  $$ |$$$$$$$\ |\$$$$$$\           $$ |   $$$$$\     \$$$$  /    $$ |   \$$$$$$\  
-- $$\   $$ |$$ |  $$ |$$  __$$\  \____$$\          $$ |   $$  __|    $$  $$<     $$ |    \____$$\ 
-- $$ |  $$ |$$ |  $$ |$$ |  $$ |$$\   $$ |         $$ |   $$ |      $$  /\$$\    $$ |   $$\   $$ |
-- \$$$$$$  | $$$$$$  |$$$$$$$  |\$$$$$$  |         $$ |   $$$$$$$$\ $$ /  $$ |   $$ |   \$$$$$$  |
-- \______/  \______/ \_______/  \______/          \__|   \________|\__|  \__|   \__|    \______/

Jobs = {
    [1] = { -- jobID
        -- Name that appears in the Job UI
        ["name"] = "Miner",
        -- Image of the character appearing in the UI
        ["image"] = "assets/miner.png",
        -- Position of the character on the main UI screen
        ["descpos"] = {
            top = "0rem",
            left = "35rem",
            width = "34rem"
        },
        -- Position of the character in the "How it Works?" screen of the UI.
        ["vecpos"] = {
            top = "9rem",
            left = "-3rem",
            width = "49rem"
        },
        -- Position of the character in the "Leaderboard" screen of the UI.
        ["scorepos"] = {
            top = "9rem",
            left = "-3rem",
            width = "49rem"
        },
        -- HTML description of the job shown on the main screen
        ["description"] = "Get precious stones!<br><br>Work as a miner and you can find materials such as Topaz.<br>To work as a miner you will need a pickaxe which you can find in the 24/7 stores",
        -- Texts of the working points in the "How it works?" section.
        ["howitworks1"] = "Go to the wardrobe to change into your work clothes",
        ["howitworks2"] = "Take the work vehicle and go to the point marked on the map",
        ["howitworks3"] = "Collect as many stones as you can and drive to the process point",
        ["howitworks4"] = "Follows the process points marked on the map (A, B, C)",
        ["howitworks5"] = "Sells minerals in jewelry stores",
        -- Text of the item required for this work
        ["require"] = "1x Pickaxe",
        -- Svg icon appearing in job listing
        ["svg"] = "<svg class='jobs-mdipickaxe' width='64' height='64' viewBox='0 0 64 64' fill='none' xmlns='http://www.w3.org/2000/svg'><path d='M39.44 28.32L9.33331 58.4L5.59998 54.6667L35.68 24.56L39.44 28.32M51.3866 20.6133L52.96 19.04L50.8533 16.9333L52.56 15.2267L48.7733 11.44L47.0666 13.1467L44.96 11.04L43.3866 12.6133C38.7466 8.82665 33.52 5.78665 27.92 3.65332L25.7066 8.42665C30.3733 10.88 34.6666 13.84 38.6666 17.3333L37.3333 18.6667L45.3333 26.6667L46.6666 25.3333C50.16 29.3333 53.12 33.6267 55.5733 38.2933L60.3466 36.08C58.2133 30.48 55.1733 25.2533 51.3866 20.6133V20.6133Z' fill-opacity='0.62'/></svg>",
        -- If the the "Config.jobRequired" option is active
        ["jobName"] = "miner",
        ["jobGrade"] = 0,
        -- How many points you want to award each time the items are sold
        ["points"] = 100,
        -- If the job belongs to another script enter the trigger to start the job here:
        ["triggerToStart"] = nil,
        -- If you want the action points to be randomized
        ["randomActionLocations"] = true

    },
    [2] = {
        ["name"] = "Lumberjack",
        ["image"] = "assets/lumberjack.png",
        ["descpos"] = {
            top = "0rem",
            left = "37rem",
            width = "30rem"
        },
        ["vecpos"] = {
            top = "9rem",
            left = "-5rem",
            width = "49rem"
        },
        ["scorepos"] = {
            top = "9rem",
            left = "-3rem",
            width = "49rem"
        },
        ["description"] = "He collects wood and carves it to sell it wholesale.<br>For this job you will need an axe",
        ["howitworks1"] = "Go to the wardrobe to change into your work clothes",
        ["howitworks2"] = "Take the work vehicle and go to the point marked on the map",
        ["howitworks3"] = "Collect as much wood as you can and drive to the processing point",
        ["howitworks4"] = "Follows the process points marked on the map (A, B, C)",
        ["howitworks5"] = "Sells wood panels in warehouses",
        ["require"] = "1x Axe",
        ["svg"] = "<svg class='jobs-mdiaxe' width='64' height='64' viewBox='0 0 64 64' fill='none' xmlns='http://www.w3.org/2000/svg'><path d='M32 5.33334L58.6667 21.3333C58.6667 32 53.3333 37.3333 42.6667 40L34.6667 26.6667L24 16L32 5.33334ZM10.96 52.9067L5.65332 48.88L24.5067 24L29.3333 28.8267L10.96 52.9067Z' fill-opacity='0.55'/></svg>",
        ["jobName"] = "lumberjack",
        ["jobGrade"] = 0,
        ["points"] = 100,
        ["triggerToStart"] = nil,
        ["randomActionLocations"] = false
    },
    [3] = {
        ["name"] = "Electrician",
        ["image"] = "assets/electrician.png",
        ["descpos"] = {
            top = "0rem",
            left = "27rem",
            width = "42rem"
        },
        ["vecpos"] = {
            top = "9rem",
            left = "-5rem",
            width = "63rem"
        },
        ["scorepos"] = {
            top = "9rem",
            left = "-5rem",
            width = "63rem"
        },
        ["description"] = "Watch out for sparks!<br><br>Put on your gloves and fix the city's electrical faults.<br>For this job you will need a screwdriver",
        ["howitworks1"] = "Go to the wardrobe to change into your work clothes",
        ["howitworks2"] = "Take the work vehicle and drive to the points marked on the map",
        ["howitworks3"] = "Fixes damaged electrical outlets",
        ["howitworks4"] = "Take the coils of cable and process it.",
        ["howitworks5"] = "Sells all copper wires and get money",
        ["require"] = "1x Screwdriver",
        ["svg"] = "<svg class='jobs-materialsymbolselectricbolt' width='64' height='64' viewBox='0 0 64 64' fill='none' xmlns='http://www.w3.org/2000/svg'><path d='M21.9333 58.0667C21.5778 57.7111 21.3778 57.2667 21.3333 56.7333C21.2889 56.2 21.4222 55.7333 21.7333 55.3333L34.6666 37.3333L13.0666 35.2667C11.9111 35.1778 11.144 34.5778 10.7653 33.4667C10.3884 32.3556 10.6444 31.4222 11.5333 30.6667L39.2 5.86666C39.6 5.46666 40.0782 5.27733 40.6346 5.29866C41.1893 5.32177 41.6666 5.53333 42.0666 5.93333C42.4222 6.28889 42.6222 6.73333 42.6666 7.26666C42.7111 7.8 42.5778 8.26666 42.2666 8.66666L29.3333 26.6667L50.9333 28.7333C52.0889 28.8222 52.8551 29.4222 53.232 30.5333C53.6106 31.6444 53.3555 32.5778 52.4666 33.3333L24.8 58.1333C24.4 58.5333 23.9226 58.7218 23.368 58.6987C22.8115 58.6773 22.3333 58.4667 21.9333 58.0667V58.0667Z' fill-opacity='0.5'/></svg>",
        ["jobName"] = "electrician",
        ["jobGrade"] = 0,
        ["points"] = 100,
        ["triggerToStart"] = nil,
        ["randomActionLocations"] = false
    },
    [4] = {
        ["name"] = "Oil Technician",
        ["image"] = "assets/oil.png",
        ["descpos"] = {
            top = "-2rem",
            left = "25rem",
            width = "42rem"
        },
        ["vecpos"] = {
            top = "3rem",
            left = "-3rem",
            width = "63rem"
        },
        ["scorepos"] = {
            top = "3rem",
            left = "-3rem",
            width = "63rem"
        },
        ["description"] = "The world needs gasoline to run!<br><br>Work in the oil field and refine the oil to obtain gasoline and sell it in the gas stations of Los Santos",
        ["howitworks1"] = "Go to the wardrobe to change into your work clothes",
        ["howitworks2"] = "Take the work vehicle and drive to the points marked on the map",
        ["howitworks3"] = "Collect as much crude oil as you can and drive to the next point",
        ["howitworks4"] = "refine crude oil and get gasoline",
        ["howitworks5"] = "Approach the gas station marked on the map and sell the gasoline",
        ["require"] = "1x Wrench",
        ["svg"] = "<svg class='jobs-icbaselineoilbarrel' width='64' height='64' viewBox='0 0 64 64' fill='none' xmlns='http://www.w3.org/2000/svg'><path d='M53.3333 34.6667C54.8 34.6667 56 33.4667 56 32C56 30.5333 54.8 29.3333 53.3333 29.3333H50.6667V13.3333H53.3333C54.8 13.3333 56 12.1333 56 10.6667C56 9.2 54.8 8 53.3333 8H10.6667C9.2 8 8 9.2 8 10.6667C8 12.1333 9.2 13.3333 10.6667 13.3333H13.3333V29.3333H10.6667C9.2 29.3333 8 30.5333 8 32C8 33.4667 9.2 34.6667 10.6667 34.6667H13.3333V50.6667H10.6667C9.2 50.6667 8 51.8667 8 53.3333C8 54.8 9.2 56 10.6667 56H53.3333C54.8 56 56 54.8 56 53.3333C56 51.8667 54.8 50.6667 53.3333 50.6667H50.6667V34.6667H53.3333ZM32 42.6667C27.5733 42.6667 24 39.1467 24 34.8C24 31.3333 25.3867 30.3467 32 22.6667C38.5867 30.2933 40 31.3067 40 34.8C40 39.1467 36.4267 42.6667 32 42.6667Z' fill-opacity='0.5'/></svg>",
        ["jobName"] = "oiltechnician",
        ["jobGrade"] = 0,
        ["points"] = 100,
        ["triggerToStart"] = nil,
        ["randomActionLocations"] = false
    },
    [5] = {
        ["name"] = "Fisherman",
        ["image"] = "assets/fisher.png",
        ["descpos"] = {
            top = "0rem",
            left = "34rem",
            width = "25rem"
        },
        ["vecpos"] = {
            top = "3rem",
            left = "6rem",
            width = "41rem"
        },
        ["scorepos"] = {
            top = "3rem",
            left = "6rem",
            width = "41rem"
        },
        ["description"] = "Do you prefer a quieter job?<br><br> Grab a rod and go spend the afternoon fishing for fish.<br>Sell them in the warehouses of Los Santos",
        ["howitworks1"] = "Go to the wardrobe to change into your work clothes",
        ["howitworks2"] = "Take the work vehicle and drive to the point marked on the map",
        ["howitworks3"] = "Catch as many fish as you can",
        ["howitworks4"] = "Cleans and prepares fish for sale",
        ["howitworks5"] = "Sells the fish to the wholesaler",
        ["require"] = "1x Fishing rod",
        ["svg"] = "<svg class='jobs-gameiconsfishinghook' width='64' height='64' viewBox='0 0 64 64' fill='none' xmlns='http://www.w3.org/2000/svg'><path d='M24.5469 2.28125C25.0356 4.67688 24.4335 7.008 22.7069 9.21875C20.7252 11.7565 17.1854 14.075 12.1056 15.6173C7.75061 16.9394 4.80611 19.2676 3.23061 21.9844C1.65486 24.7011 1.47811 27.7799 2.51561 30.4219C4.36861 35.1398 10.0656 38.2869 17.6756 36.3516C19.286 35.845 21.1094 35.1016 22.5469 34.2031C22.8458 34.0172 23.1352 33.8164 23.4141 33.6015C22.9213 33.1407 22.5244 32.5872 22.2461 31.9726C20.6151 32.9785 18.5282 34.0016 15.8046 34.3946C9.81286 35.515 5.99249 32.8934 4.68736 29.5704C3.90524 27.5791 4.01561 25.2845 5.24986 23.1564C6.48411 21.0283 8.87511 19.0389 12.7849 17.8516C18.1952 16.2091 22.1656 13.7054 24.5467 10.6564C26.518 8.13212 27.3467 5.19362 26.91 2.28137H24.5469V2.28125ZM26.7774 21.215C26.6789 21.215 26.5789 21.215 26.4804 21.2188C25.0474 21.2706 23.6016 21.6665 22.2734 22.4338C18.9705 24.3403 17.3851 27.9543 17.9921 31.465C19.5184 30.9283 20.7542 30.1808 21.8554 29.4454C22.0326 28.0606 22.8466 26.7866 24.1954 26.0079C24.9875 25.5504 25.856 25.3249 26.7109 25.3204C28.3427 25.3116 29.9194 26.1084 30.7929 27.6211C32.1239 29.9261 31.3011 32.9929 28.996 34.3241C27.9255 34.9422 26.7316 35.0729 25.6247 34.8046C25.0714 35.3146 24.4415 35.773 23.7847 36.1834C23.124 36.5966 22.42 36.9696 21.7029 37.3046C23.5991 38.6396 25.9491 39.2009 28.2341 38.8203H28.2379L37.2849 54.496C39.4436 58.2344 42.6011 60.5219 45.8827 61.3044C49.164 62.0869 52.4752 61.4494 55.164 59.8006C60.5415 56.5031 63.459 48.8612 59.3552 41.7536L57.289 38.1717L57.2694 38.1367C54.8175 33.6327 51.6387 30.5738 47.8514 28.7264C49.4486 34.4659 50.0264 40.2054 49.8631 45.9451L53.4491 41.6951L54.0624 41.3201L55.375 43.59C58.1192 48.3431 55.8241 52.6795 52.7344 54.5742C48.2714 56.6414 44.9135 56.0765 42.1562 51.6836L33.1837 36.1366C35.7737 33.3335 36.3962 29.0051 34.4062 25.5585C32.7812 22.7439 29.8266 21.2044 26.7775 21.2148L26.7774 21.215Z' fill-opacity='0.5'/></svg>",
        ["jobName"] = "fisherman",
        ["jobGrade"] = 0,
        ["points"] = 100,
        ["triggerToStart"] = nil,
        ["randomActionLocations"] = false
    },
    [6] = {
        ["name"] = "Coffee Farmer",
        ["image"] = "assets/coffeefarmer.png",
        ["descpos"] = {
            top = "0rem",
            left = "31rem",
            width = "40rem"
        },
        ["vecpos"] = {
            top = "9rem",
            left = "-3rem",
            width = "57rem"
        },
        ["scorepos"] = {
            top = "9rem",
            left = "-3rem",
            width = "57rem"
        },
        ["description"] = "Do you like the smell of coffee?<br><br>Collect coffee beans, process them and create coffee drinks in the best coffee shops in Los Santos",
        ["howitworks1"] = "Go to the wardrobe to change into your work clothes",
        ["howitworks2"] = "Take the work vehicle and drive to the point marked on the map",
        ["howitworks3"] = "Get coffee beans and grim them",
        ["howitworks4"] = "Process it to get coffee drinks",
        ["howitworks5"] = "Sell coffee drinks in the coffee shop",
        ["require"] = "1x Gloves",
        ["svg"] = "<svg class='jobs-coffeefarmericon' width='64' height='64' viewBox='0 0 64 64' fill='none' xmlns='http://www.w3.org/2000/svg'><path d='M16 48C19.8352 47.4306 23.3379 45.5012 25.8688 42.5639C28.3998 39.6266 29.7903 35.8773 29.7866 32C29.8059 27.1329 31.5716 22.4344 34.7624 18.7591C37.9532 15.0838 42.3572 12.6759 47.1733 11.9733L54.08 10.9867C53.8933 10.7733 53.7333 10.56 53.52 10.3467C44.8267 1.65333 28.1333 4.26667 16.1866 16.16C6.07998 26.4 2.66665 40 7.35998 49.2267L16 48Z' fill='white' fill-opacity='0.5'/><path d='M33.9467 32C33.9292 36.8662 32.1683 41.565 28.9833 45.2441C25.7983 48.9233 21.4002 51.3391 16.5867 52.0533L10.0267 52.9867L10.4267 53.44C19.12 62.1333 35.8133 59.5467 47.76 47.6533C57.8133 37.6267 61.3333 24 56.6667 14.9067L47.76 16.1867C43.9492 16.7402 40.4622 18.6386 37.9288 21.5387C35.3955 24.4388 33.9831 28.1494 33.9467 32Z' fill='white' fill-opacity='0.5'/></svg>",
        ["jobName"] = "coffeefarmer",
        ["jobGrade"] = 0,
        ["points"] = 100,
        ["triggerToStart"] = nil,
        ["randomActionLocations"] = false
    },
    [7] = {
        ["name"] = "Baker",
        ["image"] = "assets/baker.png",
        ["descpos"] = {
            top = "0rem",
            left = "27rem",
            width = "40rem"
        },
        ["vecpos"] = {
            top = "9rem",
            left = "-1rem",
            width = "58rem"
        },
        ["scorepos"] = {
            top = "9rem",
            left = "-1rem",
            width = "58rem"
        },
        ["description"] = "It is a staple food! <br><br>Everyone eats bread! Whether it's a baguette or a sandwich! It makes the whole process and nourishes the city!",
        ["howitworks1"] = "Go to the wardrobe to change into your work clothes",
        ["howitworks2"] = "Take the wheelbarrow and go to the cement collection point",
        ["howitworks3"] = "Harvest wheat and process it into flour",
        ["howitworks4"] = "Process that flour and turn it into loaves of bread.",
        ["howitworks5"] = "Sells loaves of bread to raise money",
        ["require"] = "1x Rolling pin",
        ["svg"] = "<svg class='jobs-breadicon' width='64' height='64' viewBox='0 0 64 64' fill='none' xmlns='http://www.w3.org/2000/svg'><path d='M13.3333 58.6667C9.81334 58.6667 8.40001 52.3733 8.10667 49.8667C7.79088 47.433 8.08409 44.9591 8.96001 42.6667C9.34498 41.5758 10.0072 40.604 10.8815 39.8465C11.7558 39.0891 12.8121 38.5722 13.9467 38.3467C17.0667 37.8133 19.28 39.68 22.1067 40.32C22.6377 40.4904 23.2037 40.5203 23.7497 40.4068C24.2957 40.2932 24.8029 40.0401 25.2219 39.6722C25.6409 39.3042 25.9574 38.8339 26.1405 38.3072C26.3236 37.7804 26.3671 37.2152 26.2667 36.6667C25.0933 32.08 16.7467 32 13.3333 32C13.3333 27.04 18.7733 26.4 22.6667 26.7733C24.9764 26.9964 27.2506 27.4978 29.44 28.2667C30.7733 28.72 32.32 29.8667 33.7867 29.76C36 29.5733 36.4533 27.28 35.4933 25.6C33.1733 21.6533 26.5867 21.3333 22.6667 21.3333C22.6667 16 27.28 14.9867 31.7067 15.7867C33.9924 16.2362 36.2199 16.9429 38.3467 17.8933C39.7067 18.48 41.3333 19.6 42.8267 19.0933C46.6667 17.92 42.6667 13.8133 40.96 12.8267C39.7622 12.1657 38.4914 11.6466 37.1733 11.28C35.7333 10.8533 33.9733 11.0133 35.28 9.33334C37.3232 7.53071 39.8582 6.37929 42.56 6.02667C47.6 4.85334 54.56 4.64 55.7867 10.9867C56.1954 14.3375 55.3914 17.7239 53.52 20.5333C48.5521 29.031 42.4017 36.7796 35.2533 43.5467C31.4671 47.4279 27.364 50.9869 22.9867 54.1867C20.32 56.1067 16.8 58.6667 13.3333 58.6667Z' fill='white' fill-opacity='0.5'/></svg>",
        ["jobName"] = "baker",
        ["jobGrade"] = 0,
        ["points"] = 100,
        ["triggerToStart"] = nil,
        ["randomActionLocations"] = false
    },
    [8] = {
        ["name"] = "Tailor",
        ["image"] = "assets/tailor.png",
        ["descpos"] = {
            top = "0rem",
            left = "26rem",
            width = "44rem"
        },
        ["vecpos"] = {
            top = "9rem",
            left = "-3rem",
            width = "63rem"
        },
        ["scorepos"] = {
            top = "9rem",
            left = "-3rem",
            width = "63rem"
        },
        ["description"] = "A new T-shirt?<br><br>Go through the whole process, from gathering the essentials, to creating the fabric, to making T-shirts for the people of Los Santos to wear!",
        ["howitworks1"] = "Go to the wardrobe to change into your work clothes",
        ["howitworks2"] = "Take the work vehicle and drive to the point marked on the map",
        ["howitworks3"] = "Collect cotton and process it to create fabrics.",
        ["howitworks4"] = "With the fabrics you can create T-shirts!",
        ["howitworks5"] = "Sells the T-shirts to a wholesaler to raise cash",
        ["require"] = "1x Sewing needle",
        ["svg"] = "<svg class='jobs-shirticon' width='64' height='64' viewBox='0 0 64 64' fill='none' xmlns='http://www.w3.org/2000/svg'><path d='M50.25 12H44.8375L41.415 8.585C41.2291 8.39933 41.0085 8.2521 40.7657 8.15173C40.5229 8.05135 40.2627 7.99979 40 8H24C23.7373 7.99979 23.4771 8.05135 23.2343 8.15173C22.9915 8.2521 22.7709 8.39933 22.585 8.585L19.1625 12H13.75C12.7554 12 11.8016 12.3951 11.0983 13.0984C10.3951 13.8016 10 14.7554 10 15.75V54.25C10 55.2446 10.3951 56.1984 11.0983 56.9016C11.8016 57.6049 12.7554 58 13.75 58H29C29.2652 58 29.5196 57.8946 29.7071 57.7071C29.8946 57.5196 30 57.2652 30 57V28.0675C29.9936 27.5515 30.1826 27.0522 30.5289 26.6697C30.8753 26.2872 31.3534 26.0497 31.8675 26.005C32.1411 25.9868 32.4155 26.0251 32.6736 26.1175C32.9318 26.2098 33.1682 26.3542 33.3682 26.5418C33.5682 26.7294 33.7274 26.956 33.8361 27.2077C33.9448 27.4595 34.0006 27.7308 34 28.005V57C34 57.2652 34.1054 57.5196 34.2929 57.7071C34.4804 57.8946 34.7348 58 35 58H50.25C51.2446 58 52.1984 57.6049 52.9016 56.9016C53.6049 56.1984 54 55.2446 54 54.25V15.75C54 14.7554 53.6049 13.8016 52.9016 13.0984C52.1984 12.3951 51.2446 12 50.25 12ZM21.635 28.77C21.4888 28.8902 21.3114 28.9664 21.1236 28.9898C20.9358 29.0132 20.7452 28.9828 20.5739 28.9022C20.4027 28.8215 20.2579 28.6939 20.1563 28.5342C20.0547 28.3745 20.0005 28.1893 20 28V16.8275L23.81 13.0175L29.6775 21.82L21.635 28.77ZM44 28C44.0004 28.1903 43.9466 28.3768 43.8447 28.5375C43.7429 28.6983 43.5973 28.8266 43.425 28.9075C43.2557 28.9891 43.0666 29.0205 42.8801 28.9979C42.6935 28.9753 42.5174 28.8997 42.3725 28.78L34.3225 21.825L40.19 13.0225L44 16.8275V28Z' fill='white' fill-opacity='0.5'/></svg>",
        ["jobName"] = "tailor",
        ["jobGrade"] = 0,
        ["points"] = 100,
        ["triggerToStart"] = nil,
        ["randomActionLocations"] = false
    },
    [9] = {
        ["name"] = "Scientist",
        ["image"] = "assets/scientist.png",
        ["descpos"] = {
            top = "0rem",
            left = "31rem",
            width = "40rem"
        },
        ["vecpos"] = {
            top = "9rem",
            left = "-6rem",
            width = "58rem"
        },
        ["scorepos"] = {
            top = "9rem",
            left = "-6rem",
            width = "58rem"
        },
        ["description"] = "So many technological advances!<br><br>It prevents the city from catching any disease. Find samples, process them in the lab and create drugs that you can sell in the hospital.",
        ["howitworks1"] = "Go to the wardrobe to change into your work clothes",
        ["howitworks2"] = "Take the work vehicle and drive to the points marked on the map",
        ["howitworks3"] = "Retrieve as many samples as possible",
        ["howitworks4"] = "Process them in the laboratory and create pharmaceuticals",
        ["howitworks5"] = "Sell these drugs at the hospital",
        ["require"] = "1x Tube test",
        ["svg"] = "<svg class='jobs-scientisticon' width='64' height='64' viewBox='0 0 64 64' fill='none' xmlns='http://www.w3.org/2000/svg'><path d='M43.72 5.008C43.2199 4.50565 42.558 4.19663 41.8517 4.13573C41.1455 4.07483 40.4405 4.26599 39.8617 4.67531C39.283 5.08463 38.8679 5.68567 38.69 6.37186C38.5121 7.05806 38.583 7.78507 38.89 8.424L7.65601 39.656C6.54161 40.7704 5.65762 42.0934 5.05451 43.5494C4.45141 45.0054 4.14099 46.566 4.14099 48.142C4.14099 49.718 4.45141 51.2786 5.05451 52.7346C5.65762 54.1906 6.54161 55.5136 7.65601 56.628C8.7704 57.7424 10.0934 58.6264 11.5494 59.2295C13.0054 59.8326 14.566 60.143 16.142 60.143C17.718 60.143 19.2786 59.8326 20.7346 59.2295C22.1906 58.6264 23.5136 57.7424 24.628 56.628L55.86 25.394C56.4986 25.6998 57.2248 25.7698 57.9101 25.5917C58.5953 25.4136 59.1955 24.9989 59.6045 24.4209C60.0134 23.8429 60.2048 23.1389 60.1447 22.4334C60.0846 21.7279 59.7769 21.0665 59.276 20.566L43.72 5.008ZM41.598 11.372L52.912 22.686L46.776 28.822L25.824 27.146L29.578 23.394L32.758 26.574C33.0408 26.8474 33.4196 26.9987 33.8129 26.9955C34.2062 26.9923 34.5825 26.8347 34.8608 26.5567C35.139 26.2787 35.2969 25.9026 35.3005 25.5093C35.3041 25.116 35.1531 24.737 34.88 24.454L31.7 21.274L41.598 11.372ZM23.214 29.758L26.394 32.938C26.6674 33.2208 26.8188 33.5996 26.8155 33.9929C26.8123 34.3862 26.6547 34.7625 26.3767 35.0407C26.0988 35.319 25.7226 35.4769 25.3293 35.4805C24.936 35.4841 24.557 35.3331 24.274 35.06L21.092 31.88L23.212 29.758H23.214ZM14.728 38.24L17.91 41.422C18.1834 41.7048 18.3348 42.0836 18.3315 42.4769C18.3283 42.8702 18.1707 43.2465 17.8927 43.5247C17.6148 43.803 17.2386 43.9609 16.8453 43.9645C16.452 43.9681 16.073 43.8171 15.79 43.544L12.606 40.362L14.728 38.24Z' fill='white' fill-opacity='0.5'/></svg>",
        ["jobName"] = "scientist",
        ["jobGrade"] = 0,
        ["points"] = 100,
        ["triggerToStart"] = nil,
        ["randomActionLocations"] = false
    }
}

