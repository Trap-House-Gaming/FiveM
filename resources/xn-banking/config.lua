Config = {}

Config.Base = "QBCore"

--Item names of ATM Card Types
Config.cardTypes = {"visa", "mastercard"}

-- Enable Fixed Societies for Jobs and Gangs
-- This will also enable exports AddMoney, AddGangMoney, GetAccountBalance (only for fixed societies)
Config.EnableFixedSocieties = false

--Limits
Config.Limits = {
    ["LoanPlans"] = 5, --Max loan plans a bank can create
    ["Society"] = 4, --Max societies a player can join
    ["LoanApplications"] = 10, --Max loan applications a bank can have
    ["MaxLoans"] = 2, --Max loans a player can apply for
    ["InstallmentPeriod"] = 2, --If there are 10 installments, then their deduction date will be on a gap of 2 i,e 05/01/2023, 07/01/2023
}
Config.Blip = {
    blipName = "Bank",
    blipType = 108,
    blipColor = 37,
    blipScale = 0.8
}

Config.ATMModels = {
    "prop_atm_01",
    "prop_atm_02",
    "prop_atm_03",
    "prop_fleeca_atm"
}

Config.InventoryMetadataColName = "metadata"

Config.BankLocations = {
    {
        coords = vector3(-111.7, 6471.76, 31.63),
        length = 3.5,
        width = 5.0,
        heading = 314.99,
        minZ = 30.50,
        maxZ = 32.40,
        distance = 2.5
    },
    {
        coords = vector3(149.48, -1042.72, 29.37),
        length = 3.5,
        width = 5.0,
        heading = 157.56,
        minZ = 29.0,
        maxZ = 31.0,
        distance = 2.5
    },
    {
        coords = vector3(-351.61, -52.08, 49.04),
        length = 3.6,
        width = 5.0,
        heading = 159.99,
        minZ = 48.0,
        maxZ = 50.0,
        distance = 2.5
    },
    {
        coords = vector3(313.5, -280.47, 54.16),
        length = 2.2,
        width = 5.0,
        heading = 160.6,
        minZ = 53.0,
        maxZ = 55.0,
        distance = 2.5
    },
    {
        coords = vector3(-1212.38, -332.15, 37.78),
        length = 2.2,
        width = 5.0,
        heading = 211.69,
        minZ = 36.0,
        maxZ = 38.0,
        distance = 2.5
    },
    {
        coords = vector3(-2961.12, 482.82, 15.7),
        length = 2.2,
        width = 5.0,
        heading = 265.5,
        minZ = 14.0,
        maxZ = 16.0,
        distance = 2.5
    },
    {
        coords = vector3(1174.95, 2708.2, 38.09),
        length = 2.2,
        width = 5.0,
        heading = 3.12,
        minZ = 37.0,
        maxZ = 39.0,
        distance = 2.5
    },
    {
        coords = vector3(247.68, 224.12, 106.28),
        length = 2.9,
        width = 15.0,
        heading = 343.86,
        minZ = 105.0,
        maxZ = 107.0,
        distance = 2.5
    }
}