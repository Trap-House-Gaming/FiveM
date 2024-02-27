--   ___  __ __ __  ____    ___  ___   ___   __  __  ____ _  _
--  // \\ || || || ||       ||\\//||  // \\  ||\ || ||    \\//
-- (( ___ || \\ // ||==     || \/ || ((   )) ||\\|| ||==   )/ 
--  \\_|| ||  \V/  ||___    ||    ||  \\_//  || \|| ||___ //
function giveMoney(playerID, amount)
    if Config.Framework == "esx" then
        local xPlayer = ESX.GetPlayerFromId(playerID)
        xPlayer.addAccountMoney('money', amount)
    else
        local xPlayer = QBCore.Functions.GetPlayer(playerID)
        xPlayer.Functions.AddMoney('cash', amount, "Gangs")
    end
end

--   ___   ____ ______    ___  ___   ___   __  __  ____ _  _
--  // \\ ||    | || |    ||\\//||  // \\  ||\ || ||    \\//
-- (( ___ ||==    ||      || \/ || ((   )) ||\\|| ||==   )/ 
--  \\_|| ||___   ||      ||    ||  \\_//  || \|| ||___ //

function getMoney(playerID)
    local money = nil
    if Config.Framework == "esx" then
        local xPlayer = ESX.GetPlayerFromId(playerID)
        money = xPlayer.getAccount('money').money
    else
        local xPlayer = QBCore.Functions.GetPlayer(playerID)
        money = xPlayer.PlayerData.money["bank"]
    end
    return money
end

-- ____   ____ ___  ___   ___   __ __  ____    ___  ___   ___   __  __  ____ _  _
-- || \\ ||    ||\\//||  // \\  || || ||       ||\\//||  // \\  ||\ || ||    \\//
-- ||_// ||==  || \/ || ((   )) \\ // ||==     || \/ || ((   )) ||\\|| ||==   )/ 
-- || \\ ||___ ||    ||  \\_//   \V/  ||___    ||    ||  \\_//  || \|| ||___ //

function removeMoney(playerID, amount)
    if Config.Framework == "esx" then
        local xPlayer = ESX.GetPlayerFromId(playerID)
        xPlayer.removeAccountMoney('money', amount)
    else
        local xPlayer = QBCore.Functions.GetPlayer(playerID)
        xPlayer.Functions.RemoveMoney('cash', amount, "Gangs")
    end
end

--   ___   ____ ______    __ ____    ____ __  __ ______ __  ____ __  ____ ____   __ 
--  // \\ ||    | || |    || || \\  ||    ||\ || | || | || ||    || ||    || \\ (( \
-- (( ___ ||==    ||      || ||  )) ||==  ||\\||   ||   || ||==  || ||==  ||_//  \\ 
--  \\_|| ||___   ||      || ||_//  ||___ || \||   ||   || ||    || ||___ || \\ \_))

function getIdentifier(playerID)
    local identifier = nil
    if Config.Framework == "esx" then
        local xPlayer = ESX.GetPlayerFromId(playerID)
        identifier = xPlayer.identifier
    else
        local xPlayer = QBCore.Functions.GetPlayer(playerID)
        identifier = xPlayer.PlayerData.citizenid
    end
    return identifier
end

--   ___   ____ ______    __ __  __   ____ ____  __  __  ___  ___  ___  ____
--  // \\ ||    | || |    || || (( \ ||    || \\ ||\ || // \\ ||\\//|| ||   
-- (( ___ ||==    ||      || ||  \\  ||==  ||_// ||\\|| ||=|| || \/ || ||== 
--  \\_|| ||___   ||      \\_// \_)) ||___ || \\ || \|| || || ||    || ||___

function getUsername(playerID)
    local username = nil
    if Config.Framework == "esx" then
        local xPlayer = ESX.GetPlayerFromId(playerID)
        username = xPlayer.getName()
    else
        local xPlayer = QBCore.Functions.GetPlayer(playerID)
        username = xPlayer.PlayerData.charinfo.firstname .. " " .. xPlayer.PlayerData.charinfo.lastname
    end
    return username
end

--   ___ __  __  ____   ___ __ __    __ ______  ____ ___  ___
--  //   ||  || ||     //   || //    || | || | ||    ||\\//||
-- ((    ||==|| ||==  ((    ||<<     ||   ||   ||==  || \/ ||
--  \\__ ||  || ||___  \\__ || \\    ||   ||   ||___ ||    ||

function checkItem(playerID, item)
    if Config.Framework == "esx" then
        local xPlayer = ESX.GetPlayerFromId(playerID)
        local itemCount = xPlayer.getInventoryItem(item).count
        if itemCount > 0 then
            return true
        else
            return false
        end
    else
        local xPlayer = QBCore.Functions.GetPlayer(playerID)
        local loadoutNum, itemtoCheck = xPlayer.Functions.GetItemByName(item)
        if loadoutNum ~= nil then
            return true
        else
            return false
        end
    end
end

--   ___ __  __  ____   ___ __ __    __ ______  ____ ___  ___     ___  ___  ___   ___   __ __ __  __ ______
--  //   ||  || ||     //   || //    || | || | ||    ||\\//||    // \\ ||\\//||  // \\  || || ||\ || | || |
-- ((    ||==|| ||==  ((    ||<<     ||   ||   ||==  || \/ ||    ||=|| || \/ || ((   )) || || ||\\||   ||  
--  \\__ ||  || ||___  \\__ || \\    ||   ||   ||___ ||    ||    || || ||    ||  \\_//  \\_// || \||   ||

function checkItemAmount(playerID, item)
    if Config.Framework == "esx" then
        xPlayer = ESX.GetPlayerFromId(playerID)
        item = xPlayer.getInventoryItem(item)
        if item == nil then
            return 0
        else
            return item.count
        end
    else
        xPlayer = QBCore.Functions.GetPlayer(playerID)
        item = xPlayer.Functions.GetItemByName(item)
        if item == nil then
            return 0
        else
            return item.amount
        end
    end
end

-- ____   ____ ___  ___   ___   __ __  ____    __ ______  ____ ___  ___
-- || \\ ||    ||\\//||  // \\  || || ||       || | || | ||    ||\\//||
-- ||_// ||==  || \/ || ((   )) \\ // ||==     ||   ||   ||==  || \/ ||
-- || \\ ||___ ||    ||  \\_//   \V/  ||___    ||   ||   ||___ ||    ||

function removeItem(playerID, item, amount)
    if Config.Framework == "esx" then
        local xPlayer = ESX.GetPlayerFromId(playerID)
        xPlayer.removeInventoryItem(item, amount)
    else
        local xPlayer = QBCore.Functions.GetPlayer(playerID)
        xPlayer.Functions.RemoveItem(item, amount)
    end
end

--    ___ __ __  __  ______   ___   ___  ___     ____ __ __ __  __   ___ ______ __   ___   __  __
--  //   || || (( \ | || |  // \\  ||\\//||    ||    || || ||\ ||  //   | || | ||  // \\  ||\ ||
-- ((    || ||  \\    ||   ((   )) || \/ ||    ||==  || || ||\\|| ((      ||   || ((   )) ||\\||
--  \\__ \\_// \_))   ||    \\_//  ||    ||    ||    \\_// || \||  \\__   ||   ||  \\_//  || \||

function customFunction(playerID)

end
