-- ak4y dev.

-- IF YOU HAVE ANY PROBLEM OR DO YOU NEED HELP PLS COME TO MY DISCORD SERVER AND CREATE A TICKET
-- IF YOU DONT HAVE ANY PROBLEM YET AGAIN COME TO MY DISCORD =)
-- https://discord.gg/kWwM3Bx

--------------------------------------------------------------------------------------------------------
-- IMPORTANT -- IMPORTANT -- IMPORTANT -- IMPORTANT -- IMPORTANT -- IMPORTANT -- IMPORTANT -- IMPORTANT

-- YOU SHOUD RESET AK4Y-BLACKMARKET SQL, WHEN YOU CHANGE ANYTHING ON TASKS... ITS NUI DEVTOOLS PROTECT
--------------------------------------------------------------------------------------------------------

AK4Y = {}

AK4Y.Framework = "qb" -- qb / oldqb | qb = export system | oldqb = triggerevent system
AK4Y.Mysql = "oxmysql" -- Check fxmanifest.lua when you change it! | ghmattimysql / oxmysql / mysql-async
AK4Y.TaskResetPeriod = 1 -- DAY (Tasks are reset and become available again)
AK4Y.WeaponsAreItem = true -- If your weapons are item then you should set this TRUE.
AK4Y.DefaultGarage = "pillboxgarage" -- purchased vehicles will be sent to this garage

AK4Y.Translate = {
    male = "MALE",
    female = "FEMALE",
}

AK4Y.Blackmarkets = {
    {
        pedName = "AK4Y", 
        pedHash = 0x855E36A3, -- https://wiki.rage.mp/index.php?title=Peds
        pedCoord = vector3(606.67, -463.62, 23.74), -- ped coord
        h = 351, -- ped heading
        drawText = "Nervous-Looking Man",
        authorizedJobs = {"all"}, -- if you type all then all players will have access
        -- authorizedJobs = {"gang1", "gang2"}, -- If you want to integrate the job, this is the example.
        blipSettings = { -- https://docs.fivem.net/docs/game-references/blips/
            blip = false,
            blipName = "Blackmarket",
            blipIcon = 68,
            blipColour = 3,
        },
    },
    -- {
    --     pedName = "AK4Y", 
    --     pedHash = 0x855E36A3, -- https://wiki.rage.mp/index.php?title=Peds
    --     pedCoord = vector3(600.11, -462.05, 24.38),
    --     drawText = "Nervous-Looking Man",
    --     authorizedJobs = {"gang1", "gang2"}
    --     h = 351,
    --     blipSettings = { -- https://docs.fivem.net/docs/game-references/blips/
    --         blip = false,
    --         blipName = "Blackmarket",
    --         blipIcon = 68,
    --         blipColour = 3,
    --     },
    -- },
}

AK4Y.Categories = {
    { category = "weapon", label = "WEAPON" },
    { category = "item", label = "ITEM" },
    { category = "vehicles", label = "VEHICLES" },
    -- { category = "knife", label = "KNIFE" },
    -- { category = "rig", label = "RIG" },
}

-- type: "ITEM", "WEAPON", "MONEY", "VEHICLE"
AK4Y.CategoryItems = {
    { id = 1, category = "weapon", itemName = "weapon_heavypistol", type = "WEAPON", label = "HEAVY PISTOL", price = 65000, count = 1, level = 1, image = "./images/weapon_heavypistol.png" },
    { id = 2, category = "weapon", itemName = "weapon_appistol", type = "WEAPON", label = "AP PISTOL", price = 95000, count = 1, level = 1, image = "./images/weapon_appistol.png" },
    { id = 3, category = "weapon", itemName = "weapon_combatpistol", type = "WEAPON", label = "COMBAT PISTOL", price = 45000, count = 1, level = 2, image = "./images/weapon_combatpistol.png" },
    { id = 4, category = "weapon", itemName = "weapon_combatpdw", type = "WEAPON", label = "COMBAT PDW", price = 145000, count = 1, level = 4, image = "./images/weapon_combatpdw.png" },
    { id = 5, category = "weapon", itemName = "weapon_smg", type = "WEAPON", label = "SMG", price = 170000, count = 1, level = 5, image = "./images/weapon_smg.png" },
    { id = 6, category = "item", itemName = "pistol_ammo", type = "ITEM", label = "PISTOL AMMO", price = 500, count = 1, level = 3, image = "./images/pistol_ammo.png" },
    { id = 7, category = "item", itemName = "security_card_02", type = "ITEM", label = "SECURITY CARD", price = 5500, count = 1, level = 5, image = "./images/security_card_02.png" },
    { id = 8, category = "item", itemName = "weed_baggy", type = "ITEM", label = "WEED BAGGY", price = 750, count = 1, level = 10, image = "./images/weed_baggy.png" },
}

-- These tasks are examples, you should integrate tasks according to your own server package and taste.
-- Don't worry, this process is quite simple, there is an example task integration and explanation in example.lua.
AK4Y.Tasks = {
    {taskId = 1, requiredcount = 2, rewardXP = 1500, taskTitle = "Type 'tasktry' in chat", taskDescription = "Try out this command!"},
    {taskId = 2, requiredcount = 50, rewardXP = 200, taskTitle = "Do a carjacking", taskDescription = "Steal a local pedestrian car to complete this task."},
    {taskId = 3, requiredcount = 8, rewardXP = 300, taskTitle = "Get Involved in a House Robbery", taskDescription = "Participate in a house robbery to complete this task"},
    {taskId = 4, requiredcount = 20, rewardXP = 400, taskTitle = "Do a bank robbery", taskDescription = "Get invovled in a bank robbery to complete this task."},
    {taskId = 5, requiredcount = 10, rewardXP = 500, taskTitle = "Kill 10 NPC", taskDescription = "Kill 10 local pedestrians to complete this task."},
    {taskId = 6, requiredcount = 5, rewardXP = 600, taskTitle = "Steal 5 Police Car", taskDescription = "Steal 5 police cars to complete this task."},
    {taskId = 7, requiredcount = 20, rewardXP = 700, taskTitle = "Rob 5 people", taskDescription = "Rob 5 different people to complete this task."},
}