-- ak4y dev.

-- IF YOU HAVE ANY PROBLEM OR DO YOU NEED HELP PLS COME TO MY DISCORD SERVER AND CREATE A TICKET
-- IF YOU DONT HAVE ANY PROBLEM YET AGAIN COME TO MY DISCORD :)
-- https://discord.gg/kWwM3Bx

AK4Y = {}

AK4Y.Framework = "qb" -- qb / oldqb | qb = export system | oldqb = triggerevent system
AK4Y.Mysql = "oxmysql" -- Check fxmanifest.lua when you change it! | ghmattimysql / oxmysql / mysql-async

AK4Y.OpenCommand = "dailyRewards"
AK4Y.PlayTime = true -- Does the player have to stay in the game for a certain amount of time to get the award?
AK4Y.Time = 30 * 60000 -- 30 min
AK4Y.AFKCheck = false -- if the player is afk for 10 minutes, the time he/she should have stayed in the game is reset
AK4Y.DefaultGarage = 'pillboxgarage' -- Garage name where the vehicle will be sent after get reward
AK4Y.StartDay = { day = 16, month = 3, year = 2024 } -- This is the start of the awards, this is Day 1 - Prizes increase day by day from this date

AK4Y.Notify = function(text)
    ESX.ShowNotification(text)
end

-- Item types: "item", "money", "vehicle"
AK4Y.Rewards = {
    { day = 1, itemName = "zentorno", itemLabel = "Zentorno", itemCount = 1, itemType = "vehicle", unique = false, image = "./images/zentorno.png" },
    { day = 2, itemName = "WEAPON_MOLOTOV", itemLabel = "Molotov", itemCount = 1, itemType = "item", unique = true, image = "./images/WEAPON_MOLOTOV.png" },
    { day = 3, itemName = "skateboard", itemLabel = "Skateboard", itemCount = 1, itemType = "money", unique = false, image = "./images/kaykay.png" },
    { day = 4, itemName = "condom", itemLabel = "Condom", itemCount = 3, itemType = "item", unique = false, image = "./images/kondom.png" },
    { day = 5, itemName = "drone_flyer_7", itemLabel = "Drone", itemCount = 1, itemType = "item", unique = false, image = "./images/drone_flyer_7.png" },
    { day = 6, itemName = "clip", itemLabel = "Pistol Ammo", itemCount = 5, itemType = "item", unique = false, image = "./images/clip.png" },
    { day = 7, itemName = "WEAPON_GLOCK", itemLabel = "Glock 19", itemCount = 1, itemType = "item", unique = false, image = "./images/WEAPON_GLOCK.png" },
    { day = 8, itemName = "lockpick", itemLabel = "Lockpick", itemCount = 5, itemType = "item", unique = false, image = "./images/lockpick2.png" },
    { day = 9, itemName = "meth", itemLabel = "meth", itemCount = 25, itemType = "item", unique = false, image = "./images/meth.png" },
    { day = 10, itemName = "smg_ammo", itemLabel = "SMG Ammo", itemCount = 5, itemType = "item", unique = false, image = "./images/smg_ammo.png" },
    { day = 11, itemName = "zentorno", itemLabel = "Zentorno", itemCount = 1, itemType = "vehicle", unique = false, image = "./images/zentorno.png" },
    { day = 12, itemName = "WEAPON_MOLOTOV", itemLabel = "Molotov", itemCount = 1, itemType = "item", unique = true, image = "./images/WEAPON_MOLOTOV.png" },
    { day = 13, itemName = "skateboard", itemLabel = "Skateboard", itemCount = 1, itemType = "money", unique = false, image = "./images/kaykay.png" },
    { day = 14, itemName = "condom", itemLabel = "Condom", itemCount = 3, itemType = "item", unique = false, image = "./images/kondom.png" },
    { day = 15, itemName = "drone_flyer_7", itemLabel = "Drone", itemCount = 1, itemType = "item", unique = false, image = "./images/drone_flyer_7.png" },
    { day = 16, itemName = "clip", itemLabel = "Pistol Ammo", itemCount = 5, itemType = "item", unique = false, image = "./images/clip.png" },
    { day = 17, itemName = "WEAPON_GLOCK", itemLabel = "Glock 19", itemCount = 1, itemType = "item", unique = false, image = "./images/WEAPON_GLOCK.png" },
    { day = 18, itemName = "lockpick", itemLabel = "Lockpick", itemCount = 5, itemType = "item", unique = false, image = "./images/lockpick2.png" },
    { day = 19, itemName = "meth", itemLabel = "meth", itemCount = 25, itemType = "item", unique = false, image = "./images/meth.png" },
    { day = 20, itemName = "smg_ammo", itemLabel = "SMG Ammo", itemCount = 5, itemType = "item", unique = false, image = "./images/smg_ammo.png" },
    { day = 21, itemName = "zentorno", itemLabel = "Zentorno", itemCount = 1, itemType = "vehicle", unique = false, image = "./images/zentorno.png" },
    { day = 22, itemName = "WEAPON_MOLOTOV", itemLabel = "Molotov", itemCount = 1, itemType = "item", unique = true, image = "./images/WEAPON_MOLOTOV.png" },
    { day = 23, itemName = "skateboard", itemLabel = "Skateboard", itemCount = 1, itemType = "money", unique = false, image = "./images/kaykay.png" },
    { day = 24, itemName = "condom", itemLabel = "Condom", itemCount = 3, itemType = "item", unique = false, image = "./images/kondom.png" },
    { day = 25, itemName = "drone_flyer_7", itemLabel = "Drone", itemCount = 1, itemType = "item", unique = false, image = "./images/drone_flyer_7.png" },
    { day = 26, itemName = "clip", itemLabel = "Pistol Ammo", itemCount = 5, itemType = "item", unique = false, image = "./images/clip.png" },
    { day = 27, itemName = "WEAPON_GLOCK", itemLabel = "Glock 19", itemCount = 1, itemType = "item", unique = false, image = "./images/WEAPON_GLOCK.png" },
    { day = 28, itemName = "lockpick", itemLabel = "Lockpick", itemCount = 5, itemType = "item", unique = false, image = "./images/lockpick2.png" },
    { day = 29, itemName = "meth", itemLabel = "meth", itemCount = 25, itemType = "item", unique = false, image = "./images/meth.png" },
    { day = 30, itemName = "smg_ammo", itemLabel = "SMG Ammo", itemCount = 5, itemType = "item", unique = false, image = "./images/smg_ammo.png" },
}

AK4Y.Language = {
    title1 = "Trap House Gaming",
    title2 = "DAILY REWARDS",
    leftDesc = "Claim your daily rewards!",
    nextReward = "FOR THE NEXT REWARD",
    collected = "COLLECTED",
}
