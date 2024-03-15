Config, Lang, Noti, WH, Points, Actions, AO, Blips = {}, {}, {}, {}, {}, {}, {}, {}

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
Config.ESXExport = "es_extended"
-- Default ESX: "esx:getSharedObject" | Default QB: "qb-core"
Config.Core = "qb-core"
-- oxmysql, mysql-async or ghmattisql
Config.Mysql = "oxmysql"
-- Waiting time to update the gang map
Config.updateMapTimer = 10000
-- Points needed by the gang to pass each level
Config.PointsToNextLevel = 1500
-- Only the leader can deposit or withdraw
Config.OnlyLeaderDW = true
-- Font type for floating alerts. Set to 0 for Chinese language
Config.alertTextFont = 4
-- Amount to be added hourly to the cash balance of the stores to be extorted
Config.CollectMoneyAmountPerHour = 60
-- Multiplier of the amount to be generated each hour by the stores
Config.CollectMoneyMultiplier = 2
-- Enable / Disable the use of garages for gangs
Config.useGarages = true
-- Enable / Disable the use of stash
Config.useStash = true
-- Enable / Disable the use of lockers
Config.useLockers = true
-- Maximum number of members allowed in a gang
Config.maxMembers = 15
-- Active if you want to use cron to trigger the actions of contract killing, smuggling and transporting illegal persons
Config.useCron = true
-- If the previous option is activated. Hours at which actions will start for the gangs
Config.cronHours = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24}
-- If you want to show blips to gangs members
Config.showGangBlips = true
-- Set to true if you want to manage the time in which graffiti may be made
Config.adminSprayTime = false
-- Command to manage the time during which graffiti may be made
Config.adminSprayCommand = "spraytime"
-- Set Debug logs
Config.debug = true

--  $$$$$$\   $$$$$$\  $$\   $$\  $$$$$$\        $$\      $$\ $$$$$$$$\ $$\   $$\ $$\   $$\ 
-- $$  __$$\ $$  __$$\ $$$\  $$ |$$  __$$\       $$$\    $$$ |$$  _____|$$$\  $$ |$$ |  $$ |
-- $$ /  \__|$$ /  $$ |$$$$\ $$ |$$ /  \__|      $$$$\  $$$$ |$$ |      $$$$\ $$ |$$ |  $$ |
-- $$ |$$$$\ $$$$$$$$ |$$ $$\$$ |$$ |$$$$\       $$\$$\$$ $$ |$$$$$\    $$ $$\$$ |$$ |  $$ |
-- $$ |\_$$ |$$  __$$ |$$ \$$$$ |$$ |\_$$ |      $$ \$$$  $$ |$$  __|   $$ \$$$$ |$$ |  $$ |
-- $$ |  $$ |$$ |  $$ |$$ |\$$$ |$$ |  $$ |      $$ |\$  /$$ |$$ |      $$ |\$$$ |$$ |  $$ |
-- \$$$$$$  |$$ |  $$ |$$ | \$$ |\$$$$$$  |      $$ | \_/ $$ |$$$$$$$$\ $$ | \$$ |\$$$$$$  |
-- \______/ \__|  \__|\__|  \__| \______/       \__|     \__|\________|\__|  \__| \______/

-- Set to true if you want to use a key to open the options menu
Config.useOptionsMenuKey = false
-- Key to open the options menu (steal, put in vehicle, etc.) Default = 167 (F6)
Config.optionsMenuKey = 167
-- Command to open the options menu. Default = "gangoptions"
Config.optionsMenuCommand = ""
-- Animation to handcuff the player
Config.cuffGangAnimation = {
    ["dict"] = "mp_arrest_paired",
    ["anim"] = "cop_p2_back_right"
}
-- Animation to uncuff the player
Config.uncuffGangAnimation = {
    ["dict"] = "mp_arresting",
    ["anim"] = "a_uncuff"
}
-- Animation to be played when the player is arrested
Config.arrestedAnimation = {
    ["dict"] = "mp_arrest_paired",
    ["anim"] = "crook_p2_back_left"
}

-- $$$$$$\   $$$$$$\  $$$$$$$\   $$$$$$\   $$$$$$\  $$$$$$$$\ 
-- $$  __$$\ $$  __$$\ $$  __$$\ $$  __$$\ $$  __$$\ $$  _____|
-- $$ /  \__|$$ /  $$ |$$ |  $$ |$$ /  $$ |$$ /  \__|$$ |      
-- $$ |$$$$\ $$$$$$$$ |$$$$$$$  |$$$$$$$$ |$$ |$$$$\ $$$$$\    
-- $$ |\_$$ |$$  __$$ |$$  __$$< $$  __$$ |$$ |\_$$ |$$  __|   
-- $$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |      
-- \$$$$$$  |$$ |  $$ |$$ |  $$ |$$ |  $$ |\$$$$$$  |$$$$$$$$\ 
-- \______/ \__|  \__|\__|  \__|\__|  \__| \______/ \________|

-- Configure the trigger for your garage script

Blips.garage = true
Blips.gblip = 326
Blips.gcolor = 11
Blips.gscale = 0.7
Blips.gtext = "Gang Garage"

function openGarage(gangname, location)
    local data = {
        type = "house",
        garage = gangname,
        index = gangname
    }
    TriggerEvent("qb-garages:client:VehicleList", data)
    -- Example with bit-garage
    -- TriggerEvent("bit-garage:open", gangname)
end

-- $$$$$$\ $$$$$$$$\  $$$$$$\   $$$$$$\  $$\   $$\ 
-- $$  __$$\\__$$  __|$$  __$$\ $$  __$$\ $$ |  $$ |
-- $$ /  \__|  $$ |   $$ /  $$ |$$ /  \__|$$ |  $$ |
-- \$$$$$$\    $$ |   $$$$$$$$ |\$$$$$$\  $$$$$$$$ |
-- \____$$\   $$ |   $$  __$$ | \____$$\ $$  __$$ |
-- $$\   $$ |  $$ |   $$ |  $$ |$$\   $$ |$$ |  $$ |
-- \$$$$$$  |  $$ |   $$ |  $$ |\$$$$$$  |$$ |  $$ |
-- \______/   \__|   \__|  \__| \______/ \__|  \__|

-- Configure your inventory script trigger to create a stash

Blips.stash = true
Blips.sblip = 765
Blips.scolor = 11
Blips.sscale = 0.7
Blips.stext = "Gang Stash"

function openStash(gangname, location)
    -- TriggerServerEvent("inventory:server:OpenInventory", "stash", gangname)
    -- TriggerEvent("inventory:client:SetCurrentStash", gangname)
end

-- $$\       $$$$$$\   $$$$$$\  $$\   $$\ $$$$$$$$\ $$$$$$$\  
-- $$ |     $$  __$$\ $$  __$$\ $$ | $$  |$$  _____|$$  __$$\ 
-- $$ |     $$ /  $$ |$$ /  \__|$$ |$$  / $$ |      $$ |  $$ |
-- $$ |     $$ |  $$ |$$ |      $$$$$  /  $$$$$\    $$$$$$$  |
-- $$ |     $$ |  $$ |$$ |      $$  $$<   $$  __|   $$  __$$< 
-- $$ |     $$ |  $$ |$$ |  $$\ $$ |\$$\  $$ |      $$ |  $$ |
-- $$$$$$$$\ $$$$$$  |\$$$$$$  |$$ | \$$\ $$$$$$$$\ $$ |  $$ |
-- \________|\______/  \______/ \__|  \__|\________|\__|  \__|

-- Configure your inventory script trigger to create a locker (optional)

Blips.locker = true
Blips.lblip = 730
Blips.lcolor = 11
Blips.lscale = 0.7
Blips.ltext = "Gang Stash"
local stashZones = {}
function openLocker(gangname, location)
    
    for _, v in pairs(Config.Locations['stash']) do
        stashZones[#stashZones + 1] = BoxZone:Create(
            vector3(vector3(v.x, v.y, v.z)), 1.5, 1.5, {
                name = 'box_zone',
                debugPoly = false,
                minZ = v.z - 1,
                maxZ = v.z + 1,
            })
    end

    local stashCombo = ComboZone:Create(stashZones, { name = 'stashCombo', debugPoly = false })
    stashCombo:onPlayerInOut(function(isPointInside, _, _)
        if isPointInside then
            inStash = true
            if PlayerJob.type == 'leo' and PlayerJob.onduty then
                exports['qb-core']:DrawText(Lang:t('info.stash_enter'), 'left')
                stash()
            end
        else
            inStash = false
            exports['qb-core']:HideText()
        end
end

--  $$$$$$\  $$$$$$$\  $$$$$$$$\ $$\   $$\       $$$$$$$$\  $$$$$$\  $$$$$$$\   $$$$$$\  $$$$$$$$\ $$$$$$$$\       $$$$$$\ $$\   $$\ $$\    $$\ $$$$$$$$\ $$\   $$\ $$$$$$$$\  $$$$$$\  $$$$$$$\ $$\     $$\ 
-- $$  __$$\ $$  __$$\ $$  _____|$$$\  $$ |      \__$$  __|$$  __$$\ $$  __$$\ $$  __$$\ $$  _____|\__$$  __|      \_$$  _|$$$\  $$ |$$ |   $$ |$$  _____|$$$\  $$ |\__$$  __|$$  __$$\ $$  __$$\\$$\   $$  |
-- $$ /  $$ |$$ |  $$ |$$ |      $$$$\ $$ |         $$ |   $$ /  $$ |$$ |  $$ |$$ /  \__|$$ |         $$ |           $$ |  $$$$\ $$ |$$ |   $$ |$$ |      $$$$\ $$ |   $$ |   $$ /  $$ |$$ |  $$ |\$$\ $$  / 
-- $$ |  $$ |$$$$$$$  |$$$$$\    $$ $$\$$ |         $$ |   $$$$$$$$ |$$$$$$$  |$$ |$$$$\ $$$$$\       $$ |           $$ |  $$ $$\$$ |\$$\  $$  |$$$$$\    $$ $$\$$ |   $$ |   $$ |  $$ |$$$$$$$  | \$$$$  /  
-- $$ |  $$ |$$  ____/ $$  __|   $$ \$$$$ |         $$ |   $$  __$$ |$$  __$$< $$ |\_$$ |$$  __|      $$ |           $$ |  $$ \$$$$ | \$$\$$  / $$  __|   $$ \$$$$ |   $$ |   $$ |  $$ |$$  __$$<   \$$  /   
-- $$ |  $$ |$$ |      $$ |      $$ |\$$$ |         $$ |   $$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |         $$ |           $$ |  $$ |\$$$ |  \$$$  /  $$ |      $$ |\$$$ |   $$ |   $$ |  $$ |$$ |  $$ |   $$ |    
--  $$$$$$  |$$ |      $$$$$$$$\ $$ | \$$ |         $$ |   $$ |  $$ |$$ |  $$ |\$$$$$$  |$$$$$$$$\    $$ |         $$$$$$\ $$ | \$$ |   \$  /   $$$$$$$$\ $$ | \$$ |   $$ |    $$$$$$  |$$ |  $$ |   $$ |    
--  \______/ \__|      \________|\__|  \__|         \__|   \__|  \__|\__|  \__| \______/ \________|   \__|         \______|\__|  \__|    \_/    \________|\__|  \__|   \__|    \______/ \__|  \__|   \__|

function openTargetInventory(playerID, targetID)
    TriggerServerEvent("inventory:server:OpenInventory", "otherplayer", targetID)
    loadAnimation("missheistfbisetup1")
    TaskPlayAnim(PlayerPedId(), "missheistfbisetup1", "hassle_intro_loop_f", 8.0, 8.0, -1, 1, 0, 0, 0, 0)
    TriggerServerEvent("bit-gangs:notification", targetID, Noti.check, Lang.robbed, 5000)
end

-- $$$$$$$$\ $$$$$$$$\ $$$$$$$\  $$$$$$$\  $$$$$$\ $$$$$$$$\  $$$$$$\  $$$$$$$\ $$\     $$\        $$$$$$\   $$$$$$\  $$$$$$$\ $$$$$$$$\ $$\   $$\ $$$$$$$\  $$$$$$$$\ 
-- \__$$  __|$$  _____|$$  __$$\ $$  __$$\ \_$$  _|\__$$  __|$$  __$$\ $$  __$$\\$$\   $$  |      $$  __$$\ $$  __$$\ $$  __$$\\__$$  __|$$ |  $$ |$$  __$$\ $$  _____|
--    $$ |   $$ |      $$ |  $$ |$$ |  $$ |  $$ |     $$ |   $$ /  $$ |$$ |  $$ |\$$\ $$  /       $$ /  \__|$$ /  $$ |$$ |  $$ |  $$ |   $$ |  $$ |$$ |  $$ |$$ |      
--    $$ |   $$$$$\    $$$$$$$  |$$$$$$$  |  $$ |     $$ |   $$ |  $$ |$$$$$$$  | \$$$$  /        $$ |      $$$$$$$$ |$$$$$$$  |  $$ |   $$ |  $$ |$$$$$$$  |$$$$$\    
--    $$ |   $$  __|   $$  __$$< $$  __$$<   $$ |     $$ |   $$ |  $$ |$$  __$$<   \$$  /         $$ |      $$  __$$ |$$  ____/   $$ |   $$ |  $$ |$$  __$$< $$  __|   
--    $$ |   $$ |      $$ |  $$ |$$ |  $$ |  $$ |     $$ |   $$ |  $$ |$$ |  $$ |   $$ |          $$ |  $$\ $$ |  $$ |$$ |        $$ |   $$ |  $$ |$$ |  $$ |$$ |      
--    $$ |   $$$$$$$$\ $$ |  $$ |$$ |  $$ |$$$$$$\    $$ |    $$$$$$  |$$ |  $$ |   $$ |          \$$$$$$  |$$ |  $$ |$$ |        $$ |   \$$$$$$  |$$ |  $$ |$$$$$$$$\ 
--    \__|   \________|\__|  \__|\__|  \__|\______|   \__|    \______/ \__|  \__|   \__|           \______/ \__|  \__|\__|        \__|    \______/ \__|  \__|\________|

-- Activate or deactivate the territorial conquest system
Config.useTerritorialConquest = false
-- Points to be added for each second in enemy territory
Config.pointsBySecond = 1

-- $$$$$$\   $$$$$$\ $$$$$$$$\ $$$$$$\  $$$$$$\  $$\   $$\  $$$$$$\  
-- $$  __$$\ $$  __$$\\__$$  __|\_$$  _|$$  __$$\ $$$\  $$ |$$  __$$\ 
-- $$ /  $$ |$$ /  \__|  $$ |     $$ |  $$ /  $$ |$$$$\ $$ |$$ /  \__|
-- $$$$$$$$ |$$ |        $$ |     $$ |  $$ |  $$ |$$ $$\$$ |\$$$$$$\  
-- $$  __$$ |$$ |        $$ |     $$ |  $$ |  $$ |$$ \$$$$ | \____$$\ 
-- $$ |  $$ |$$ |  $$\   $$ |     $$ |  $$ |  $$ |$$ |\$$$ |$$\   $$ |
-- $$ |  $$ |\$$$$$$  |  $$ |   $$$$$$\  $$$$$$  |$$ | \$$ |\$$$$$$  |
-- \__|  \__| \______/   \__|   \______| \______/ \__|  \__| \______/

-- Activates or deactivates the actions allowed for the bands.

Actions.Graffiti = true
Actions.CollectMoney = true
Actions.DrugDealing = true
Actions.ContractKilling = true
Actions.ContractKillingCommand = "gangkill"
Actions.Smuggling = true
Actions.SmugglingCommand = "gangsmuggling"
Actions.IllegalPeople = true
Actions.IllegalPeopleCommand = "gangpeople"
Actions.EliminateEnemyGangMember = true

-- $$$$$$$\   $$$$$$\  $$$$$$\ $$\   $$\ $$$$$$$$\  $$$$$$\  
-- $$  __$$\ $$  __$$\ \_$$  _|$$$\  $$ |\__$$  __|$$  __$$\ 
-- $$ |  $$ |$$ /  $$ |  $$ |  $$$$\ $$ |   $$ |   $$ /  \__|
-- $$$$$$$  |$$ |  $$ |  $$ |  $$ $$\$$ |   $$ |   \$$$$$$\  
-- $$  ____/ $$ |  $$ |  $$ |  $$ \$$$$ |   $$ |    \____$$\ 
-- $$ |      $$ |  $$ |  $$ |  $$ |\$$$ |   $$ |   $$\   $$ |
-- $$ |       $$$$$$  |$$$$$$\ $$ | \$$ |   $$ |   \$$$$$$  |
-- \__|       \______/ \______|\__|  \__|   \__|    \______/

-- You can edit the amount of points to be awarded to the gang for each action. 
-- The text is used to identify the actions in the discord webhook.

Points.graffiti = 20
Points.graffitiText = "Graffiti creation"
Points.collectMoney = 30
Points.collectMoneyText = "Collect money from store"
Points.drugDealing = 50
Points.drugDealingText = "Drug dealing"
Points.contractKilling = 75
Points.contractKillingText = "Contract of murder fulfilled"
Points.smuggling = 50
Points.smugglingText = "Smuggling of goods"
Points.illegalPeople = 75
Points.illegalPeopleText = "Transportation of illegal people"
Points.eleminateEnemyGangMember = 100
Points.eleminateEnemyGangMemberText = "Eliminate an enemy gang member"

-- $$$$$$\   $$$$$$\ $$$$$$$$\ $$$$$$\  $$$$$$\  $$\   $$\  $$$$$$\         $$$$$$\  $$$$$$$\ $$$$$$$$\ $$$$$$\  $$$$$$\  $$\   $$\  $$$$$$\  
-- $$  __$$\ $$  __$$\\__$$  __|\_$$  _|$$  __$$\ $$$\  $$ |$$  __$$\       $$  __$$\ $$  __$$\\__$$  __|\_$$  _|$$  __$$\ $$$\  $$ |$$  __$$\ 
-- $$ /  $$ |$$ /  \__|  $$ |     $$ |  $$ /  $$ |$$$$\ $$ |$$ /  \__|      $$ /  $$ |$$ |  $$ |  $$ |     $$ |  $$ /  $$ |$$$$\ $$ |$$ /  \__|
-- $$$$$$$$ |$$ |        $$ |     $$ |  $$ |  $$ |$$ $$\$$ |\$$$$$$\        $$ |  $$ |$$$$$$$  |  $$ |     $$ |  $$ |  $$ |$$ $$\$$ |\$$$$$$\  
-- $$  __$$ |$$ |        $$ |     $$ |  $$ |  $$ |$$ \$$$$ | \____$$\       $$ |  $$ |$$  ____/   $$ |     $$ |  $$ |  $$ |$$ \$$$$ | \____$$\ 
-- $$ |  $$ |$$ |  $$\   $$ |     $$ |  $$ |  $$ |$$ |\$$$ |$$\   $$ |      $$ |  $$ |$$ |        $$ |     $$ |  $$ |  $$ |$$ |\$$$ |$$\   $$ |
-- $$ |  $$ |\$$$$$$  |  $$ |   $$$$$$\  $$$$$$  |$$ | \$$ |\$$$$$$  |       $$$$$$  |$$ |        $$ |   $$$$$$\  $$$$$$  |$$ | \$$ |\$$$$$$  |
-- \__|  \__| \______/   \__|   \______| \______/ \__|  \__| \______/        \______/ \__|        \__|   \______| \______/ \__|  \__| \______/

-- Money to be given to the user when selling drugs, by default a value between 50 and 200$. Set to nil if you don't want to receive money
AO.drugDealingAmount = math.random(50, 200)
-- Percentage of possibility to notify the police
AO.drugDealingPolice = 100
-- Allowed drugs to sell (enter the name of the item)
AO.allowedDrugs = {'weed_white-widow', 'cocaine', 'lsd'}
-- Money to be given to the user at the end of the murder contract, by default a value between $50 and $200. Set to nil if you don't want to receive money
AO.contractKillingAmount = math.random(50, 200)
-- Activate if you want the police to be notified when the target is killed.
AO.contractKillingPolice = true
-- Money to be given to the user at the end of the smuggling, by default a value between $50 and $200. Set to nil if you don't want to receive money
AO.smugglingAmount = math.random(50, 200)
-- Prop of the contraband item
AO.smugglingProp = "ex_office_swag_drugbag2"
-- Activate if you want the police to be notified when the shipment is picked up.
AO.smugglingPolice = true
-- Money to be given to the user at the end of the transport of illegal persons, by default a value between $50 and $200. Set to null if you do not wish to receive money.
AO.illegalPeopleAmount = math.random(50, 200)
-- Final point of delivery of illegal persons
AO.illegalPeopleFinalLocation = vector3(555.93, -1797.35, 29.2)
-- Activate if you want the police to be alerted when the player reaches the illegal persons
AO.illegalPeoplePolice = true

-- $$$$$$$\  $$$$$$\  $$$$$$\  $$$$$$$\   $$$$$$\ $$$$$$$$\  $$$$$$\  $$\   $$\ 
-- $$  __$$\ \_$$  _|$$  __$$\ $$  __$$\ $$  __$$\\__$$  __|$$  __$$\ $$ |  $$ |
-- $$ |  $$ |  $$ |  $$ /  \__|$$ |  $$ |$$ /  $$ |  $$ |   $$ /  \__|$$ |  $$ |
-- $$ |  $$ |  $$ |  \$$$$$$\  $$$$$$$  |$$$$$$$$ |  $$ |   $$ |      $$$$$$$$ |
-- $$ |  $$ |  $$ |   \____$$\ $$  ____/ $$  __$$ |  $$ |   $$ |      $$  __$$ |
-- $$ |  $$ |  $$ |  $$\   $$ |$$ |      $$ |  $$ |  $$ |   $$ |  $$\ $$ |  $$ |
-- $$$$$$$  |$$$$$$\ \$$$$$$  |$$ |      $$ |  $$ |  $$ |   \$$$$$$  |$$ |  $$ |
-- \_______/ \______| \______/ \__|      \__|  \__|  \__|    \______/ \__|  \__|

function alertDispatch(location, action, message)
    -- Example with cd_dispatch:

    --[[local data = exports['cd_dispatch']:GetPlayerInfo()
    TriggerServerEvent('cd_dispatch:AddNotification', {
        job_table = {'police', }, 
        coords = data.coords,
        title = action,
        message = message, 
        flash = 0,
        unique_id = data.unique_id,
        sound = 1,
        blip = {
            sprite = 431, 
            scale = 1.2, 
            colour = 3,
            flashes = false, 
            text = action,
            time = 5,
            radius = 0,
        }
    })]]
end

-- $$\      $$\  $$$$$$\  $$$$$$$\  $$\   $$\ $$$$$$$$\ $$$$$$$\  
-- $$$\    $$$ |$$  __$$\ $$  __$$\ $$ | $$  |$$  _____|$$  __$$\ 
-- $$$$\  $$$$ |$$ /  $$ |$$ |  $$ |$$ |$$  / $$ |      $$ |  $$ |
-- $$\$$\$$ $$ |$$$$$$$$ |$$$$$$$  |$$$$$  /  $$$$$\    $$$$$$$  |
-- $$ \$$$  $$ |$$  __$$ |$$  __$$< $$  $$<   $$  __|   $$  __$$< 
-- $$ |\$  /$$ |$$ |  $$ |$$ |  $$ |$$ |\$$\  $$ |      $$ |  $$ |
-- $$ | \_/ $$ |$$ |  $$ |$$ |  $$ |$$ | \$$\ $$$$$$$$\ $$ |  $$ |
-- \__|     \__|\__|  \__|\__|  \__|\__|  \__|\________|\__|  \__|

Marker = {
    mtype = 23,
    -- RGB COLOR:
    r = 11,
    g = 236,
    b = 188
}

-- $$$$$$\  $$$$$$$\  $$$$$$$\   $$$$$$\ $$\     $$\ 
-- $$  __$$\ $$  __$$\ $$  __$$\ $$  __$$\\$$\   $$  |
-- $$ /  \__|$$ |  $$ |$$ |  $$ |$$ /  $$ |\$$\ $$  / 
-- \$$$$$$\  $$$$$$$  |$$$$$$$  |$$$$$$$$ | \$$$$  /  
-- \____$$\ $$  ____/ $$  __$$< $$  __$$ |  \$$  /   
-- $$\   $$ |$$ |      $$ |  $$ |$$ |  $$ |   $$ |    
-- \$$$$$$  |$$ |      $$ |  $$ |$$ |  $$ |   $$ |    
-- \______/ \__|      \__|  \__|\__|  \__|   \__|

Config.sprayPersist = 2
Config.progressBarDuration = 20000
Config.sprayRemoveDuration = 20000
Config.blacklist = {'nigger', 'nazi', 'moron', 'retard', 'faggot'}
Config.sprayDistance = 30.0

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

-- $$\        $$$$$$\  $$\   $$\  $$$$$$\  $$\   $$\  $$$$$$\   $$$$$$\  $$$$$$$$\ 
-- $$ |      $$  __$$\ $$$\  $$ |$$  __$$\ $$ |  $$ |$$  __$$\ $$  __$$\ $$  _____|
-- $$ |      $$ /  $$ |$$$$\ $$ |$$ /  \__|$$ |  $$ |$$ /  $$ |$$ /  \__|$$ |      
-- $$ |      $$$$$$$$ |$$ $$\$$ |$$ |$$$$\ $$ |  $$ |$$$$$$$$ |$$ |$$$$\ $$$$$\    
-- $$ |      $$  __$$ |$$ \$$$$ |$$ |\_$$ |$$ |  $$ |$$  __$$ |$$ |\_$$ |$$  __|   
-- $$ |      $$ |  $$ |$$ |\$$$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |      
-- $$$$$$$$\ $$ |  $$ |$$ | \$$ |\$$$$$$  |\$$$$$$  |$$ |  $$ |\$$$$$$  |$$$$$$$$\ 
-- \________|\__|  \__|\__|  \__| \______/  \______/ \__|  \__| \______/ \________|

Lang.OpenUI = "gang"
Lang.OpenUIInfo = "Open gang menu"
Lang.OpenAdmin = "admingangs"
Lang.OpenAdminInfo = "Open gangs admin menu"
Lang.LevelInfo = "LEVEL INFO"
Lang.Progress = "Progress"
Lang.ProgressDesc = "Perform acts with your gang to increase your level"
Lang.ProgressNextLevel = "To the next level"
Lang.TotalMembers = "Total members"
Lang.Leader = "Leader"
Lang.Territories = "Territories"
Lang.TerritoriesDesc = "Open the territory map"
Lang.Rating = "Rating"
Lang.Balance = "Family Balance"
Lang.BalanceDesc = "Withdraw or add money to your gang account"
Lang.ActiveEvent = "ACTIVE EVENT"
Lang.Deposit = "DEPOSIT"
Lang.Withdraw = "WITHDRAW"
Lang.CreateGang = "CREATE GANG"
Lang.CreateGangDesc = "Create a new gang indicating all the properties it should have. Add members and ranks."
Lang.ManageGang = "MANAGE GANG"
Lang.ManageGangDesc = "Manage an already created gang, modify its properties. Manage members and ranks."
Lang.ManageStores = "MANAGE STORES"
Lang.ManageStoresDesc = "Creates or eliminates stores where the gangs must collect the money."
Lang.Events = "EVENTS"
Lang.EventsDesc = "Create a new event for the gangs. All gangs will be able to participate."
Lang.GangNameError = "There is already a gang with this name"
Lang.createdGang = "The gang has been created correctly"
Lang.noMember = "You are not a member of any gang"
Lang.updatedGang = "The gang has been successfully updated"
Lang.deletedGang = "The gang has been successfully removed"
Lang.storeDataError = "You must add a store name and location"
Lang.storesUpdated = "Gang stores have been updated"
Lang.noEvent = "No active event"
Lang.updatedEvent = "The current event has been successfully updated"
Lang.gangMoneyError = "Not enough money in the gang's balance sheet"
Lang.userMoneyError = "You don't have enough money to add to the gang balance."
Lang.noPerm = "You must be the leader of the gang to perform this action."
Lang.collectMoney = "Press E to collect money from the store"
Lang.storeError = "The store has not yet received payment. Come back later"
Lang.storePay = "The store has paid for the extortion"
Lang.enterGarage = "Press E to enter the garage"
Lang.membersLimit = "You cannot add more members to the gang"
Lang.openStash = "Press E to open the stash"
Lang.openLocker = "Press E to open the locker"
Lang.sellDrug = "Press E to sell drug"
Lang.sellDrugAlert = "The citizen is alerting the police"
Lang.sellDrugSold = "You have sold the drug without problems"
Lang.PoliceDrugAlert = "Drug sales"
Lang.PoliceDrugAlertText = "There is someone selling drugs to civilians on the street."
Lang.noDrugs = "You don't have any drugs to sell"
Lang.targetKill = "Target to be killed"
Lang.murder = "Murder"
Lang.murderPoliceAlert = "A person has killed a civilian in the middle of the street. Urgent assistance is required!"
Lang.smuggling = "Smuggling"
Lang.pickUpCargo = "Press E to pick up the cargo"
Lang.smugglingPoliceAlert = "Some subjects have been seen making dirty deals. Have a patrol car come to the site."
Lang.SmugglingDelivery = "Delivery of contraband"
Lang.delivery = "Press E to deliver the goods"
Lang.noItem = "You do not have the necessary item"
Lang.cancel = "Cancel"
Lang.menuSprayTitle = "Spray"
Lang.menuSpraySubtitle = "Settings"
Lang.menuSprayFont = "Font"
Lang.menuSprayColor = "Color"
Lang.menuSpraySize = "Size"
Lang.menuSpraySpray = "Spray"
Lang.sprayErrorFlat = "This surface is not flat enough"
Lang.sprayTooFar = "The surface is too far"
Lang.sprayinvalidSurface = "It cannot be sprayed on this surface"
Lang.sprayAim = "Aim the spray at a flat wall"
Lang.sprayNoNearby = "There is no spray nearby to remove"
Lang.sprayNeedSpray = "You do not have any spray to spray with"
Lang.sprayLong = "Spray word can be at most 9 characters"
Lang.sprayUsage = "Usage: /spray <word>"
Lang.sprayBlacklist = "This word is blacklisted"
Lang.illegalPersons = "Illegal persons"
Lang.noVehicle = "You must be in a vehicle to transport these people"
Lang.doNoFitVehicle = "People do not fit in this vehicle"
Lang.destination = "Destination"
Lang.illegalPersonsPoliceAlert = "Someone is helping to bring illegal aliens into the country. Heed the warning"
Lang.noUser = "No user found with that ID"
Lang.alreadyGang = "This user is already a member of a gang"
Lang.graffitideactivated = "Graffiti is deactivated"
Lang.graffitiactivated = "Graffiti is activated"
Lang.noPlayersNearby = "There are no players nearby"
Lang.noHandcuff = "The target is not handcuffed"
Lang.dragged = "You are dragging the person"
Lang.undragged = "You have stopped dragging the person"
Lang.robbed = "You are being robbed"
Lang.territoryCapture = "Territory capture"
Lang.capturingTerritory = "You are capturing the territory, stay in the area to add points"
Lang.alertEnemies = "There are enemies performing actions in your territory"
Lang.noHandsUp = "The target does not have his hands up"

-- $$\       $$$$$$$$\ $$\    $$\ $$$$$$$$\ $$\       $$$$$$\  
-- $$ |      $$  _____|$$ |   $$ |$$  _____|$$ |     $$  __$$\ 
-- $$ |      $$ |      $$ |   $$ |$$ |      $$ |     $$ /  \__|
-- $$ |      $$$$$\    \$$\  $$  |$$$$$\    $$ |     \$$$$$$\  
-- $$ |      $$  __|    \$$\$$  / $$  __|   $$ |      \____$$\ 
-- $$ |      $$ |        \$$$  /  $$ |      $$ |     $$\   $$ |
-- $$$$$$$$\ $$$$$$$$\    \$  /   $$$$$$$$\ $$$$$$$$\\$$$$$$  |
-- \________|\________|    \_/    \________|\________|\______/

Levels = {
    [0] = "We are like a seed that will soon sprout and grow into a powerful criminal force. The beginning of our legend!",
    [1] = "Together we are stronger, let's leave our mark on this city!",
    [2] = "No one can stop our rise. We keep moving forward!",
    [3] = "Each successful robbery brings us closer to the top. Let's conquer it all!",
    [4] = "Courage defines us, and success awaits us. There are no limits for us!",
    [5] = "Our reputation spreads throughout the city. Let's show why we are feared!",
    [6] = "Together, we are an unstoppable force. Let's conquer whatever we desire!",
    [7] = "Drug trafficking is just the beginning. We will go for more, without fear!",
    [8] = "Perfection is our goal. We have mastered the art of theft!",
    [9] = "We are the rulers of the night, and nothing will stop us. Let's expand our influence!",
    [10] = "The connections we've made will take us to the top. We are becoming invincible!",
    [11] = "Weapons are our tools for power. We will destroy anything in our way!",
    [12] = "This territory is our home. Let's defend it tooth and nail!",
    [13] = "Loyalty defines us. Together, we will achieve the unimaginable!",
    [14] = "Extortion is just the beginning. We will make everyone pay!",
    [15] = "Our power expands, and our numbers grow. Nothing can stop us!",
    [16] = "In our hideout, we forge plans for greatness. Success is within our reach!",
    [17] = "Financial institutions tremble in our presence. We will steal every last penny!",
    [18] = "Human trafficking is a lucrative business. Let's make them pay for their miserable lives!",
    [19] = "Our reach extends beyond borders. The whole world will tremble before us!",
    [20] = "We have challenged the authorities and will emerge victorious. Power is in our hands!",
    [21] = "Corruption thrives on our influence. We control the strings of power!",
    [22] = "Dirty money becomes clean through our hands. No one can trace us!",
    [23] = "Information is power, and we have absolute control. Let's play with others' lives!",
    [24] = "We are ghosts in the dark. The security forces will never know what hit them!",
    [25] = "Organ trafficking brings unimaginable wealth. No morals can stop us!",
    [26] = "We are the kings of drugs, and no one can compete with us. The market is ours!",
    [27] = "Our drug distribution network extends beyond borders. We are masters of illicit trade!",
    [28] = "Invisibility is our greatest achievement. We continue to elude the authorities!",
    [29] = "A grand-scale heist will change the game completely. Prepare for criminal history!",
    [30] = "Justice is just a concept, and we are its masters. Judges and prosecutors are in our hands!",
    [31] = "Our name is feared in the criminal world. We are a living legend!",
    [32] = "In our fortress, we are invincible. No one can penetrate our defenses!",
    [33] = "Weapons are our business, and no one surpasses us. International trafficking is in our hands!",
    [34] = "We have expanded our empire to multiple cities. The whole world is our domain!",
    [35] = "Our loyal followers are our strength. Together, we will conquer any obstacle!",
    [36] = "Politics is under our control. Puppet governments dance to our tune!",
    [37] = "Chaos is our most powerful weapon. Terror will open the doors to domination!",
    [38] = "Wealth flows incessantly to us. Let's guard it and accumulate limitless power!",
    [39] = "International ties strengthen us. Criminal syndicates support us!",
    [40] = "The government is just a puppet in our hands. We rule the city at our whim!",
    [41] = "Territorial expansion and elimination of enemies: it's our game. Let's conquer everything in our path!",
    [42] = "The elite of our armed forces protects us. Invincibility is our banner!",
    [43] = "Our drug empire spans the entire country. No corner escapes our control!",
    [44] = "Intelligence cannot trace us. Stealth is our greatest advantage!",
    [45] = "Our name echoes worldwide. A powerful criminal organization without rivals!",
    [46] = "Large-scale smuggling is our main business. Illicit trade enriches us!",
    [47] = "Money laundering turns us into respectable businessmen. The double life is our secret!",
    [48] = "The fortress protects us from all dangers. Security is our priority!",
    [49] = "Renowned cartels support us. Our power extends throughout the world!",
    [50] = "The pinnacle of power is our home. We control the criminal underworld in its entirety!"
}

-- $$\      $$\ $$$$$$$$\ $$$$$$$\  $$\   $$\  $$$$$$\   $$$$$$\  $$\   $$\  $$$$$$\  
-- $$ | $\  $$ |$$  _____|$$  __$$\ $$ |  $$ |$$  __$$\ $$  __$$\ $$ | $$  |$$  __$$\ 
-- $$ |$$$\ $$ |$$ |      $$ |  $$ |$$ |  $$ |$$ /  $$ |$$ /  $$ |$$ |$$  / $$ /  \__|
-- $$ $$ $$\$$ |$$$$$\    $$$$$$$\ |$$$$$$$$ |$$ |  $$ |$$ |  $$ |$$$$$  /  \$$$$$$\  
-- $$$$  _$$$$ |$$  __|   $$  __$$\ $$  __$$ |$$ |  $$ |$$ |  $$ |$$  $$<    \____$$\ 
-- $$$  / \$$$ |$$ |      $$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |\$$\  $$\   $$ |
-- $$  /   \$$ |$$$$$$$$\ $$$$$$$  |$$ |  $$ | $$$$$$  | $$$$$$  |$$ | \$$\ \$$$$$$  |
-- \__/     \__|\________|\_______/ \__|  \__| \______/  \______/ \__|  \__| \______/

WH.Action = ""
WH.Operations = ""
WH.SellDrug = ""
WH.StealUser = ""
