-- ak4y dev.

-- IF YOU HAVE ANY PROBLEM OR DO YOU NEED HELP PLS COME TO MY DISCORD SERVER AND CREATE A TICKET
-- IF YOU DONT HAVE ANY PROBLEM YET AGAIN COME TO MY DISCORD :)
-- https://discord.gg/kWwM3Bx

AK4Y = {}

AK4Y.Framework = "qb" -- qb / oldqb | qb = export system | oldqb = triggerevent system
AK4Y.Mysql = "oxmysql" -- Check fxmanifest.lua when you change it! | ghmattimysql / oxmysql / mysql-async
AK4Y.OpenCommand = "playtime"
AK4Y.DefaultGarage = "pillboxgarage" -- purchased vehicles will be sent to this garage
AK4Y.RewardCoin = 5
AK4Y.NeededPlayTime = 30 -- Minutes

AK4Y.Language = {
    title1 = "THG",
    title2 = "Playtime",
    coin = "COINS",
    nextReward = "Next Reward In:",
    exit = "EXIT",
    reward = "REWARD :",
    title3 = "CITY",
    title4 = "MVPS",
    title5 = "PLAYTIME",
    title6 = "SHOP",
    cancel = "CANCEL",
    buy = "BUY",
    accept = "ACCEPT",
    realCurrency = "$",
    nextPage = "NEXT PAGE",
    previousPage = "PREVIOUS PAGE",
    succesfully = "Successful",
    purchased = "Purchase",
    invalidCode = "INVALID CODE!",
    thxForPurch = "Thank you, come again!",
    top = "TOP",
    youDntHvEngMoney = "YOU GOT MORE WORK TO PUT IN!",
    text6 = "6",
}

AK4Y.Categories = {
    { category = "items", icon = "fa-solid fa-cookie-bite", items = {} }, -- do not touch items section..
    { category = "weapons", icon = "fa-solid fa-gun", items = {} }, -- do not touch items section..
    { category = "vehicles", icon = "fa-solid fa-car", items = {} }, -- do not touch items section..
}

-- itemType : vehicle, weapon, item, money
AK4Y.Items = {
    { id = 1, itemName = "weapon_heavypistol", label = "HEAVY PISTOL", price = 125, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_heavypistol.png" },
    { id = 2, itemName = "weapon_combatpistol", label = "COMBAT PISTOL", price = 100, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_combatpistol.png" },
    { id = 3, itemName = "weapon_appistol", label = "AP PISTOL", price = 225, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_appistol.png" },
    { id = 4, itemName = "weapon_advancedrifle", label = "ADVANCED RIFLE", price = 750, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_advancedrifle.png" },
    { id = 5, itemName = "weapon_smg", label = "SMG", price = 300, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_smg.png" },
    { id = 6, itemName = "weapon_specialcarbine", label = "SPECIAL CARBINE", price = 550, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_specialcarbine.png" },
    { id = 7, itemName = "weapon_specialcarbine_mk2", label = "SPECIAL CARBINE MK2", price = 650, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_specialcarbine_mk2.png" },
    { id = 9, itemName = "weapon_combatpdw", label = "COMBAT PDW", price = 350, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_combatpdw.png" },
    { id = 10, itemName = "weapon_assaultrifle", label = "ASSAULT RIFLE", price = 650, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_assaultrifle.png" },
    { id = 11, itemName = "weapon_carbinerifle", label = "CARBINE RIFLE", price = 700, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_carbinerifle.png" },
    { id = 12, itemName = "weapon_bullpuprifle", label = "BULLPUP RIFLE", price = 850, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_bullpuprifle.png" },
    { id = 13, itemName = "weapon_crowbar", label = "CROWBAR", price = 60, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_crowbar.png" },
    { id = 14, itemName = "weapon_knife", label = "KNIFE", price = 95, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_knife.png" },
    { id = 15, itemName = "weapon_knuckle", label = "KNUCKLE", price = 65, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_knuckle.png" },

    { id = 17, itemName = "advancedkit", label = "ADVANCED KIT", price = 50, count = 1, itemType = "item", category = "items", image = "./images/advancedkit.png" },
    { id = 18, itemName = "advancedlockpick", label = "ADVANCED LOCKPICK", price = 45, count = 1, itemType = "item", category = "items", image = "./images/advancedlockpick.png" },
    { id = 19, itemName = "armor", label = "ARMOR", price = 75, count = 1, itemType = "item", category = "items", image = "./images/armor.png" },
    { id = 20, itemName = "joint", label = "JOINT", price = 55, count = 1, itemType = "item", category = "items", image = "./images/joint.png" },
    { id = 21, itemName = "visacard", label = "VISA CARD", price = 95, count = 1, itemType = "item", category = "items", image = "./images/visacard.png" },
    { id = 22, itemName = "mastercard", label = "MASTER CARD", price = 75, count = 1, itemType = "item", category = "items", image = "./images/mastercard.png" },
    { id = 23, itemName = "usb_device", label = "USB DEVICE", price = 150, count = 1, itemType = "item", category = "items", image = "./images/usb_device.png" },
    { id = 24, itemName = "casinochips", label = "CASINO CHIPS", price = 15, count = 1, itemType = "item", category = "items", image = "./images/casinochips.png" },
    { id = 25, itemName = "cocaine_baggy", label = "COCAINE BAGGY", price = 35, count = 1, itemType = "item", category = "items", image = "./images/cocaine_baggy.png" },
    { id = 26, itemName = "pistol_ammo", label = "PISTOL AMMO", price = 50, count = 5, itemType = "item", category = "items", image = "./images/pistol_ammo.png" },
    { id = 27, itemName = "smg_ammo", label = "SMG AMMO", price = 150, count = 5, itemType = "item", category = "items", image = "./images/pistol_ammo.png" },
    { id = 28, itemName = "pistol_suppressor", label = "PISTOL SUPPRESSOR", price = 65, count = 1, itemType = "item", category = "items", image = "./images/pistol_suppressor.png" },
    { id = 29, itemName = "radio", label = "RADIO", price = 95, count = 1, itemType = "item", category = "items", image = "./images/radio.png" },
    { id = 30, itemName = "zentorno", label = "ZENTORNO", price = 1000, count = 1, itemType = "vehicle", category = "vehicles", image = "./images/zentorno.png" }
}

AK4Y.CoinList = {
    { coinCount = 300, realPrice = 30, link = "https://traphouse.tebex.io/package/6182806", image = "./images/coin.png" },
    { coinCount = 500, realPrice = 50, link = "https://traphouse.tebex.io/package/6182833", image = "./images/coin.png" },
    { coinCount = 700, realPrice = 70, link = "https://traphouse.tebex.io/package/6182834", image = "./images/coin.png" },
    { coinCount = 900, realPrice = 90, link = "https://traphouse.tebex.io/package/6182835", image = "./images/coin.png" },
    { coinCount = 1200, realPrice = 120, link = "https://traphouse.tebex.io/package/6182837", image = "./images/coin.png" },
    { coinCount = 1500, realPrice = 150, link = "https://traphouse.tebex.io/package/6182838", image = "./images/coin.png" },
}