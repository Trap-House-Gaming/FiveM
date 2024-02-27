Core, Cfg = exports['t1ger_lib']:GetLib()
Lib = exports['t1ger_lib']:GetUtils()

database_table, tuner_shops = 't1ger_tunershops', {}

Citizen.CreateThread(function ()
    while GetResourceState('t1ger_lib') ~= 'started' do Citizen.Wait(0) end
    if GetResourceState('t1ger_lib') == 'started' then
        InitializeResource()
    end
end)

GetTunerShops = function()
    local tunerShops = {}
    local results = MySQL.Sync.fetchAll('SELECT * FROM '..database_table..'')
    
    for i = 1, #Config.Shops do

        local job = {name = Config.Shops[i].job.name, label = Config.Shops[i].job.label, grades = Config.JobGrades, defaultDuty = true, offDutyPay = false, offduty = true}

        if results[i] then
            tunerShops[i] = {
                id = i,
                account = results[i].account,
                boss = results[i].boss,
                employees = json.decode(results[i].employees),
                storage = json.decode(results[i].storage),
                billing = json.decode(results[i].billing),
                job = job,
                cfg = Config.Shops[i]
            }
        else
            local boss, account, employees, storage, billing = nil, 0, {}, {}, {}
            MySQL.Sync.execute(
                'INSERT INTO '..database_table..' (id, account, boss, employees, storage, billing) VALUES (?, ?, ?, ?, ?, ?)',
                {i, 0, boss, json.encode(employees), json.encode(storage), json.encode(billing)}
            )
            Wait(0)
            tunerShops[i] = {
                id = i,
                account = account,
                boss = boss,
                employees = employees,
                storage = storage,
                billing = billing,
                job = job,
                cfg = Config.Shops[i]
            }
            Core.CreateJob(job)
            Core.CreateStash(Config.Shops[i].storage.id, Config.Shops[i].storage.label, Config.Shops[i].storage.slots, Config.Shops[i].storage.weight, nil)
        end

        Config.Shops[i].boss = tunerShops[i].boss

    end

    return tunerShops
end

InitializeResource = function()
    tuner_shops = GetTunerShops()
    if tuner_shops and next(tuner_shops) then
        for id, shop in pairs(tuner_shops) do
            if Config.Markers['storage'].enable then
                Core.RegisterStash(shop.cfg.storage.id, shop.cfg.storage.label, shop.cfg.storage.slots, shop.cfg.storage.weight, nil)
            end
            -- Create QB Jobs:
            if Framework == 'QB' then
                Core.CreateJob(shop.job)
            end
        end
    end

    TriggerClientEvent('tuningsystem:client:updateShops', -1, tuner_shops)
    TriggerClientEvent('tuningsystem:client:createShopBlips', -1)

    Wait(1000)
	RconPrint('T1GER Tuning System Initialized\n')
end


CreateUseableItems = function()
    -- For mods installation:
    for k,v in pairs(Config.Items['mods']) do
        Core.UseableItem(v.name, function(src, item)
            if item == nil then
                RconPrint('[^1ERROR #5383^0 UseableItem ('..v.name..') does not exists in your items.\n')
            else
                if v.id == 'performance' then
                    TriggerClientEvent('tuningsystem:client:vehiclePerformance', src, k, v) 
                else
                    TriggerClientEvent('tuningsystem:client:vehicleCustomization', src, k, v)
                end
            end
        end)
    end
end

RegisterServerEvent('tuningsystem:server:playerLoaded')
AddEventHandler('tuningsystem:server:playerLoaded', function()
    local src = Core.Player.GetSource(source)
    local playerTunerId = GetPlayerTunerId(src)

    local isAdmin = Core.Player.IsAdmin(src)
    TriggerClientEvent('tuningsystem:client:isAdmin', src, isAdmin)
    local identifier = Core.Player.GetIdentifier(src)
    if tuner_shops[playerTunerId] ~= nil and identifier == tuner_shops[playerTunerId].boss then 
        TriggerClientEvent('tuningsystem:client:setPlayerTunerId', src, playerTunerId, true)
    else
        TriggerClientEvent('tuningsystem:client:setPlayerTunerId', src, playerTunerId, false)
    end
    TriggerClientEvent('tuningsystem:client:updateShops', src, tuner_shops)
    TriggerClientEvent('tuningsystem:client:createShopBlips', -1)

    -- Useable Items:
    CreateUseableItems()
end)

Core.RegisterCallback('tuningsystem:server:getShops', function(src, cb)
    cb(tuner_shops)
end)

RegisterServerEvent('tuningsystem:server:setBoss')
AddEventHandler('tuningsystem:server:setBoss', function(data)
    local src = source
    local boss_grade = GetBossGrade(data.shop.id)

    local match = false

    if next(data.shop.employees) ~= nil then 
        for k,v in pairs(data.shop.employees) do
            if v.identifier == data.player.identifier then
                match = true
                break
            end
        end
    end

    if match == false then
        table.insert(data.shop.employees, {identifier = data.player.identifier, name = Core.Player.GetName(data.player.source), char = Core.Player.GetFullName(data.player.source), job_grade = boss_grade})
        TriggerClientEvent('tuningsystem:client:setPlayerTunerId', data.player.source, data.shop.id, true)
    end

    if tuner_shops[data.shop.id].boss ~= nil then 
        local old_boss = Core.Player.GetSrcFromIdentifier(tuner_shops[data.shop.id].boss)
        if old_boss ~= nil then
            Core.Player.SetPlayerJob(old_boss, data.shop.job.name, 0)
        end
    end

    Core.Player.SetPlayerJob(data.player.source, data.shop.job.name, boss_grade.grade)

    tuner_shops[data.shop.id].boss = Core.Player.GetIdentifier(data.player.source)
    tuner_shops[data.shop.id].employees = data.shop.employees
    
    TriggerClientEvent('tuningsystem:client:updateShops', -1, tuner_shops)
    
    Core.Notification(src, {
        title = '',
        message = Lang['you_assigned_new_boss']:format(Core.Player.GetFullName(data.player.source), data.shop.cfg.name),
        type = 'inform'
    })
end)


Core.RegisterCallback('tuningsystem:server:getBills', function(src, cb, id)
    cb(tuner_shops[id].billing)
end)

RegisterServerEvent('tuningsystem:server:createBill')
AddEventHandler('tuningsystem:server:createBill', function(shopId, input)
    local src = Core.Player.GetSource(source)
    local targetSrc = Core.Player.GetSource(input[1])
    local name = Core.Player.GetFullName(targetSrc)

    if Core.Player.GetMoney(targetSrc, 'bank') >= input[2] then
        TriggerClientEvent('tuningsystem:client:sendBill', targetSrc, shopId, input, src)
        Core.Notification(src, {
            title = '',
            message = Lang['bill_sent_to_x']:format(input[2], name),
            type = 'inform'
        })
    else
        Core.Notification(src, {
            title = '', 
            message = Lang['bill_x_no_money']:format(name),
            type = 'inform'
        })
    end
end)

RegisterServerEvent('tuningsystem:server:payBill')
AddEventHandler('tuningsystem:server:payBill', function(shopId, input, bool, playerSrc)
    local src = Core.Player.GetSource(playerSrc)
    local srcIdentifier = Core.Player.GetIdentifier(src)
    local targetSrc = Core.Player.GetSource(source)
    local targetIdentifier = Core.Player.GetIdentifier(targetSrc)
    local targetName = Core.Player.GetFullName(targetSrc)

    if bool == true then 

        Core.Player.RemoveMoney(targetSrc, input[2], 'bank')
        tuner_shops[shopId].account = (tuner_shops[shopId].account + tonumber(input[2]))
        local bill_id = GenerateBillingNumber(shopId)
        local bill_data = {
            id = bill_id,
            shop = Config.Shops[shopId].name,
            sender = {id = srcIdentifier, name = Core.Player.GetFullName(src)},
            receiver = {id = targetIdentifier, name = targetName},
            amount = input[2],
            note = input[3],
            date = os.date('%d-%m-%Y'),
            time = os.date('%H:%M')
        }

        tuner_shops[shopId].billing[bill_id] = bill_data

        Core.Notification(src, {
            title = '',
            message = Lang['bill_paid_by_x']:format(targetName, input[2]),
            type = 'success'
        })

        TriggerClientEvent('tuningsystem:client:updateShops', -1, tuner_shops)
    else 
        Core.Notification(src, {
            title = '',
            message = Lang['bill_declined_by_x']:format(targetName, input[2]),
            type = 'inform'
        })
    end
end)


RegisterServerEvent('tuningsystem:server:generateBill')
AddEventHandler('tuningsystem:server:generateBill', function(shopId, targetId, plate, billAmount, installations)
    local src = Core.Player.GetSource(source)
    local targetSrc = Core.Player.GetSource(targetId)
    local name = Core.Player.GetFullName(targetSrc)

    if Core.Player.GetMoney(targetSrc, 'bank') >= billAmount then
        TriggerClientEvent('tuningsystem:client:sendGeneratedBill', targetSrc, shopId, plate, billAmount, installations, src)
        Core.Notification(src, {
            title = '',
            message = Lang['bill_sent_to_x']:format(billAmount, name),
            type = 'inform'
        })
    else
        Core.Notification(src, {
            title = '', 
            message = Lang['bill_x_no_money']:format(name),
            type = 'inform'
        })
    end
end)

RegisterServerEvent('tuningsystem:server:billPayment')
AddEventHandler('tuningsystem:server:billPayment', function(shopId, plate, billAmount, installations, playerSrc, billNote)
    local src = Core.Player.GetSource(playerSrc)
    local srcIdentifier = Core.Player.GetIdentifier(src)
    local targetSrc = Core.Player.GetSource(source)
    local targetIdentifier = Core.Player.GetIdentifier(targetSrc)
    local targetName = Core.Player.GetFullName(targetSrc)

    Core.Player.RemoveMoney(targetSrc, billAmount, 'bank')
    tuner_shops[shopId].account = (tuner_shops[shopId].account + tonumber(billAmount))
    local bill_id = GenerateBillingNumber(shopId)
    local bill_data = {
        id = bill_id,
        shop = Config.Shops[shopId].name,
        sender = {id = srcIdentifier, name = Core.Player.GetFullName(src)},
        receiver = {id = targetIdentifier, name = targetName},
        amount = billAmount,
        note = billNote,
        date = os.date('%d-%m-%Y'),
        time = os.date('%H:%M')
    }

    tuner_shops[shopId].billing[bill_id] = bill_data

    Core.Notification(src, {
        title = '',
        message = Lang['bill_paid_by_x']:format(targetName, billAmount),
        type = 'success'
    })

    TriggerClientEvent('tuningsystem:client:updateShops', -1, tuner_shops)
end)

SyncTunerShops = function()
    if Config.Debug then
        RconPrint('[SAVED] T1GER TUNER SHOPS\n')
    end
    if tuner_shops and next(tuner_shops) then
        for k,v in pairs(tuner_shops) do
            MySQL.Sync.execute(
                'UPDATE '..database_table..' SET account = ?, boss = ?, employees = ?, storage = ?, billing = ? WHERE id = ?',
                {v.account, v.boss, json.encode(v.employees), json.encode(v.storage), json.encode(v.billing), v.id}
            )
        end
    end
end

StartDatabaseSync = function()
    function SaveData()
        SyncTunerShops()
        SetTimeout(Config.SyncToDatabase * 60 * 1000, SaveData)
    end
    SetTimeout(Config.SyncToDatabase * 60 * 1000, SaveData)
end
StartDatabaseSync()

RegisterServerEvent('tuningsystem:server:toggleDuty')
AddEventHandler('tuningsystem:server:toggleDuty', function(onDuty, args)
    local src = Core.Player.GetSource(source)
    local playerJob = Core.Player.GetPlayerJob(src)
    local identifier = Core.Player.GetIdentifier(src)
    if onDuty then 
        Core.Player.SetPlayerJob(src, 'unemployed', 0)
        Core.Notification(src, {
            title = '',
            message = Lang['you_clocked_off_duty'],
            type = 'inform'
        })
    else
        if next(tuner_shops[args.shopId].employees) ~= nil then
            for k,v in pairs(tuner_shops[args.shopId].employees) do
                if identifier == v.identifier then
                    Core.Player.SetPlayerJob(src, Config.Shops[args.shopId].job.name, v.job_grade.grade)
                    Core.Notification(src, {
                        title = '',
                        message = Lang['you_clocked_on_duty'],
                        type = 'success'
                    })
                    break 
                end
            end
        end
    end
end)

Core.RegisterCallback('tuningsystem:server:getAccount', function(src, cb, id)
    cb(tuner_shops[id].account)
end)

RegisterServerEvent('tuningsystem:server:updateAccount')
AddEventHandler('tuningsystem:server:updateAccount', function(add, id, amount)
    local src = Core.Player.GetSource(source)
    local execute = false

    if add == true then
        local playerMoney = Core.Player.GetMoney(src)
        if playerMoney >= amount then
            Core.Player.RemoveMoney(src, amount)
            AddAcountMoney(id, amount)
            execute = true
            Core.Notification(src, {
                title = '',
                message = Lang['money_deposited']:format(amount),
                type = 'success'
            })
        else
            execute = false
            return Core.Notification(src, {
                title = '',
                message = Lang['not_enough_money'],
                type = 'error'
            })
        end
    else
        Core.Player.AddMoney(src, amount)
        RemoveAccountMoney(id, amount)
        execute = true
        Core.Notification(src, {
            title = '',
            message = Lang['money_withdrawn']:format(amount),
            type = 'success'
        })
    end

    if execute then 
        TriggerClientEvent('tuningsystem:client:updateShops', -1, tuner_shops)
    end
end)


Core.RegisterCallback('tuningsystem:server:getEmployees', function(src, cb, id)
    cb(tuner_shops[id].employees)
end)

RegisterServerEvent('tuningsystem:server:removeAccountMoney')
AddEventHandler('tuningsystem:server:removeAccountMoney', function(id, amount)
    local src = Core.Player.GetSource(source)
    RemoveAccountMoney(id, amount)
    Core.Notification(src, {
        title = '',
        message = Lang['account_money_minus']:format(amount),
        type = 'inform'
    })
end)

RegisterServerEvent('tuningsystem:server:addAccountMoney')
AddEventHandler('tuningsystem:server:addAccountMoney', function(id, amount)
    local src = Core.Player.GetSource(source)
    AddAcountMoney(id, amount)
    Core.Notification(src, {
        title = '',
        message = Lang['account_money_plus']:format(amount),
        type = 'inform'
    })
end)

RegisterServerEvent('tuningsystem:server:updateEmployees')
AddEventHandler('tuningsystem:server:updateEmployees', function(id, employees)
    tuner_shops[id].employees = employees
    TriggerClientEvent('tuningsystem:client:updateShops', -1, tuner_shops)
end)

RegisterServerEvent('tuningsystem:server:tryRecruit')
AddEventHandler('tuningsystem:server:tryRecruit', function(data, args)
    local src = Core.Player.GetSource(source)
    local targetSrc = Core.Player.GetSource(args.serverId)
    local targetIdentifier = Core.Player.GetIdentifier(targetSrc)

    local foundPlayer = false
    for k,v in pairs(tuner_shops[data.shopId].employees) do
        if v.identifier == targetIdentifier then
            foundPlayer = true
            break
        end
    end
    if foundPlayer == true then
        return Core.Notification(src, {
            title = '',
            message = Lang['employee_already_hired'],
            type = 'error'
        })
    else
        TriggerClientEvent('tuningsystem:client:sendRecruitment', targetSrc, data, args, src)
        Core.Notification(src, {
            title = '',
            message = Lang['employee_recruit_sent']:format(Core.Player.GetName(targetSrc)),
            type = 'inform'
        })
    end
end)

RegisterServerEvent('tuningsystem:server:recruitmentRespond')
AddEventHandler('tuningsystem:server:recruitmentRespond', function(data, args, bool, playerSrc)
    local src = Core.Player.GetSource(playerSrc)
    local targetSrc = Core.Player.GetSource(source)
    local targetIdentifier = Core.Player.GetIdentifier(targetSrc)

    if bool == true then 
        Core.Notification(src, {
            title = '',
            message = Lang['recruitment_accepted2'],
            type = 'success'
        })

        local employee_grade = {name = tuner_shops[data.shopId].job.grades["0"].name, label = tuner_shops[data.shopId].job.grades["0"].label, grade = tuner_shops[data.shopId].job.grades["0"].grade}
        table.insert(tuner_shops[data.shopId].employees, {identifier = targetIdentifier, name = Core.Player.GetName(targetSrc), char = Core.Player.GetFullName(targetSrc), job_grade = employee_grade})

        TriggerClientEvent('tuningsystem:client:updateShops', -1, tuner_shops)
        TriggerClientEvent('tuningsystem:client:setPlayerTunerId', targetSrc, data.shopId, false)
    else 
        Core.Notification(src, {
            title = '',
            message = Lang['recruitment_declined2'],
            type = 'inform'
        })
    end
end)

Core.RegisterCallback('tuningsystem:server:getPlayerVehicles', function(src, cb)
	local playerSrc = Core.Player.GetSource(src)
    local vehicles = Core.Player.GetAllVehicles(playerSrc)
    cb(vehicles)
end)

Core.RegisterCallback('tuningsystem:server:getStorage', function(src, cb, id)
    cb(tuner_shops[id].storage)
end)

RegisterServerEvent('tuningsystem:server:updateStorage')
AddEventHandler('tuningsystem:server:updateStorage', function(id, storage, type, item, amount)
    local src = Core.Player.GetSource(source)
    tuner_shops[id].storage = storage
    if type == 'deposit' then
        Core.Player.RemoveItem(src, item, amount)
    elseif type == 'withdraw' then
        Core.Player.AddItem(src, item, amount)
    end
    TriggerClientEvent('tuningsystem:client:updateShops', -1, tuner_shops)
end)

RegisterServerEvent('tuningsystem:server:craftItem')
AddEventHandler('tuningsystem:server:craftItem', function(materials, output)
    local src = Core.Player.GetSource(source)

    for i = 1, #materials do 
        Core.Player.RemoveItem(src, materials[i].name, materials[i].amount)
    end

    Core.Player.AddItem(src, output.name, 1)
    Core.Notification(src, {
        title = '',
        message = Lang['you_crafted_x_item']:format(1, output.label),
        type = 'success'
    })
end)

Core.RegisterCallback('tuningsystem:server:modshopPayment', function(src, cb, data, shopId)
    local modName, modType, modLabel, modPrice = data.modName, data.modType, data.modLabel, data.modPrice
    print(modName, modType, modLabel, modPrice)

    local bank = Core.Player.GetMoney(src, 'bank')
    if bank >= modPrice then
        Core.Player.RemoveMoney(src, modPrice)
        if Config.ModShop.AccountPercentage ~= nil and Config.ModShop.AccountPercentage > 0.0 then
            local amount = (modPrice * (Config.ModShop.AccountPercentage/100))
            AddAcountMoney(shopId, amount)
        end
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent('tuningsystem:server:removeMoney')
AddEventHandler('tuningsystem:server:removeMoney', function(amount, account)
    local src = Core.Player.GetSource(source)
    Core.Player.RemoveMoney(src, amount, account)
end)

RegisterServerEvent('tuningsystem:server:addMoney')
AddEventHandler('tuningsystem:server:addMoney', function(amount, account)
    local src = Core.Player.GetSource(source)
    Core.Player.AddMoney(src, amount, account)
end)

Core.RegisterCallback('tuningsystem:server:payPerformanceMod', function(src, cb, price)
    local bank = Core.Player.GetMoney(src, 'bank')
    if bank >= price then
        Core.Player.RemoveMoney(src, price, 'bank')
        cb(true)
    else
        cb(false)
    end
end)

Core.RegisterCallback('tuningsystem:server:payModParts', function(src, cb, itemId, total, quantity, shopId)
    local item = Config.Items['mods'][itemId]
    local totalPrice = total
    local quantity = quantity
    local unitPrice = item.price
    
    local shopAccount = GetAccountMoney(shopId)
    if shopAccount ~= nil and type(shopAccount) == 'number' then
        if shopAccount >= totalPrice then
            RemoveAccountMoney(shopId, totalPrice)
            if Config.LaptopItemsToStash == true then 
                local stash = Config.Shops[shopId].storage
                local success, response = Core.StashAddItem(stash.id, item.name, quantity, stash.slots, stash.weight)
                if not success then
                    if Config.Debug then
                        print("item not added to stash, instead added to player inventory")
                    end
                    Core.Player.AddItem(src, item.name, quantity)
                else
                    Core.Notification(src, {
                        title = '',
                        message = Lang['parts_sent_to_storage'],
                        type = 'success'
                    })
                end
            else
                Core.Player.AddItem(src, item.name, quantity)
            end
            cb(true)
        else
            cb(false)
        end
    end
end)

Core.RegisterCallback('tuningsystem:createModObject', function(src, cb, model, coords, heading)
    local coords = vector3(coords.x, coords.y, coords.z)
    local obj = CreateObject(model, coords.x, coords.y, coords.z, true, true, false)
    local attempts = 0
    while not DoesEntityExist(obj) and attempts < 50 do
        Wait(1)
        attempts = attempts + 1
    end
    SetEntityHeading(obj, heading)
    local netId = NetworkGetNetworkIdFromEntity(obj) or nil
    cb(netId)
end)
