if Config.Framework == "esx" then
    if Config.ESXExport ~= "" then
        ESX = exports[Config.ESXExport]:getSharedObject()
    else
        TriggerEvent(Config.Core, function(obj)
            ESX = obj
        end)
    end
elseif Config.Framework == "qb" then
    QBCore = exports[Config.Core]:GetCoreObject()
else
    print("Unrecognized framework")
end

function SqlFunc(plugin, type, query, var)
    local wait = promise.new()
    if type == 'fetchAll' and plugin == 'mysql-async' then
        MySQL.Async.fetchAll(query, var, function(result)
            wait:resolve(result)
        end)
    end
    if type == 'execute' and plugin == 'mysql-async' then
        MySQL.Async.execute(query, var, function(result)
            wait:resolve(result)
        end)
    end
    if type == 'execute' and plugin == 'ghmattisql' then
        exports['ghmattimysql']:execute(query, var, function(result)
            wait:resolve(result)
        end)
    end
    if type == 'fetchAll' and plugin == 'ghmattisql' then
        exports.ghmattimysql:execute(query, var, function(result)
            wait:resolve(result)
        end)
    end
    if type == 'execute' and plugin == 'oxmysql' then
        exports.oxmysql:execute(query, var, function(result)
            wait:resolve(result)
        end)
    end
    if type == 'fetchAll' and plugin == 'oxmysql' then
        exports['oxmysql']:fetch(query, var, function(result)
            wait:resolve(result)
        end)
    end
    return Citizen.Await(wait)
end

RegisterServerEvent("bit-jobs:loadPlayerSkin")
AddEventHandler('bit-jobs:loadPlayerSkin', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local result = SqlFunc(Config.Mysql, 'fetchAll',
        'SELECT * FROM playerskins WHERE citizenid = @citizenid AND active = 1', {
            ['@citizenid'] = Player.PlayerData.citizenid
        })
    if result[1] ~= nil then
        TriggerClientEvent("bit-jobs:loadSkin", src, false, result[1].model, result[1].skin)
    else
        TriggerClientEvent("bit-jobs:loadSkin", src, true)
    end
end)

if Config.Framework == "esx" then
    ESX.RegisterServerCallback('bit-jobs:haveItem', function(source, cb, item)
        local xPlayer = ESX.GetPlayerFromId(source)
        if Config.useOXInventory then
            local item = exports.ox_inventory:GetItem(source, item, false, true)
            if item ~= nil and item ~= 0 then
                cb(true)
            else
                cb(false)
            end
        elseif Config.useQSInventory then
            local item = xPlayer.getInventoryItem(item, 1)
            if item ~= nil and item ~= 0 then
                cb(true)
            else
                cb(false)
            end
        else
            local item = xPlayer.getInventoryItem(item)
            if item ~= nil and item.amount ~= 0 then
                cb(true)
            else
                cb(false)
            end
        end
    end)
elseif Config.Framework == "qb" then
    QBCore.Functions.CreateCallback('bit-jobs:haveItem', function(source, cb, item)
        local xPlayer = QBCore.Functions.GetPlayer(source)
        if Config.useOXInventory then
            local item = exports.ox_inventory:GetItem(source, item, false, true)
            if item ~= nil and item ~= 0 then
                cb(true)
            else
                cb(false)
            end
        elseif Config.useQSInventory then
            local item = xPlayer.getInventoryItem(item, 1)
            if item ~= nil and item ~= 0 then
                cb(true)
            else
                cb(false)
            end
        else
            local item = xPlayer.Functions.GetItemByName(item)
            if item ~= nil and item.amount ~= 0 then
                cb(true)
            else
                cb(false)
            end
        end
    end)
end

RegisterServerEvent("bit-jobs:giveItem")
AddEventHandler('bit-jobs:giveItem', function(playerID, item, amount)
    if amount ~= 0 and amount ~= 0.0 then
        if Config.Framework == "esx" then
            local xPlayer = ESX.GetPlayerFromId(playerID)
            if Config.useOXInventory then
                exports.ox_inventory:AddItem(playerID, item, amount)
            elseif Config.useQSInventory then
                xPlayer.addInventoryItem(item, amount)
            else
                xPlayer.addInventoryItem(item, amount)
            end
        elseif Config.Framework == "qb" then
            local xPlayer = QBCore.Functions.GetPlayer(playerID)
            if Config.useOXInventory then
                exports.ox_inventory:AddItem(playerID, item, amount)
            elseif Config.useQSInventory then
                xPlayer.addInventoryItem(item, amount)
            else
                xPlayer.Functions.AddItem(item, amount)
            end
        end
    else
        TriggerClientEvent('bit-jobs:notifications', playerID, Noti.error, Lang.itemError, 500)
    end

end)

RegisterServerEvent("bit-jobs:removeItem")
AddEventHandler('bit-jobs:removeItem', function(playerID, item, amount)
    if Config.Framework == "esx" then
        local xPlayer = ESX.GetPlayerFromId(playerID)
        if Config.useOXInventory then
            exports.ox_inventory:RemoveItem(playerID, item, amount)
        elseif Config.useQSInventory then
            xPlayer.removeInventoryItem(item, amount)
        else
            xPlayer.removeInventoryItem(item, amount)
        end
    elseif Config.Framework == "qb" then
        local xPlayer = QBCore.Functions.GetPlayer(playerID)
        if Config.useOXInventory then
            exports.ox_inventory:RemoveItem(playerID, item, amount)
        elseif Config.useQSInventory then
            xPlayer.removeInventoryItem(item, amount)
        else
            xPlayer.Functions.RemoveItem(item, amount)
        end
    end
end)

RegisterServerEvent("bit-jobs:changeItems")
AddEventHandler('bit-jobs:changeItems', function(playerID, removeItem, removeAmount, giveItem, giveAmount)
    if Config.Framework == "esx" then
        local xPlayer = ESX.GetPlayerFromId(playerID)
        local amount = 0
        local itemAmountGet = xPlayer.getInventoryItem(removeItem)
        if itemAmountGet ~= nil then
            if itemAmountGet.count >= removeAmount then
                if Config.useOXInventory then
                    exports.ox_inventory:RemoveItem(playerID, removeItem, removeAmount)
                elseif Config.useQSInventory then
                    xPlayer.removeInventoryItem(removeItem, removeAmount)
                else
                    xPlayer.removeInventoryItem(removeItem, removeAmount)
                end
                if Config.useOXInventory then
                    exports.ox_inventory:AddItem(playerID, giveItem, giveAmount)
                elseif Config.useQSInventory then
                    xPlayer.addInventoryItem(giveItem, giveAmount)
                else
                    xPlayer.addInventoryItem(giveItem, giveAmount)
                end
                TriggerClientEvent('bit-jobs:notifications', playerID, Noti.check,
                    Lang.received .. " x" .. giveAmount .. " " .. giveItem, 5000)
            else
                TriggerClientEvent('bit-jobs:notifications', playerID, Noti.error, Lang.notEnough, 5000)
            end
        else
            TriggerClientEvent('bit-jobs:notifications', playerID, Noti.error, Lang.notEnough, 5000)
        end
    elseif Config.Framework == "qb" then
        local xPlayer = QBCore.Functions.GetPlayer(playerID)
        local amount = 0
        local loadoutNum, itemGet = xPlayer.Functions.GetItemByName(removeItem)
        if loadoutNum ~= nil then
            if loadoutNum.amount >= removeAmount then
                if Config.useOXInventory then
                    exports.ox_inventory:RemoveItem(playerID, removeItem, removeAmount)
                elseif Config.useQSInventory then
                    xPlayer.removeInventoryItem(removeItem, removeAmount)
                else
                    xPlayer.Functions.RemoveItem(removeItem, removeAmount)
                end
                if Config.useOXInventory then
                    exports.ox_inventory:AddItem(playerID, giveItem, giveAmount)
                elseif Config.useQSInventory then
                    xPlayer.addInventoryItem(giveItem, giveAmount)
                else
                    xPlayer.Functions.AddItem(giveItem, giveAmount)
                end
                TriggerClientEvent('bit-jobs:notifications', playerID, Noti.check,
                    Lang.received .. " x" .. giveAmount .. " " .. giveItem, 5000)
            else
                TriggerClientEvent('bit-jobs:notifications', playerID, Noti.error, Lang.notEnough, 5000)
            end
        else
            TriggerClientEvent('bit-jobs:notifications', playerID, Noti.error, Lang.notEnough, 5000)
        end
    end
end)

RegisterServerEvent("bit-jobs:removeFinalItem")
AddEventHandler('bit-jobs:removeFinalItem',
    function(playerID, itemname, amount, moneyearned, jobname, givemoney, giveitem, item, itemamount, earnedPoints)
        if Config.Framework == "esx" then
            local xPlayer = ESX.GetPlayerFromId(playerID)
            if Config.useOXInventory then
                local item = exports.ox_inventory:GetItem(playerID, itemname, false, true)
                if item ~= nil and item ~= 0 then
                    exports.ox_inventory:RemoveItem(playerID, itemname, amount)
                    if givemoney then
                        xPlayer.addMoney(moneyearned)
                    end
                    if giveitem then
                        exports.ox_inventory:AddItem(playerID, item, itemamount)
                    end
                    TriggerEvent("bit-jobs:updateLeaderboard", xPlayer.identifier, moneyearned, xPlayer.getName(),
                        jobname, earnedPoints)
                else
                    TriggerClientEvent('bit-jobs:notifications', playerID, Noti.error, Lang.itemSellError, 500)
                end
            elseif Config.useQSInventory then
                local item = xPlayer.getInventoryItem(itemname)
                if item ~= nil and item.amount ~= 0 then
                    xPlayer.removeInventoryItem(itemname, amount)
                    if givemoney then
                        xPlayer.addMoney(moneyearned)
                    end
                    if giveitem then
                        xPlayer.addInventoryItem(item, itemamount)
                    end
                    TriggerEvent("bit-jobs:updateLeaderboard", xPlayer.identifier, moneyearned, xPlayer.getName(),
                        jobname, earnedPoints)
                else
                    TriggerClientEvent('bit-jobs:notifications', playerID, Noti.error, Lang.itemSellError, 500)
                end
            else
                local item = xPlayer.getInventoryItem(itemname)
                if item ~= nil and item.amount ~= 0 then
                    xPlayer.removeInventoryItem(itemname, amount)
                    if givemoney then
                        xPlayer.addMoney(moneyearned)
                    end
                    if giveitem then
                        xPlayer.addInventoryItem(item, itemamount)
                    end
                    TriggerEvent("bit-jobs:updateLeaderboard", xPlayer.identifier, moneyearned, xPlayer.getName(),
                        jobname, earnedPoints)
                else
                    TriggerClientEvent('bit-jobs:notifications', playerID, Noti.error, Lang.itemSellError, 500)
                end
            end
        elseif Config.Framework == "qb" then
            local xPlayer = QBCore.Functions.GetPlayer(playerID)
            if Config.useOXInventory then
                local item = exports.ox_inventory:GetItem(playerID, itemname, false, true)
                if item ~= nil and item ~= 0 then
                    exports.ox_inventory:RemoveItem(playerID, itemname, amount)
                    if givemoney then
                        xPlayer.Functions.AddMoney('cash', moneyearned, "Job")
                    end
                    if giveitem then
                        exports.ox_inventory:AddItem(playerID, item, itemamount)
                    end
                    TriggerEvent("bit-jobs:updateLeaderboard", xPlayer.PlayerData.citizenid, moneyearned,
                        xPlayer.PlayerData.charinfo.firstname .. " " .. xPlayer.PlayerData.charinfo.lastname, jobname,
                        earnedPoints)
                else
                    TriggerClientEvent('bit-jobs:notifications', playerID, Noti.error, Lang.itemSellError, 500)
                end
            elseif Config.useQSInventory then
                local item = xPlayer.getInventoryItem(itemname)
                if item ~= nil and item.amount ~= 0 then
                    xPlayer.removeInventoryItem(itemname, amount)
                    if givemoney then
                        xPlayer.addMoney(moneyearned)
                    end
                    if giveitem then
                        xPlayer.addInventoryItem(item, itemamount)
                    end
                    TriggerEvent("bit-jobs:updateLeaderboard", xPlayer.identifier, moneyearned, xPlayer.getName(),
                        jobname, earnedPoints)
                else
                    TriggerClientEvent('bit-jobs:notifications', playerID, Noti.error, Lang.itemSellError, 500)
                end
            else
                local item = xPlayer.Functions.GetItemByName(itemname)
                if item ~= nil and item.amount ~= 0 then
                    xPlayer.Functions.RemoveItem(itemname, amount)
                    if givemoney then
                        xPlayer.Functions.AddMoney('cash', moneyearned, "Job")
                    end
                    if giveitem then
                        xPlayer.Functions.AddItem(item, itemamount)
                    end
                    TriggerEvent("bit-jobs:updateLeaderboard", xPlayer.PlayerData.citizenid, moneyearned,
                        xPlayer.PlayerData.charinfo.firstname .. " " .. xPlayer.PlayerData.charinfo.lastname, jobname,
                        earnedPoints)
                else
                    TriggerClientEvent('bit-jobs:notifications', playerID, Noti.error, Lang.itemSellError, 500)
                end
            end
        end
    end)
local sendedLeader = false

RegisterServerEvent("bit-jobs:updateLeaderboard")
AddEventHandler('bit-jobs:updateLeaderboard', function(identifier, moneyearned, name, job, earnedPoints)
    if sendedLeader == false then
        sendedLeader = true
        local result = SqlFunc(Config.Mysql, 'fetchAll',
            'SELECT * FROM bit_jobs WHERE identifier = @identifier AND job = @job', {
                ['@identifier'] = identifier,
                ['@job'] = job
            })
        if result[1] ~= nil then
            SqlFunc(Config.Mysql, 'execute',
                'UPDATE bit_jobs SET missions = missions + 1, earned = earned + @moneyearned, points = points + @points WHERE identifier = @identifier AND job = @job',
                {
                    ['@identifier'] = identifier,
                    ['@moneyearned'] = moneyearned,
                    ['@job'] = job,
                    ['@points'] = earnedPoints
                })
        else
            SqlFunc(Config.Mysql, 'execute',
                'INSERT INTO bit_jobs (job, identifier, name, missions, earned, points) VALUES (@job, @identifier, @name, @missions, @earned, @points)',
                {
                    ['@job'] = job,
                    ['@identifier'] = identifier,
                    ['@name'] = name,
                    ['@missions'] = 1,
                    ['@earned'] = tonumber(moneyearned),
                    ['@points'] = earnedPoints
                })
        end
        Citizen.Wait(1000)
        sendedLeader = false
    end
end)

RegisterNetEvent("bit-jobs:getScoreboard")
AddEventHandler("bit-jobs:getScoreboard", function(playerID)
    local identifier = nil
    if Config.Framework == "esx" then
        identifier = ESX.GetPlayerFromId(playerID).identifier
    else
        identifier = QBCore.Functions.GetPlayer(playerID).PlayerData.citizenid
    end
    local result = SqlFunc(Config.Mysql, 'fetchAll', 'SELECT * FROM bit_jobs ORDER BY missions DESC', {})
    local points = SqlFunc(Config.Mysql, 'fetchAll', 'SELECT points FROM bit_jobs WHERE identifier = @identifier', {
        ['@identifier'] = identifier
    })
    TriggerClientEvent("bit-jobs:getScoreboard", playerID, result, points)
end)

RegisterNetEvent("bit-jobs:setJob")
AddEventHandler("bit-jobs:setJob", function(playerID, jobname, grade)
    if Config.Framework == "esx" then
        local xPlayer = ESX.GetPlayerFromId(playerID)
        xPlayer.setJob(jobname, grade)
    else
        local xPlayer = QBCore.Functions.GetPlayer(playerID)
        xPlayer.Functions.SetJob(jobname, grade)
    end
end)

if Config.Framework == "qb" then
    QBCore.Commands.Add('jobtest', "open job's UI", {}, false, function(source)
        TriggerClientEvent('bit-jobs:openUI', source)
    end, 'admin')
end
