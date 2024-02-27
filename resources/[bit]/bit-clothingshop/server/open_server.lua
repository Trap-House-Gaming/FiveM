-- $$$$$$\  $$$$$$$$\ $$\   $$\ $$$$$$$\  $$$$$$$$\ $$$$$$$\  
-- $$  __$$\ $$  _____|$$$\  $$ |$$  __$$\ $$  _____|$$  __$$\ 
-- $$ /  \__|$$ |      $$$$\ $$ |$$ |  $$ |$$ |      $$ |  $$ |
-- $$ |$$$$\ $$$$$\    $$ $$\$$ |$$ |  $$ |$$$$$\    $$$$$$$  |
-- $$ |\_$$ |$$  __|   $$ \$$$$ |$$ |  $$ |$$  __|   $$  __$$< 
-- $$ |  $$ |$$ |      $$ |\$$$ |$$ |  $$ |$$ |      $$ |  $$ |
-- \$$$$$$  |$$$$$$$$\ $$ | \$$ |$$$$$$$  |$$$$$$$$\ $$ |  $$ |
-- \______/ \________|\__|  \__|\_______/ \________|\__|  \__|
if Config.Framework == "esx" then
    ESX.RegisterServerCallback('bit-clothingshop:getGender', function(source, cb)
        local xPlayer = ESX.GetPlayerFromId(source)
        while xPlayer == nil do
            xPlayer = ESX.GetPlayerFromId(source)
            Citizen.Wait(0)
        end
        local result = SqlFunc(Config.Mysql, 'fetchAll', 'SELECT sex FROM users WHERE identifier = @identifier', {
            ['@identifier'] = xPlayer.identifier
        })
        if result[1] ~= nil then
            if result[1].sex == 'm' then
                cb(true)
            elseif result[1].sex == 'f' then
                cb(false)
            end
        end
    end)
elseif Config.Framework == "qb" then
    QBCore.Functions.CreateCallback('bit-clothingshop:getGender', function(source, cb)
        local xPlayer = QBCore.Functions.GetPlayer(source)
        while xPlayer == nil do
            xPlayer = QBCore.Functions.GetPlayer(source)
            Citizen.Wait(0)
        end
        local gender = xPlayer.PlayerData.charinfo.gender
        if gender == 0 or gender == '0' then
            cb(true)
        elseif gender == 1 or gender == '1' then
            cb(false)
        end
    end)
end

-- $$$$$$$\   $$$$$$\ $$\     $$\ $$\      $$\ $$$$$$$$\ $$\   $$\ $$$$$$$$\ 
-- $$  __$$\ $$  __$$\\$$\   $$  |$$$\    $$$ |$$  _____|$$$\  $$ |\__$$  __|
-- $$ |  $$ |$$ /  $$ |\$$\ $$  / $$$$\  $$$$ |$$ |      $$$$\ $$ |   $$ |   
-- $$$$$$$  |$$$$$$$$ | \$$$$  /  $$\$$\$$ $$ |$$$$$\    $$ $$\$$ |   $$ |   
-- $$  ____/ $$  __$$ |  \$$  /   $$ \$$$  $$ |$$  __|   $$ \$$$$ |   $$ |   
-- $$ |      $$ |  $$ |   $$ |    $$ |\$  /$$ |$$ |      $$ |\$$$ |   $$ |   
-- $$ |      $$ |  $$ |   $$ |    $$ | \_/ $$ |$$$$$$$$\ $$ | \$$ |   $$ |   
-- \__|      \__|  \__|   \__|    \__|     \__|\________|\__|  \__|   \__|

if Config.Framework == "esx" then
    ESX.RegisterServerCallback('bit-clothingshop:getMoney', function(source, cb, method)
        local xPlayer = ESX.GetPlayerFromId(source)
        if method == "cash" then
            money = xPlayer.getMoney()
            cb(money)
        elseif method == "bank" then
            money = xPlayer.getAccount('bank').money
            cb(money)
        end
    end)
elseif Config.Framework == "qb" then
    QBCore.Functions.CreateCallback('bit-clothingshop:getMoney', function(source, cb, method)
        local xPlayer = QBCore.Functions.GetPlayer(source)
        if method == "cash" then
            money = xPlayer.PlayerData.money["cash"]
            cb(money)
        elseif method == "bank" then
            money = xPlayer.PlayerData.money["bank"]
            cb(money)
        end
    end)
end

RegisterNetEvent("bit-clothingshop:payment")
AddEventHandler("bit-clothingshop:payment", function(playerID, method, amountToPay)
    if Config.Framework == "esx" then
        local xPlayer = ESX.GetPlayerFromId(playerID)
        if method == "bank" then
            xPlayer.removeAccountMoney('bank', amountToPay)
        elseif method == "cash" then
            xPlayer.removeMoney(amountToPay)
        end
    elseif Config.Framework == "qb" then
        local xPlayer = QBCore.Functions.GetPlayer(playerID)
        if method == "bank" then
            xPlayer.Functions.RemoveMoney('bank', amountToPay, "Clothing Store")
        elseif method == "cash" then
            xPlayer.Functions.RemoveMoney('cash', amountToPay, "Clothing Store")
        end
    end
end)

-- $$$$$$$\  $$$$$$$$\ $$$$$$$\  $$\      $$\ $$$$$$\  $$$$$$\   $$$$$$\  $$$$$$\  $$$$$$\  $$\   $$\  $$$$$$\  
-- $$  __$$\ $$  _____|$$  __$$\ $$$\    $$$ |\_$$  _|$$  __$$\ $$  __$$\ \_$$  _|$$  __$$\ $$$\  $$ |$$  __$$\ 
-- $$ |  $$ |$$ |      $$ |  $$ |$$$$\  $$$$ |  $$ |  $$ /  \__|$$ /  \__|  $$ |  $$ /  $$ |$$$$\ $$ |$$ /  \__|
-- $$$$$$$  |$$$$$\    $$$$$$$  |$$\$$\$$ $$ |  $$ |  \$$$$$$\  \$$$$$$\    $$ |  $$ |  $$ |$$ $$\$$ |\$$$$$$\  
-- $$  ____/ $$  __|   $$  __$$< $$ \$$$  $$ |  $$ |   \____$$\  \____$$\   $$ |  $$ |  $$ |$$ \$$$$ | \____$$\ 
-- $$ |      $$ |      $$ |  $$ |$$ |\$  /$$ |  $$ |  $$\   $$ |$$\   $$ |  $$ |  $$ |  $$ |$$ |\$$$ |$$\   $$ |
-- $$ |      $$$$$$$$\ $$ |  $$ |$$ | \_/ $$ |$$$$$$\ \$$$$$$  |\$$$$$$  |$$$$$$\  $$$$$$  |$$ | \$$ |\$$$$$$  |
-- \__|      \________|\__|  \__|\__|     \__|\______| \______/  \______/ \______| \______/ \__|  \__| \______/

if Config.Framework == "esx" then
    ESX.RegisterServerCallback('bit-clothingshop:getPermissions', function(source, cb)
        local xPlayer = ESX.GetPlayerFromId(source)
        group = xPlayer.getGroup()
        if group == "admin" or group == "superadmin" then
            cb(true)
        else
            cb(false)
        end
    end)
elseif Config.Framework == "qb" then
    QBCore.Functions.CreateCallback('bit-clothingshop:getPermissions', function(source, cb)
        if QBCore.Functions.HasPermission(source, 'admin') or QBCore.Functions.HasPermission(source, 'god') then
            cb(true)
        else
            cb(false)
        end
    end)
end
