-- ak4y dev.

-- IF YOU HAVE ANY PROBLEM OR DO YOU NEED HELP PLS COME TO MY DISCORD SERVER AND CREATE A TICKET
-- IF YOU DONT HAVE ANY PROBLEM YET AGAIN COME TO MY DISCORD :)
-- https://discord.gg/kWwM3Bx


AK4Y = {}

AK4Y.Framework = "qb" -- qb / oldqb | qb = export system | oldqb = triggerevent system
AK4Y.Mysql = "oxmysql" -- Check fxmanifest.lua when you change it! |  oxmysql / mysql-async
AK4Y.OpenMenuCommand = "donate" -- code to open the donate menu
AK4Y.WeaponType = "item" -- weapon or item
AK4Y.CustomPlatePriceOnBuyVehicle = 20 -- Customization price at the time of vehicle purchase
AK4Y.Phone = "lb-phone" -- gcphone or qb-phone
AK4Y.MinCharForPhoneNumber = 1 -- Minimum number of characters required for a special number
AK4Y.MinCharForPlate = 1 -- Minimum number of characters required for a custom plate
AK4Y.MaxCharForPhoneNumber = 7 -- Minimum number of characters required for a special number
AK4Y.MaxCharForPlate = 8 -- Minimum number of characters required for a custom plate
AK4Y.DefaultGarage = 'pillboxgarage' -- Garage name where the vehicle will be sent after purchase
AK4Y.WeaponType = "item" -- item or weapon
AK4Y.UseTebex = true -- Do you use tebex to sell code?


---------------------------
------- TEST DRIVE --------
--------------------------- 
AK4Y.TestDriveBlip = true
AK4Y.TestDriveBlipText = "TEST DRIVE AREA"
AK4Y.TestDriveDrawText = "You can start the test drive from the Donate menu. ( /donate )"
AK4Y.TestDriveCoords = vector3(1219.88, -2934.43, 5.87)
AK4Y.TestDriveCarSpawnLocation = vector4(1216.51, -2918.03, 5.87, 37.31)
AK4Y.TestDriveTime = 0.5

AK4Y.GiveAddKeys = true -- Automatic key issuance after changing the license plate of the vehicle
AK4Y.GiveAddKeysFunction = function(newPlate)
    TriggerEvent("vehiclekeys:client:SetOwner", newPlate)
end

AK4Y.ClientNotify = function(text, NotifType)
    QBCore.Functions.Notify(text, NotifType)
end

AK4Y.Translate = {
    title1 = "AK4Y",
    title2 = "DONATE",

    speed = "mp/h",
    credit = "CR",

    customizeTitle = "Customize",
    customizeInfo = "You have to in your car which is want to customize.",

    thanksForPurchasing = "Thanks for purchasing!",

    buyCreditButton = "BUY CREDIT",
    approveButton = "APPROVE",
    buyButtonText = "BUY",

    redeemCodeTitle1 = "REDEEM",
    redeemCodeTitle2 = "CODE",
    redeemCodeDesc = "Lorem ipsum",
    redeemCodeBelow = "YOU CAN ENTER THE CODE BELOW",

    carDoYouNeedTitle1 = "DO YOU NEED",
    carDoYouNeedTitle2 = "A CAR?",
    carButtonBelow = "YOU CAN VIEW IT BY CLICKING THE BUTTON BELOW",
    carAreaDesc = "THEN YOU CAN BROWSE THE CARS BY CLICKING THE BUTTON BELOW.",
    carButtonText = "CAR",
    carButtonInfo = "CLICK THE BUTTON TO SEE THE WEAPONS",
    
    otherInfo = "Click for details",
    otherButton = "OTHER",
    otherDesc = "You can go to the customization menu by clicking the button above.",

    moneyInfo = "Click for details",
    moneyButtonText = "MONEY",
    moneyDesc = "You can go to the money purchase menu by clicking the button above.",

    gunTitle1 = "DO YOU NEED",
    gunTitle2 = "A GUN?",
    gunInfo = "YOU CAN VIEW IT BY CLICKING THE BUTTON BELOW",
    gunDesc = "THEN YOU CAN BROWSE THE WEAPONS BY CLICKING THE BUTTON BELOW.",
    gunButtonText = "GUN",
    gunTinyInfo = "CLICK THE BUTTON TO SEE WEAPONS.",

    vehBuyCustomPlateText = "Do you want a custom plate? <span id='cstmPltPrice'></span>",
    customPlateText = "Enter your custom plate (Max 6 char.)",
    privNumberText = "Enter your private number (Max 7 char.)<br>You will drop on game after purchasing!",
    dontHaveEnoughtCredit = "You dont have enough credit!",
    minimumChar = "Minimum Char: ",
    MaximumChar = " Maximum Char: ",
    typeNumber = "You have to type number!",
    errorDuringPurchase = "An error occurred during purchase",
    insideVehicle = "To buy this customization, you must be inside the vehicle!",

    openSpam = "Wait a while to open the menu again",
    spamNotify = "Spam protection, try again",

    testDriveStarted = "Vehicle test drive started!",
    testDriveEnded = "Vehicle test drive complete",
    youShouldbeInZone = "You should be in test drive zone",
    alreadyInTestDrive = "Already in test drive",
    testDriveRemaining = "TEST DRIVE TIME REMAINING: ",
}

AK4Y.BuyCredits = {
    [1] = {
        title = "30$",
        image = "./images/firstBoxCash.png",
        credit = "300 CR",
        extraCredit = "+60 Bonus CR",
        link = "https://www.buy-code-link.com",
    },
    [2] = {
        title = "50$",
        image = "./images/secondBoxCash.png",
        credit = "500 CR",
        extraCredit = "+100 Bonus CR",
        link = "https://www.buy-code-link.com",
    },
    [3] = {
        title = "200$",
        image = "./images/thirtBoxCash.png",
        credit = "2000 CR",
        extraCredit = "+500 Bonus CR",
        link = "https://traphouse.tebex.io/package/4560886",
    },
    [4] = {
        title = "100$",
        image = "./images/fourBoxCash.png",
        credit = "1000 CR",
        extraCredit = "+250 Bonus CR",
        link = "https://traphouse.tebex.io/package/6119472",
    },
}

-- Do not add new categories
-- If you want to remove a category, you can put it in the comment line
-- If you put a category in the comment line, put the products sold in that category in the comment line
-- you should not change categoryId
AK4Y.Categories = {
    { label = "VEHICLE", categoryId = "vehicle" },
    { label = "ITEMS", categoryId = "items" },
    { label = "MONEY", categoryId = "money" },
    { label = "CUSTOMIZE", categoryId = "other" },
}

AK4Y.Vehicles = {
    {
        id = 1,
        spawnName = "rrgt500e", -- Spawn code of the vehicle that will be given when the product is received
        brand = "Mustang",
        model = "GT500E",
        year = "1967 MODEL",
        costCredit = 300, -- The price to be paid for the product
        topSpeed = 160, -- Top speed of the product
        topSpeedGraph = 90, -- Percentage of product top speed
        brakingPower = 50, -- Percentage of braking power of the product
        robustness = 90, -- Percentage of product robustness
        vehType = "car", -- do not change
        carImage = "./images/Gt500e.png",
    },
    {
        id = 2,
        spawnName = "brzdemonslayer", -- Spawn code of the vehicle that will be given when the product is received
        brand = "Subaru",
        model = "BRZ",
        year = "2024 MODEL",
        costCredit = 400, -- The price to be paid for the product
        topSpeed = 200, -- Top speed of the product
        topSpeedGraph = 90, -- Percentage of product top speed
        brakingPower = 50, -- Percentage of braking power of the product
        robustness = 90, -- Percentage of product robustness
        vehType = "car", -- do not change
        carImage = "./images/brz.png",
    },
    {
        id = 3,
        spawnName = "300sdemon", -- Spawn code of the vehicle that will be given when the product is received
        brand = "Chrysler",
        model = "300 Demon",
        year = "2022 MODEL",
        costCredit = 500, -- The price to be paid for the product
        topSpeed = 200, -- Top speed of the product
        topSpeedGraph = 90, -- Percentage of product top speed
        brakingPower = 50, -- Percentage of braking power of the product
        robustness = 90, -- Percentage of product robustness
        vehType = "car", -- do not change
        carImage = "./images/audi.png",
    },
    {
        id = 4,
        spawnName = "CPtrackhawk", -- Spawn code of the vehicle that will be given when the product is received
        brand = "Dodge",
        model = "Trackhawk",
        year = "2024 MODEL",
        costCredit = 500, -- The price to be paid for the product
        topSpeed = 210, -- Top speed of the product
        topSpeedGraph = 90, -- Percentage of product top speed
        brakingPower = 50, -- Percentage of braking power of the product
        robustness = 90, -- Percentage of product robustness
        vehType = "car", -- do not change
        carImage = "./images/audi.png",
    },
    {
        id = 5,
        spawnName = "dillrzr", -- Spawn code of the vehicle that will be given when the product is received
        brand = "Polaris",
        model = "RZR SxS",
        year = "2022 MODEL",
        costCredit = 300, -- The price to be paid for the product
        topSpeed = 100, -- Top speed of the product
        topSpeedGraph = 90, -- Percentage of product top speed
        brakingPower = 50, -- Percentage of braking power of the product
        robustness = 90, -- Percentage of product robustness
        vehType = "car", -- do not change
        carImage = "./images/audi.png",
    },
    {
        id = 6,
        spawnName = "zentorno", -- Spawn code of the vehicle that will be given when the product is received
        brand = "AUDI",
        model = "RS Q8",
        year = "2022 MODEL",
        costCredit = 2300, -- The price to be paid for the product
        topSpeed = 250, -- Top speed of the product
        topSpeedGraph = 90, -- Percentage of product top speed
        brakingPower = 50, -- Percentage of braking power of the product
        robustness = 90, -- Percentage of product robustness
        vehType = "car", -- do not change
        carImage = "./images/audi.png",
    },
    {
        id = 7,
        spawnName = "zentorno", -- Spawn code of the vehicle that will be given when the product is received
        brand = "AUDI",
        model = "RS Q8",
        year = "2022 MODEL",
        costCredit = 2200, -- The price to be paid for the product
        topSpeed = 250, -- Top speed of the product
        topSpeedGraph = 90, -- Percentage of product top speed
        brakingPower = 50, -- Percentage of braking power of the product
        robustness = 90, -- Percentage of product robustness
        vehType = "car", -- do not change
        carImage = "./images/audi.png",
    },
    {
        id = 8,
        spawnName = "zentorno", -- Spawn code of the vehicle that will be given when the product is received
        brand = "AUDI",
        model = "RS Q8",
        year = "2022 MODEL",
        costCredit = 2850, -- The price to be paid for the product
        topSpeed = 250, -- Top speed of the product
        topSpeedGraph = 90, -- Percentage of product top speed
        brakingPower = 50, -- Percentage of braking power of the product
        robustness = 90, -- Percentage of product robustness
        vehType = "car", -- do not change
        carImage = "./images/audi.png",
    },
}

AK4Y.Helicopters = {
    {
        id = 1,
        spawnName = "frogger", -- Spawn code of the vehicle that will be given when the product is received
        brand = "Frogger",
        model = "",
        year = "2022 MODEL",
        costCredit = 2850, -- The price to be paid for the product
        topSpeed = 250, -- Top speed of the product
        topSpeedGraph = 60, -- Percentage of product top speed
        brakingPower = 30, -- Percentage of braking power of the product
        robustness = 90, -- Percentage of product robustness
        vehType = "air", -- do not change
        carImage = "./images/helicopter.png",
    },
    {
        id = 2,
        spawnName = "frogger", -- Spawn code of the vehicle that will be given when the product is received
        brand = "AUDI",
        model = "RS Q8",
        year = "2022 MODEL",
        costCredit = 2850, -- The price to be paid for the product
        topSpeed = 250, -- Top speed of the product
        topSpeedGraph = 90, -- Percentage of product top speed
        brakingPower = 50, -- Percentage of braking power of the product
        robustness = 90, -- Percentage of product robustness
        vehType = "air", -- do not change
        carImage = "./images/helicopter.png",
    },
}

AK4Y.Items = {
    { 
        id = 1,
        itemName = "water",
        itemCount = 5,
        label = "Water",
        costCredit = 1000, 
        image = "./images/phone.png",
    },
}

AK4Y.Weapons = {
    { 
        id = 1,
        weaponName = "weapon_heavyshotgun",
        label = "HEAVY SHOTGUN",
        costCredit = 2550, 
        image = "./images/guns.png",
    },
    { 
        id = 2,
        weaponName = "weapon_pistol",
        label = "HEAVY SHOTGUN",
        costCredit = 2530, 
        image = "./images/guns.png",
    },
    { 
        id = 3,
        weaponName = "weapon_pistol",
        label = "HEAVY SHOTGUN",
        costCredit = 2150, 
        image = "./images/guns.png",
    },
    { 
        id = 4,
        weaponName = "weapon_pistol",
        label = "HEAVY SHOTGUN",
        costCredit = 2570, 
        image = "./images/guns.png",
    },
}

AK4Y.Money = {
    {
        id = 1,
        label = "100.000 DOLLAR",
        costCredit = 100, -- Credit to be paid for the product
        inGameMoney = 100000, -- In-game money to be given to the character after purchase
        image = "./images/moneyImage.png",
    },
    {
        id = 2,
        label = "200.000 DOLLAR",
        costCredit = 200, -- Credit to be paid for the product
        inGameMoney = 200000, -- In-game money to be given to the character after purchase
        image = "./images/moneyImage.png",
    },
    {
        id = 3,
        label = "300.000 DOLLAR",
        costCredit = 300, -- Credit to be paid for the product
        inGameMoney = 300000, -- In-game money to be given to the character after purchase
        image = "./images/moneyImage.png",
    },
    {
        id = 4,
        label = "400.000 DOLLAR",
        costCredit = 400, -- Credit to be paid for the product
        inGameMoney = 400000, -- In-game money to be given to the character after purchase
        image = "./images/moneyImage.png",
    },
}


-- do not change
-- do not change
-- If you want to close it, put it in the comment line
AK4Y.Customize = {
    {id = 1, label = "PRIVATE PHONE NUMBER", costCredit = 50, IType = "privNumber", image = "./images/phone.png"},
    {id = 2, label = "PLATE CUSTOMIZATION", costCredit = 50, IType = "customPlate", image = "./images/platee.png"}
}

