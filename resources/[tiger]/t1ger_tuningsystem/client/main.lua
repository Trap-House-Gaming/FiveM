Core, Cfg, Framework = exports['t1ger_lib']:GetLib()
Lib = exports['t1ger_lib']:GetUtils()

Citizen.CreateThread(function()
    if Core == nil or Core.FrameworkReady() == nil then 
        return error("please start t1ger_lib resource before you start t1ger_tuningsystem")
    end
    while not Core.FrameworkReady() do Wait(1000); end
    Core.GetJob()
    Wait(1000)
	TriggerServerEvent('tuningsystem:server:playerLoaded')
end)

player, coords = nil, {}
Citizen.CreateThread(function()
    while true do
        player = PlayerPedId()
        coords = GetEntityCoords(player)
        Wait(500)
    end
end)

isPlayerAdmin = false
RegisterNetEvent('tuningsystem:client:isAdmin')
AddEventHandler('tuningsystem:client:isAdmin', function(isAdmin)
    if Config.Debug then
        print("isAdmin:", isAdmin)
    end
    isPlayerAdmin = isAdmin
end)

playerTunerId, isTunerBoss = 0, false
RegisterNetEvent('tuningsystem:client:setPlayerTunerId')
AddEventHandler('tuningsystem:client:setPlayerTunerId', function(id, isBoss)
    if Config.Debug then
        print("setTunerId | playerTunerId: ", id)
    end
    playerTunerId = id
    isTunerBoss = isBoss
end)

local tuner_shops = {}
RegisterNetEvent('tuningsystem:client:updateShops')
AddEventHandler('tuningsystem:client:updateShops', function(data)
    tuner_shops = data
end)

local modshop = {}
local browsingMods = false

local shop_blips = {}
RegisterNetEvent('tuningsystem:client:createShopBlips')
AddEventHandler('tuningsystem:client:createShopBlips', function()
    for i = 1, #Config.Shops do
        if Config.Shops[i].blip.enable then
            if DoesBlipExist(shop_blips[i]) then
                RemoveBlip(shop_blips[i])
            end
            shop_blips[i] = AddBlipForCoord(Config.Shops[i].pos.x, Config.Shops[i].pos.y, Config.Shops[i].pos.z)
            SetBlipSprite(shop_blips[i], Config.Shops[i].blip.sprite)
            SetBlipDisplay(shop_blips[i], Config.Shops[i].blip.display)
            SetBlipScale(shop_blips[i], Config.Shops[i].blip.scale)
            SetBlipColour(shop_blips[i], Config.Shops[i].blip.color)
            SetBlipAsShortRange(shop_blips[i], true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(Config.Shops[i].blip.name)
            EndTextCommandSetBlipName(shop_blips[i])
        end
    end
end)

if Config.Menu['admin'].command.enable then
    RegisterCommand(Config.Menu['admin'].command.string, function()
        TuningAdminMenu()
    end)
end

if Config.Menu['admin'].keybind.enable then
    RegisterCommand('TuningAdmin', function()
        TuningAdminMenu()
    end, false)
    RegisterKeyMapping('TuningAdmin', 'Open Admin Tuning Menu', 'keyboard', Config.Menu['admin'].keybind.defaultMapping)
end

TuningAdminMenu = function()
    if isPlayerAdmin then
        lib.registerContext({
            id = 'admin_tuning_menu',
            title = Lang['title_tuning_admin'],
            options = {
                {
                    title = Lang['title_view_shops'],
                    icon = 'list',
                    event = 'tuningsystem:client:viewShops',
                    arrow = true,
                },
            },
        })
        lib.showContext('admin_tuning_menu')
    else
        if Config.Debug then
            print('you are not an admin.')
        end
    end
end

RegisterNetEvent('tuningsystem:client:viewShops', function()
    local menuOptions = {}
    Core.TriggerCallback('tuningsystem:server:getShops', function(results)
        if results and next(results) then
            for id, shop in pairs(results) do
                local boss_name = Lang['meta_not_answered']
                for k,v in pairs(shop.employees) do
                    if v.identifier == shop.boss then
                        boss_name = v.char
                    end
                end
                table.insert(menuOptions, {
                    title = Config.Shops[id].name,
                    icon = 'people-group',
                    args = shop,
                    metadata = {
                        {label = Lang['meta_shop_id'], value = id},
                        {label = Lang['meta_boss'], value = boss_name or Lang['meta_not_answered']},
                        {label = Lang['meta_boss_id'], value = shop.boss or Lang['meta_not_answered']},
                        {label = Lang['meta_job_name'], value = Lang['meta_job_label_and_name']:format(shop.job.label, shop.job.name)},
                    },
                    event = 'tuningsystem:client:manageShop'
                })
            end
            lib.registerContext({
                id = 'admin_view_shops',
                title = Lang['title_view_shops'],
                menu = 'admin_tuning_menu',
                onBack = function()
                    TuningAdminMenu()
                end,
                options = menuOptions
            })
            lib.showContext('admin_view_shops')
        else
            TuningAdminMenu()
            Core.Notification({
                title = '',
                message = Lang['no_tuner_shops'],
                type = 'error'
            })
        end
    end)
end)

RegisterNetEvent('tuningsystem:client:manageShop', function(data)
    lib.registerContext({
        id = 'admin_manage_shop',
        title = Lang['title_admin_manage_shop']:format(data.cfg.name, data.id),
        menu = 'admin_view_shops',
        onBack = function()
            TriggerEvent('tuningsystem:client:viewShops')
        end,
        options = {
            {title = Lang['title_admin_set_boss'], description = Lang['desc_admin_set_boss'], icon = 'rotate', args = data, event = 'tuningsystem:client:setBoss'},
        },
    })
    lib.showContext('admin_manage_shop')
end)

RegisterNetEvent('tuningsystem:client:setBoss', function(data)
    local players = {}
    Core.TriggerCallback('t1ger_lib:getOnlinePlayers', function(results)
        for i = 1, #results, 1 do
            table.insert(players, {
                title = results[i].name,
                icon = 'user',
                description = Lang['desc_admin_click_to_set_boss'],
                metadata = {
                    {label = Lang['meta_player_id'], value = results[i].source},
                },
                args = {shop = data, player = results[i]},
                onSelect = function(args)
                    TriggerServerEvent('tuningsystem:server:setBoss', args)
                    TuningAdminMenu()
                end
            })
        end
        lib.registerContext({
            id = 'admin_set_boss',
            title = Lang['title_admin_set_boss'],
            menu = 'admin_manage_shop',
            options = players
        })
        lib.showContext('admin_set_boss')
    end)
end)

usingMenu = false
CreateMarkers = function()
    local CanInteract = function(point)
        if point.type == 'modshop' then
            if not IsPedInAnyVehicle(player, false) then
                return false
            end
        else
            if point.type ~= 'duty' then
                if point.job.name ~= Core.GetJob().name then 
                    return false
                end
            end
        end
        return true
    end

    local NearbyMarker = function(point)
        if point.mk.enable then
            if CanInteract(point) and not usingMenu then
                DrawMarker(point.mk.type, point.coords.x, point.coords.y, point.coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, point.mk.scale[1], point.mk.scale[2], point.mk.scale[3], point.mk.rgba[1], point.mk.rgba[2], point.mk.rgba[3], point.mk.rgba[4], false, false, 0, true, false, false, false)
            end
        end
        if point.isClosest and point.currentDistance < point.interact.dist and CanInteract(point) then
            if not point.textUi then
                point.textUi = true
                lib.showTextUI(point.interact.textUi, {position = point.interact.position, icon = point.interact.icon, style = point.interact.style})
            end
            if IsControlJustReleased(0, point.interact.keybind) then
                lib.hideTextUI()
                usingMenu = true

                if point.type == 'duty' then
                    OpenDutyMenu(point)
                elseif point.type == 'boss' then
                    OpenBossMenu(point)
                elseif point.type == 'garage' then 
                    OpenGarageMenu(point)
                elseif point.type == 'storage' then
                    OpenStorage(point)
                elseif point.type == 'workbench' then
                    OpenWorkbenchMenu(point)
                elseif point.type == 'laptop' then 
                    OpenLaptopMenu(point)
                elseif point.type == 'modshop' then
                    if modshop.inUse == nil then
                        OpenModShopMain(point)
                    end
                else
                    usingMenu = false
                end
            end
        elseif point.textUi then 
            point.textUi = false
            lib.hideTextUI()
        end
    end

    if Config.Shops and next(Config.Shops) then
        for i = 1, #Config.Shops do
            for k,v in pairs(Config.Markers) do
                local marker = Config.Shops[i][k]
                if v.enable and (marker ~= nil and next(marker)) then
                    lib.points.new({coords = marker.pos, type = k, data = v, shopId = i, job = Config.Shops[i].job, markerId = marker.id or nil, distance = v.marker.dist, mk = v.marker, interact = v.interact, textUi = false, nearby = NearbyMarker})
                end
            end
        end
    end

end
CreateMarkers()

OpenDutyMenu = function(args)
    local onDuty, stateLabel = false, Lang['title_no']

    if Core.GetJob().name == Config.Shops[args.shopId].job.name then 
        onDuty = true
        stateLabel = Lang['title_yes']
    end

    lib.registerContext({
        id = 'toggle_duty_menu',
        title = Lang['title_toggle_duty_menu'],
        onExit = function()
            usingMenu = false
            args.textUi = false
        end,
        options = {
            {
                title = Lang['title_on_duty_state']:format(stateLabel),
                icon = 'spinner',
                disabled = true
            },
            {
                title = Lang['title_clock_in_out'],
                icon = 'toggle-on',
                onSelect = function()
                    TriggerServerEvent('tuningsystem:server:toggleDuty', onDuty, args)
                    Wait(100)
                    OpenDutyMenu(args)
                end,
            },
        },
    })
    lib.showContext('toggle_duty_menu')
end

OpenBossMenu = function(args)
    if not isTunerBoss then
        usingMenu = false
        args.textUi = false
        Core.Notification({
            title = '',
            message = Lang['you_are_not_boss'],
            type = 'error'
        })
        return 
    end
    lib.registerContext({
        id = 'tuner_boss_menu',
        title = Lang['title_boss_menu'],
        onExit = function()
            usingMenu = false
            args.textUi = false
        end,
        options = {
            {title = Lang['title_tuner_account'], icon = 'sack-dollar', arrow = true, args = args, event = 'tuningsystem:client:account'},
            {title = Lang['title_tuner_employees'], icon = 'people-group', arrow = true, args = args, event = 'tuningsystem:client:employees'},
        },
    })
    lib.showContext('tuner_boss_menu')
end

RegisterNetEvent('tuningsystem:client:account', function(args)
    Core.TriggerCallback('tuningsystem:server:getAccount', function(account)
        lib.registerContext({
            id = 'tuner_account',
            title = Lang['title_tuner_account'],
            onExit = function()
                usingMenu = false
                args.textUi = false
            end,
            menu = 'tuner_boss_menu',
            options = {
                {
                    title = Lang['title_account_balance'],
                    icon = 'sack-dollar',
                    description = Config.Currency..Lib.CommaValue(account),
                },
                {
                    title = Lang['title_account_deposit'],
                    icon = 'money-bill-trend-up',
                    onSelect = function()
                        local input = lib.inputDialog(Lang['title_tuner_account'], {
                            {type = 'input', label = Lang['input_account_cur_balance'], icon = 'sack-dollar', disabled = true, default = account},
                            {type = 'number', label = Lang['input_account_deposit_amount'], icon = 'money-bill-trend-up', placeholder = 100}
                        })
    
                        if not input then
                            return TriggerEvent('tuningsystem:client:account', args)
                        end
    
                        if input[2] == nil or input[2] == '' or input[2] == ' ' then
                            Core.Notification({
                                title = '',
                                message = Lang['input_required'],
                                type = 'error'
                            })
                            return TriggerEvent('tuningsystem:client:account', args)
                        end
    
                        if input[2] <= 0 then 
                            Core.Notification({
                                title = '',
                                message = Lang['input_amount_higher_0'],
                                type = 'error'
                            })
                            return TriggerEvent('tuningsystem:client:account', args)
                        end
    
                        TriggerServerEvent('tuningsystem:server:updateAccount', true, args.shopId, input[2])
                        Wait(100)
                        TriggerEvent('tuningsystem:client:account', args)
                    end,
                },
                {
                    title = Lang['title_account_withdraw'],
                    icon = "money-bill-transfer",
                    onSelect = function()
                        local input = lib.inputDialog(Lang['title_tuner_account'], {
                            {type = "input", label = Lang['input_account_cur_balance'], icon = 'sack-dollar', disabled = true, default = account},
                            {type = "number", label = Lang['input_account_withdraw_amount'], icon = 'money-bill-transfer', placeholder = 50}
                        })
    
                        if not input then
                            return TriggerEvent('tuningsystem:client:account', args)
                        end
    
                        if input[2] == nil or input[2] == '' or input[2] == ' ' then
                            Core.Notification({
                                title = '',
                                message = Lang['input_required'],
                                type = 'error'
                            })
                            return TriggerEvent('tuningsystem:client:account', args)
                        end
    
                        if input[2] <= 0 then 
                            Core.Notification({
                                title = '',
                                message = Lang['input_amount_higher_0'],
                                type = 'error'
                            })
                            return TriggerEvent('tuningsystem:client:account', args)
                        end
    
                        if input[2] > account then
                            Core.Notification({
                                title = '',
                                message = Lang['account_withdraw_max'],
                                type = 'error'
                            })
                            return TriggerEvent('tuningsystem:client:account', args)
                        end
    
                        TriggerServerEvent('tuningsystem:server:updateAccount', false, args.shopId, input[2])
                        Wait(100)
                        TriggerEvent('tuningsystem:client:account', args)
                    end,
                },
            },
        })
        lib.showContext('tuner_account')
    end, args.shopId)
end)

RegisterNetEvent('tuningsystem:client:employees', function(args)
    lib.registerContext({
        id = 'tuner_employees',
        title = Lang['title_tuner_employees'],
        onExit = function()
            usingMenu = false
            args.textUi = false
        end,
        menu = 'tuner_boss_menu',
        options = {
            {
                title = Lang['title_manage_employees'],
                icon = 'people-group',
                description = Lang['desc_manage_employees'],
                arrow = true, 
                args = args,
                event = 'tuningsystem:client:manageEmployees',
            },
            {
                title = Lang['title_recruit_employees'],
                icon = 'paper-plane',
                arrow = true, 
                args = args,
                event = 'tuningsystem:client:recruitEmployees',
            },
        },
    })
    lib.showContext('tuner_employees')
end)

RegisterNetEvent('tuningsystem:client:manageEmployees', function(args)
    Core.TriggerCallback('tuningsystem:server:getEmployees', function(employees)
        local menuOptions = {}
        for k,v in pairs(employees) do
            table.insert(menuOptions, {
                title = v.name,
                icon = 'user',
                args = {player = v, shopId = args.shopId, employees = employees},
                metadata = {
                    {label = Lang['meta_job_grade'], value = v.job_grade.label},
                    {label = Lang['meta_identifier'], value = v.identifier},
                },
                arrow = true,
                event = 'tuningsystem:client:manageThisEmployee',
            })
        end
        lib.registerContext({
            id = 'manage_employees',
            title = Lang['title_manage_employees'],
            onExit = function()
                usingMenu = false
                args.textUi = false
            end,
            menu = 'tuner_employees',
            options = menuOptions,
        })
        lib.showContext('manage_employees')
    end, args.shopId)
end)

RegisterNetEvent('tuningsystem:client:manageThisEmployee', function(args)
    local menuOptions = {}

    table.insert(menuOptions, {
        title = Lang['title_fire_employee'],
        icon = 'ban',
        description = Lang['desc_fire'],
        args = args,
        onSelect = function()
            if args.player.identifier == tuner_shops[args.shopId].boss then
                Core.Notification({
                    title = '',
                    message = Lang['cannot_fire_boss'],
                    type = 'error'
                })
                return TriggerEvent('tuningsystem:client:manageThisEmployee', args)
            else
                for k,v in pairs(args.employees) do
                    if args.player.identifier == v.identifier then
                        TriggerServerEvent('t1ger_lib:server:setJobOnIdentifier', 'unemployed', 0, args.player.identifier)
                        Core.Notification({
                            title = '',
                            message = Lang['fired_employee']:format(args.player.name),
                            type = 'error'
                        })
                        table.remove(args.employees, k)
                        break
                    end
                end
            end
            TriggerServerEvent('tuningsystem:server:updateEmployees', args.shopId, args.employees)
            Wait(100)
            TriggerEvent('tuningsystem:client:manageEmployees', args)
        end,
    })

    table.insert(menuOptions, {title = Lang['title_promote_emplotee'], icon = 'wrench', description = Lang['desc_promote'], args = args, event = 'tuningsystem:client:promoteEmployee'})

    lib.registerContext({
        id = 'manage_this_employee',
        title = args.player.name,
        onExit = function()
            usingMenu = false
            args.textUi = false
        end,
        menu = 'manage_employees',
        options = menuOptions,
    })
    lib.showContext('manage_this_employee')
end)

RegisterNetEvent('tuningsystem:client:promoteEmployee', function(args)
    local menuOptions = {}
    for k,v in pairs(tuner_shops[args.shopId].job.grades) do
        if v.isboss == nil or (v.isboss ~= nil and v.isboss == false) then
            if args.player.job_grade.grade ~= v.grade then 
                table.insert(menuOptions, {
                    title = v.label,
                    metadata = {
                        {label = Lang['meta_job_grade'], value = v.grade},
                        {label = Lang['meta_job_name'], value = v.name},
                    },
                    onSelect = function()
                        if args.player.identifier == tuner_shops[args.shopId].boss then
                            Core.Notification({
                                title = '',
                                message = Lang['cannot_demote_boss'],
                                type = 'error'
                            })
                            return TriggerEvent('tuningsystem:client:manageThisEmployee', args)
                        else
                            for _,y in pairs(args.employees) do
                                if args.player.identifier == y.identifier then
                                    y.job_grade = {name = v.name, label = v.label, grade = v.grade}
                                    TriggerServerEvent('t1ger_lib:server:setJobOnIdentifier', tuner_shops[args.shopId].job.name, v.grade, args.player.identifier)
                                    Core.Notification({
                                        title = '',
                                        message = Lang['employee_grade_updated']:format(args.player.name),
                                        type = 'success'
                                    })
                                    break
                                end
                            end
                        end
                        TriggerServerEvent('tuningsystem:server:updateEmployees', args.shopId, args.employees)
                        Wait(100)
                        TriggerEvent('tuningsystem:client:manageEmployees', args)
                    end,
                })
            end
        end
    end
    lib.registerContext({
        id = 'promote_employee',
        title = args.player.name,
        onExit = function()
            usingMenu = false
            args.textUi = false
        end,
        menu = 'manage_employees',
        options = menuOptions,
    })
    lib.showContext('promote_employee')
end)

RegisterNetEvent('tuningsystem:client:recruitEmployees', function(args)
    local menuOptions = {}
    local players = Lib.GetPlayersInArea(GetEntityCoords(PlayerPedId()), Config.RecruitMember.Distance)
    for i = 1, #players do
        local fullName = Core.GetFullName(GetPlayerServerId(players[i]))
        local menuTitle = fullName..' ['..GetPlayerServerId(players[i])..']'
        if Config.RecruitMember.ShowFullName == false then
            menuTitle = '['..GetPlayerServerId(players[i])..']'
        end
        table.insert(menuOptions, {
            title = menuTitle,
            icon = 'user',
            description = Lang['desc_recruit_employee'],
            args = args,
            onSelect = function()
                TriggerServerEvent('tuningsystem:server:tryRecruit', args, {name = fullName, serverId = GetPlayerServerId(players[i])})
                TriggerEvent('tuningsystem:client:employees', args)
            end,
        })
    end
    if #menuOptions <= 0 then
        Core.Notification({
            title = '',
            message = Lang['no_players_nearby'],
            type = 'error'
        })
        return TriggerEvent('tuningsystem:client:employees', args)
    end
    lib.registerContext({
        id = 'recruit_employee',
        title = Lang['title_recruit_employees'],
        menu = 'tuner_employees',
        onExit = function()
            usingMenu = false
            args.textUi = false
        end,
        onBack = function()
            TriggerEvent('tuningsystem:client:employees', args)
        end,
        options = menuOptions,
    })
    lib.showContext('recruit_employee')
end)

RegisterNetEvent('tuningsystem:client:sendRecruitment')
AddEventHandler('tuningsystem:client:sendRecruitment', function(data, args, playerSrc)
    lib.registerContext({
        id = 'shop_recruitment',
        title = Lang['title_accept_recruitment']:format(Config.Shops[data.shopId].name),
        canClose = false,
        options = {
            {
                title = Lang['title_yes'],
                icon = 'check',
                onSelect = function()
                    TriggerServerEvent('tuningsystem:server:recruitmentRespond', data, args, true, playerSrc)
                    Core.Notification({
                        title = '',
                        message = Lang['recruitment_accepted'],
                        type = 'success'
                    })
                end
            },
            {
                title = Lang['title_no'],
                icon = 'ban',
                onSelect = function()
                    TriggerServerEvent('tuningsystem:server:recruitmentRespond', data, args, false, playerSrc)
                    Core.Notification({
                        title = '',
                        message = Lang['recruitment_declined'],
                        type = 'inform'
                    })
                end
            },
        },
    })
    lib.showContext('shop_recruitment')
end)

OpenGarageMenu = function(args)
    if Config.Markers[args.type].useBuiltInGarage == true then
        lib.registerContext({
            id = 'garage_menu',
            title = Lang['title_tuner_garage'],
            onExit = function()
                usingMenu = false
                args.textUi = false
            end,
            options = {
                {
                    title = Lang['title_garage_get_veh'],
                    icon = 'car',
                    args = {shopid = args.shopId, type = args.type, garageId = args.markerId},
                    event = 'tuningsystem:client:getPlayerVehicles'
                },
                {
                    title = Lang['title_garage_store_veh'],
                    icon = 'square-parking',
                    onSelect = function()
                        local vehicle = GetVehiclePedIsIn(player, false)
                        if vehicle ~= 0 then 
                            Lib.GetControlOfEntity(vehicle)
                            local props = lib.getVehicleProperties(vehicle)
                            Core.DeleteVehicle(vehicle)
                            TriggerServerEvent('t1ger_lib:server:updateOwnedVehicle', true, args.markerId, props)
                        end
                        usingMenu = false
                        args.textUi = false
                    end,
                },
            },
        })
        lib.showContext('garage_menu')
    else
        -- add function for your garage here:
    end
end

RegisterNetEvent('tuningsystem:client:getPlayerVehicles', function(args)
    local menuOptions = {}
    Core.TriggerCallback('tuningsystem:server:getPlayerVehicles', function(results)
        if results and next(results) then
            for k, vehicle in pairs(results) do
                -- plate, props, type, job, stored, garage, impound, fuel, engine, body, model
                if vehicle.garage == nil or args.garageId == vehicle.garage then
                    if vehicle.stored  == nil or (vehicle.stored == true or vehicle.stored == 1) then 
                        local props = json.decode(vehicle.props)
                        local name = GetLabelText(GetDisplayNameFromVehicleModel(props.model))
                        local make = GetLabelText(GetMakeNameFromVehicleModel(props.model))
                        local metaOptions = {
                            {label = Lang['meta_veh_make'], value = make},
                            {label = Lang['meta_veh_model'], value = name},
                            {label = Lang['meta_veh_plate'], value = vehicle.plate},
                        }
                        if props.engineHealth ~= nil or vehicle.engine ~= nil then
                            table.insert(metaOptions, {label = Lang['meta_option_engine'], value = (props.engineHealth/10)..'%' or (props.engine/10)..'%'})
                        end
                        if props.bodyHealth ~= nil or vehicle.body ~= nil then
                            table.insert(metaOptions, {label = Lang['meta_option_body'], value = (props.bodyHealth/10)..'%' or (props.body/10)..'%'})
                        end
                        if props.fuelLevel ~= nil or vehicle.fuel ~= nil then
                            table.insert(metaOptions, {label = Lang['meta_option_fuel'], value = props.fuelLevel..'%' or vehicle.fuel..'%'})
                        end
                        table.insert(menuOptions, {
                            title = make..' '..name..' ['..vehicle.plate..']',
                            icon = 'car',
                            metadata = metaOptions,
                            args = {args, vehicle},
                            onSelect = function()
                                Core.SpawnVehicle(props.model, coords, GetEntityHeading(player), function(vehicle)
                                    Lib.GetControlOfEntity(vehicle)
                                    lib.setVehicleProperties(vehicle, props, false)
                                    SetPedIntoVehicle(player, vehicle, -1)
                                    TriggerServerEvent('t1ger_lib:server:updateOwnedVehicle', false, args.markerId, props)
                                end, true)
                                usingMenu = false
                                args.textUi = false
                            end,
                        })
                    end
                end
            end
            if #menuOptions <= 0 then
                usingMenu = false
                args.textUi = false
                return Core.Notification({
                    title = '',
                    message = Lang['no_owned_vehicles'],
                    type = 'inform'
                })
            end
            lib.registerContext({
                id = 'get_vehicles',
                title = Lang['title_garage_vehicles'],
                onExit = function()
                    usingMenu = false
                    args.textUi = false
                end,
                menu = 'garage_menu',
                options = menuOptions,
            })
            lib.showContext('get_vehicles')
        else
            Core.Notification({
                title = '',
                message = Lang['no_owned_vehicles'],
                type = 'inform'
            })
        end
    end)
end)

OpenStorage = function(args)
    if Cfg.Inventory == 'default' and Framework == 'ESX' then
        lib.registerContext({
            id = 'storage_menu',
            title = Lang['title_storage'],
            onExit = function()
                usingMenu = false
                args.textUi = false
            end,
            options = {
                {
                    title = Lang['title_withdraw_storage'],
                    description = Lang['desc_withdraw_storage'],
                    icon = 'minus',
                    arrow = true,
                    args = shop,
                    onSelect = function()
                        Core.TriggerCallback('tuningsystem:server:getStorage', function(results)
                            if next(results) ~= nil then
                                local menuOptions = {}
                                for k,v in pairs(results) do
                                    table.insert(menuOptions, {
                                        title = v.label..' ['..v.count..'x]',
                                        icon = 'plus',
                                        args = v,
                                        onSelect = function()
                                            local input = lib.inputDialog(Lang['input_title_withdraw']:format(v.label, v.count), {
                                                {type = 'number', label = Lang['input_storage_withdraw_amount'], min = 1, max = v.count, icon = 'bars', placeholder = 100}
                                            })
                        
                                            if not input then
                                                return lib.showContext('storage_withdraw')
                                            end
                        
                                            if input[1] == nil or input[1] == '' or input[1] == ' ' then
                                                Core.Notification({
                                                    title = '',
                                                    message = Lang['input_required'],
                                                    type = 'error'
                                                })
                                                return lib.showContext('storage_withdraw')
                                            end
                        
                                            if input[1] <= 0 then 
                                                Core.Notification({
                                                    title = '',
                                                    message = Lang['input_amount_higher_0'],
                                                    type = 'error'
                                                })
                                                return lib.showContext('storage_withdraw')
                                            end

                                            v.count = (v.count - input[1])
                                            if v.count <= 0 then
                                                table.remove(results, k)
                                            end

                                            TriggerServerEvent('tuningsystem:server:updateStorage', args.shopId, results, 'withdraw', v.name, input[1])
                                            Wait(100)
                                            OpenStorage(args)
                                        end,
                                    })
                                end
                                lib.registerContext({
                                    id = 'storage_withdraw',
                                    title = Lang['title_withdraw_storage'],
                                    onExit = function()
                                        usingMenu = false
                                        args.textUi = false
                                    end,
                                    menu = 'storage_menu',
                                    options = menuOptions,
                                })
                                lib.showContext('storage_withdraw')
                            else
                                Core.Notification({
                                    title = '',
                                    message = Lang['storage_empty'],
                                    type = 'inform'
                                })
                                return OpenStorage(args)
                            end
                        end, args.shopId)
                    end,
                },
                {
                    title = Lang['title_deposit_storage'],
                    description = Lang['desc_deposit_storage'],
                    icon = 'plus',
                    arrow = true,
                    args = shop,
                    onSelect = function()
                        Core.TriggerCallback('t1ger_lib:getPlayerInventory', function(results)
                            if next(results) ~= nil then
                                local menuOptions = {}
                                for k,v in pairs(results) do
                                    table.insert(menuOptions, {
                                        title = v.label..' ['..v.count..'x]',
                                        icon = 'minus',
                                        args = v,
                                        onSelect = function()
                                            local input = lib.inputDialog(Lang['input_title_deposit']:format(v.label, v.count), {
                                                {type = 'number', label = Lang['input_storage_deposit_amount'], min = 1, max = v.count, icon = 'bars', placeholder = 100}
                                            })
                        
                                            if not input then
                                                return lib.showContext('storage_deposit')
                                            end
                        
                                            if input[1] == nil or input[1] == '' or input[1] == ' ' then
                                                Core.Notification({
                                                    title = '',
                                                    message = Lang['input_required'],
                                                    type = 'error'
                                                })
                                                return lib.showContext('storage_deposit')
                                            end
                        
                                            if input[1] <= 0 then 
                                                Core.Notification({
                                                    title = '',
                                                    message = Lang['input_amount_higher_0'],
                                                    type = 'error'
                                                })
                                                return lib.showContext('storage_deposit')
                                            end

                                            Core.TriggerCallback('tuningsystem:server:getStorage', function(shop_storage)
                                                local match = false
                                                if next(shop_storage) ~= nil then
                                                    for id,item in pairs(shop_storage) do
                                                        if item.name == v.name then
                                                            match = true
                                                            item.count = (item.count + input[1])
                                                            break
                                                        end
                                                    end
                                                    if match == false then
                                                        table.insert(shop_storage, {name = v.name, label = v.label, count = input[1], info = v.info})
                                                    end
                                                else
                                                    table.insert(shop_storage, {name = v.name, label = v.label, count = input[1], info = v.info})
                                                end

                                                TriggerServerEvent('tuningsystem:server:updateStorage', args.shopId, shop_storage, 'deposit', v.name, input[1])
                                                Wait(100)
                                                OpenStorage(args)
                                            end, args.shopId)
                                        end,
                                    })
                                end
                                lib.registerContext({
                                    id = 'storage_deposit',
                                    title = Lang['title_deposit_storage'],
                                    onExit = function()
                                        usingMenu = false
                                        args.textUi = false
                                    end,
                                    menu = 'storage_menu',
                                    options = menuOptions,
                                })
                                lib.showContext('storage_deposit')
                            else
                                Core.Notification({
                                    title = '',
                                    message = Lang['your_inventory_empty'],
                                    type = 'inform'
                                })
                                return OpenStorage(args)
                            end
                        end)
                    end,
                },
            },
        })
        lib.showContext('storage_menu')
    else
        local storage = Config.Shops[args.shopId][args.type]
        Core.OpenStash(storage.id, storage.label, storage.slots, storage.weight, nil)
        usingMenu = false
        args.textUi = false
    end
end

GetLabelFromItemName = function(itemName, category)
    if Config.Items[category] ~= nil then 
        for k,v in pairs(Config.Items[category]) do
            if itemName == v.name then
                return v.label
            end
        end
    else
        for cat, data in pairs(Config.Items) do
            for k,v in pairs(Config.Items[cat]) do
                if itemName == v.name then
                    return v.label
                end 
            end
        end
    end
    return itemName
end

HasMaterials = function(materials)
    local proceed, success = false, true
    for i = 1, #materials do 
        Core.TriggerCallback('t1ger_lib:hasItem', function(hasItem, count)
            if not hasItem then
                if count == 0 then 
                    Core.Notification({
                        title = '',
                        message = Lang['you_dont_have_x_item']:format(materials[i].label),
                        type = 'inform'
                    })
                else
                    Core.Notification({
                        title = '',
                        message = Lang['you_need_x_amount_item']:format(count, materials[i].label, materials[i].amount),
                        type = 'inform'
                    })
                end
                success = false
                proceed = true
            end
            if i == #materials then
                proceed = true
            end
        end, materials[i].name, materials[i].amount)
    end
    while not proceed do 
        Wait(1)
    end
    return success
end

OpenWorkbenchMenu = function(args)
    if Config.Markers[args.type].useBuiltInCrafting == true then
        local categories = {}
        for category, cat in pairs(Config.Workbench.Categories) do
            table.insert(categories, {
                title = cat.label,
                description = cat.description,
                icon = cat.icon,
                args = args,
                onSelect = function()
                    local recipes = {}
                    for k,v in ipairs(cat.recipe) do
                        local metaOptions = {}
                        for item, amount in pairs(v.materials) do
                            table.insert(metaOptions, {
                                label = GetLabelFromItemName(item, 'materials'),
                                value = amount..'x'
                            })
                        end
                        table.insert(recipes, {
                            title = v.menuTitle,
                            icon = v.icon,
                            metadata = metaOptions,
                            args = args,
                            onSelect = function()
                                local requiredItems, i = {}, 1
                                for k,v in pairs(v.materials) do 
                                    requiredItems[i] = {name = k, amount = v, label = GetLabelFromItemName(k, 'materials')}
                                    i = i + 1
                                end
                                if HasMaterials(requiredItems) then
                                    local success = lib.skillCheck(Config.Workbench.SkillCheck.difficulty, Config.Workbench.SkillCheck.inputs)
                                    if success then
                                        if lib.progressBar({
                                            duration = Config.Workbench.Duration,
                                            label = Config.Workbench.ProgressLabel:format(1, Config.Items[category][v.itemId].label),
                                            useWhileDead = false,
                                            canCancel = true,
                                            anim = {
                                                dict = Config.Workbench.Anim.dict,
                                                clip = Config.Workbench.Anim.name,
                                                flag = Config.Workbench.Anim.flag,
                                                blendIn = Config.Workbench.Anim.blendIn,
                                                blendOut = Config.Workbench.Anim.blendOut
                                            },
                                            disable = {
                                                move = true,
                                                combat = true
                                            }
                                        }) then
                                            TriggerServerEvent('tuningsystem:server:craftItem', requiredItems, Config.Items[category][v.itemId])
                                        end
                                    end
                                    Wait(100)
                                    OpenWorkbenchMenu(args)
                                else
                                    lib.showContext('workbench_menu_recipes')
                                end
                            end,
                        })
                    end
                    lib.registerContext({
                        id = 'workbench_menu_recipes',
                        title = Lang['title_workbench'],
                        menu = 'workbench_menu_categories',
                        onExit = function()
                            usingMenu = false
                            args.textUi = false
                        end,
                        options = recipes,
                    })
                    lib.showContext('workbench_menu_recipes')
                end
            })
        end
        lib.registerContext({
            id = 'workbench_menu_categories',
            title = Lang['title_workbench'],
            onExit = function()
                usingMenu = false
                args.textUi = false
            end,
            options = categories,
        })
        lib.showContext('workbench_menu_categories')
    else
        -- add function/export to open your own crafting
    end
end

OpenLaptopMenu = function(args)
    local menuOptions = {}
    for itemId,itemData in pairs(Config.Items['mods']) do 
        table.insert(menuOptions, {
            title = itemData.label..' - '..GetFormattedPrice(itemData.price),
            icon = itemData.icon,
            args = {itemId = itemId, itemData = itemData},
            onSelect = function()
                local quantity = lib.inputDialog(Lang['input_title_order_parts']:format(itemData.label, GetFormattedPrice(itemData.price)), {
                    {type = 'number', label = Lang['input_label_order_quantity'], description = Lang['input_desc_order_quantity']:format(itemData.label), placeholder = 1, required = true, min = 1, max = 20},
                })
                if not quantity then
                    return lib.showContext('laptop_menu_categories')
                end

                quantity = quantity[1]
                local total = quantity * itemData.price
                local confirm = lib.inputDialog(Lang['input_title_confirm_order_parts']:format(quantity, itemData.label, GetFormattedPrice(total)), {
                    {type = 'checkbox', label = Lang['input_label_order_confirm'], checked = false, required = true},
                })
                if not confirm then
                    return lib.showContext('laptop_menu_categories')
                else
                    Core.TriggerCallback('tuningsystem:server:payModParts', function(paid)
                        if paid then 
                            PlaySoundFrontend(-1, Config.LaptopSoundFrontend.AudioName, Config.LaptopSoundFrontend.AudioRef, true)
                        else
                            Core.Notification({
                                title = '',
                                message = Lang['insufficient_funds'],
                                type = 'error'
                            })
                        end
                        lib.showContext('laptop_menu_categories')
                    end, itemId, total, quantity, args.shopId)
                end
            end
        })
    end
    lib.registerContext({
        id = 'laptop_menu_categories',
        title = Lang['title_laptop'],
        onExit = function()
            usingMenu = false
            args.textUi = false
        end,
        options = menuOptions,
    })
    lib.showContext('laptop_menu_categories')
end

OpenModShopMain = function(point)
    local vehicle = GetVehiclePedIsIn(player, false)
    if vehicle == nil or vehicle == 0 then
        usingMenu = false
        point.textUi = false
        return Core.Notification({
            title = '',
            message = Lang['must_be_inside_veh'],
            type = 'inform'
        })
    end

    local engineHealth = GetVehicleEngineHealth(vehicle)
    local bodyHealth = GetVehicleBodyHealth(vehicle)
    if engineHealth ~= 1000.0 or bodyHealth ~= 1000.0 then
        local alert = lib.alertDialog({
            header = 'Repair Vehicle?',
            content = Lang['repair_alert_modshop']:format(GetFormattedPrice(Config.RepairPrice), engineHealth, bodyHealth),
            centered = true,
            cancel = true
        })
        if alert == 'confirm' then
            local done = false
            Core.TriggerCallback('t1ger_lib:server:payMoney', function(paid)
                if paid then
                    SetVehicleEngineHealth(vehicle, 1000.0)
                    SetVehicleBodyHealth(vehicle, 1000.0)
                    SetVehicleFixed(vehicle)
                    RepairSound()
                    Core.Notification({
                        title = '',
                        message = Lang['paid_repair_cost']:format(GetFormattedPrice(Config.RepairPrice)),
                        type = 'inform'
                    })
                else
                    return Core.Notification({
                        title = '',
                        message = Lang['not_enough_money'],
                        type = 'inform'
                    })
                end
                done = true
            end, Config.RepairPrice, 'bank')
            while not done do 
                Wait(5)
            end 
        else
            usingMenu = false
            point.textUi = false
            return Core.Notification({
                title = '',
                message = Lang['veh_must_be_repaired_to_mod'],
                type = 'inform'
            })
        end
    else
        SetVehicleFixed(vehicle)
    end
    
    modshop.inUse = true
    modshop.shopId = point.shopId
    modshop.vehicle = vehicle
    Lib.GetControlOfEntity(modshop.vehicle)
    modshop.props = lib.getVehicleProperties(modshop.vehicle)
    modshop.price = Config.DefaultVehiclePrice
    modshop.point = point

    Core.GetVehiclePrice(GetEntityModel(modshop.vehicle), function(modelValue)
        modshop.price = modelValue > 0 and modelValue or Config.DefaultVehiclePrice
    end)

    local IsCategoryAllowedInShop = function(category)
        for k,v in pairs(Config.Shops[modshop.point.shopId].categories) do
            if category == v then 
                return true 
            end
        end
        return false
    end

    local categories = {}
    for k,v in pairs(Config.ModCategories) do
        if IsCategoryAllowedInShop(k) then
            if DoesModCategoryExist(modshop.vehicle, k) then 
                table.insert(categories, {
                    label = v.title,
                    args = {id = v.id, category = k}
                })
            end
        end
    end

    table.sort(categories, function(a, b)
        return a.label < b.label
    end)

    if next(categories) == nil then 
        return Core.Notification({
            title = '',
            message = Lang['no_categories_to_show'],
            type = 'inform'
        })
    end

    -- Main Menu:
    lib.registerMenu({
        id = Config.ModShop.MainMenu.id,
        title = Config.ModShop.MainMenu.title,
        position = Config.ModShop.MainMenu.position,
        onClose = function(keyPressed)
            modshop.inUse = false
            usingMenu = false
            point.textUi = false
            modshop = {}
        end,
        onSelected = function(selected, secondary, args)
            PlaySoundFrontend(-1, Config.MenuSoundFrontend.AudioName, Config.MenuSoundFrontend.AudioRef, true)
            modshop['main'] = {id = Config.ModShop.MainMenu.id, index = selected}
        end,
        options = categories
    }, function(selected, scrollIndex, args)
        OpenSelectedModCategory(args)
    end)

    lib.showMenu(Config.ModShop.MainMenu.id, 1)
end

OpenSelectedModCategory = function(data)

    local menuOptions = {}

    for modName, mod in pairs(Config.Mods) do
        if mod.category ~= nil and mod.category == data.category then
            if DoesModExist(modshop.vehicle, modName) then
                local modLabel = GetVehicleModSlotName(modshop.vehicle, modName)
                menuOptions[#menuOptions + 1] = {
                    label = modLabel,
                    args = {title = modLabel, category = mod.category, modName = modName, modType = mod.modType, modPrice = mod.price}
                }
            end
        end
    end
    
    if next(menuOptions) == nil then
        Core.Notification({
            title = '',
            message = Lang['vehicle_no_mod_category']:format(data.category),
            type = 'inform'
        })
        return lib.showMenu(modshop['main'].id, modshop['main'].index)
    end

    table.sort(menuOptions, function(a, b)
        return a.label < b.label
    end)

    lib.registerMenu({
        id = Config.ModCategories[data.category].id,
        title = Config.ModCategories[data.category].title,
        position = Config.ModCategories[data.category].position,
        onClose = function(keyPressed)
            lib.showMenu(modshop['main'].id, modshop['main'].index)
        end,
        onSelected = function(selected, secondary, args)
            PlaySoundFrontend(-1, Config.MenuSoundFrontend.AudioName, Config.MenuSoundFrontend.AudioRef, true)
            modshop[data.category] = {id = Config.ModCategories[data.category].id, index = selected}
        end,
        options = menuOptions
    }, function(selected, scrollIndex, args)
        OpenSelectedModVariants(args)
    end)

    lib.showMenu(Config.ModCategories[data.category].id, 1)
end

OpenSelectedModVariants = function(data)
    SetVehicleModKit(modshop.vehicle, 0)
    local menuOptions = {}

    if data.category == 'respray' then
        menuOptions = GetVehicleResprayOptions(modshop.vehicle, modshop.props, data.modName, data.modType, modshop.price, nil, modshop.shopId)
    elseif data.category == 'bodyworks' or data.category == 'chassis' or data.category == 'enginebay' or data.category == 'interior' then 
        menuOptions = GetModVariantOptions(modshop.vehicle, modshop.props, data.modName, data.modType, modshop.price, modshop.shopId)
    elseif data.category == 'exterior' then 
        menuOptions = GetVehicleExteriorOptions(modshop.vehicle, modshop.props, data.modName, data.modType, modshop.price, modshop.shopId)
    elseif data.category == 'lights' then
        menuOptions = GetVehicleLightsOptions(modshop.vehicle, modshop.props, data.modName, data.modType, modshop.price, modshop.shopId)
    elseif data.category == 'wheels' then 
        menuOptions = GetVehicleWheelsOptions(modshop.vehicle, modshop.props, data.modName, data.modType, modshop.price, modshop.rgb, modshop.shopId)
    elseif data.category == 'performance' then 
        menuOptions = GetVehiclePerformanceOptions(modshop.vehicle, modshop.props, data.modName, data.modType, modshop.price, modshop.shopId)
    end

    if next(menuOptions) == nil then
        Core.Notification({
            title = '',
            message = Lang['no_variants_for_mod'],
            type = 'inform'
        }) 
        return lib.showMenu(modshop[data.category].id, modshop[data.category].index)
    end

    browsingMods = true

    ModPreviewOpenDoors(menuOptions, modshop.vehicle, data.modName)

    local newMenu = modshop[data.category].id..'_'..data.modName
    lib.registerMenu({
        id = newMenu,
        title = data.title,
        position = Config.ModCategories[data.category].position,
        onClose = function(keyPressed)
            lib.showMenu(modshop[data.category].id, modshop[data.category].index)

            if modshop.customPrimary ~= nil and modshop.customPrimary or modshop.customSecondary ~= nil and modshop.customSecondary then 
                SetVehicleModKit(modshop.vehicle, 0)
                local colorPrimary, colorSecondary = GetVehicleColours(modshop.vehicle)
                if modshop.customPrimary ~= nil and modshop.customPrimary then
                    SetVehicleCustomPrimaryColour(modshop.vehicle, modshop.customPrimary[1] * 1.0, modshop.customPrimary[2] * 1.0, modshop.customPrimary[3] * 1.0)
                    modshop.props['primaryRespray'] = {modshop.customPrimary[1] * 1.0, modshop.customPrimary[2] * 1.0, modshop.customPrimary[3] * 1.0}
                    modshop.customPrimary = nil
                elseif modshop.customSecondary ~= nil and modshop.customSecondary then 
                    SetVehicleCustomSecondaryColour(modshop.vehicle, modshop.customSecondary[1] * 1.0, modshop.customSecondary[2] * 1.0, modshop.customSecondary[3] * 1.0)
                    modshop.props['secondaryRespray'] = {modshop.customSecondary[1] * 1.0, modshop.customSecondary[2] * 1.0, modshop.customSecondary[3] * 1.0}
                    modshop.customSecondary = nil
                end
                if GetIsVehiclePrimaryColourCustom(modshop.vehicle) then colorPrimary = { GetVehicleCustomPrimaryColour(modshop.vehicle) } end
                if GetIsVehicleSecondaryColourCustom(modshop.vehicle) then colorSecondary = { GetVehicleCustomSecondaryColour(modshop.vehicle) } end
                SetVehicleColours(modshop.vehicle, colorPrimary, colorSecondary)
            end

            Lib.GetControlOfEntity(modshop.vehicle)
            lib.setVehicleProperties(modshop.vehicle, modshop.props, false)

            SetVehicleDoorsShut(modshop.vehicle, true)
            browsingMods = false
        end,
        onSelected = function(selected, secondary, args)
            PlaySoundFrontend(-1, Config.MenuSoundFrontend.AudioName, Config.MenuSoundFrontend.AudioRef, true)
            modshop[data.modName] = {id = newMenu, index = selected}

            if args.modName == 'neonEnabled' or args.modName == 'neonColor' or args.modName == 'modXenon' or args.modName == 'xenonColor' or args.modName == 'wheelColor' or args.modName == 'primaryRespray' or args.modName == 'secondaryRespray' or args.modName == 'pearlescentColor' or args.modName == 'dashboardColor' or args.modName == 'interiorColor' or (args.modName == 'modLivery' and args.old ~= nil)  then
                return
            end

            if args.modName == 'modSmokeEnabled' then
                if selected == 2 and modshop.rgb ~= nil then
                    TyreSmokeColorPreview(modshop.vehicle, 'scr_recartheft', 'scr_wheel_burnout', modshop.rgb)
                else
                    return
                end
            end

            local props = {[args.modName] = args.modValue}

            if args.modName == 'modFrontWheels' then
                SetVehicleWheelType(modshop.vehicle, args.wheelType)
                props = {[args.modName] = args.modValue[secondary]}
            end

            Lib.GetControlOfEntity(modshop.vehicle)
            lib.setVehicleProperties(modshop.vehicle, props, false)
            
            if args.modName == 'modHorns' then 
                StartVehicleHorn(modshop.vehicle, 2000, 'HELDDOWN', false)
            end
        end,
        onSideScroll = function(selected, scrollIndex, args)
            PlaySoundFrontend(-1, Config.MenuSoundFrontend.AudioName, Config.MenuSoundFrontend.AudioRef, true)
            if args.modName == 'modXenon' then
                local toggle = scrollIndex == 2 and true or scrollIndex == 1 and false
                ToggleVehicleMod(modshop.vehicle, args.modType, toggle)
            elseif args.modName == 'xenonColor' then
                local xenonColor = args.modValue[scrollIndex]
                SetVehicleXenonLightsColor(modshop.vehicle, xenonColor)
            elseif args.modName == 'neonEnabled' then 
                local neonIndex, neonState = (selected - 1), scrollIndex == 2 and true or scrollIndex == 1 and false
                SetVehicleNeonLightEnabled(modshop.vehicle, neonIndex, neonState)
            elseif args.modName == 'neonColor' then
                local rgb = args.modValue[scrollIndex]
                SetVehicleNeonLightsColour(modshop.vehicle, rgb[1], rgb[2], rgb[3])
            elseif args.modName == 'modFrontWheels' or args.modName == 'modBackWheels' then
                SetVehicleWheelType(modshop.vehicle, args.wheelType)
                if args.rear ~= nil then 
                    SetVehicleMod(modshop.vehicle, Config.Mods['modBackWheels'].modType, args.modValue[scrollIndex])
                else
                    SetVehicleMod(modshop.vehicle, args.modType, args.modValue[scrollIndex])
                end
            elseif args.modName == 'wheelColor' then
                SetVehicleExtraColours(modshop.vehicle, args.pearlescent, args.modValue[scrollIndex])
            elseif args.modName == 'pearlescentColor' then 
                SetVehicleExtraColours(modshop.vehicle, args.modValue[scrollIndex], args.wheelColor)
            elseif args.modName == 'dashboardColor' then
                SetVehicleDashboardColor(modshop.vehicle, args.modValue[scrollIndex])
            elseif args.modName == 'interiorColor' then
                SetVehicleInteriorColor(modshop.vehicle, args.modValue[scrollIndex])
            elseif args.modName == 'primaryRespray' then
                if args.openDialogue == nil then
                    if GetIsVehiclePrimaryColourCustom(modshop.vehicle) then
                        modshop.customPrimary = {GetVehicleCustomPrimaryColour(modshop.vehicle)}
                        ClearVehicleCustomPrimaryColour(modshop.vehicle)
                    end
                    SetVehicleColours(modshop.vehicle, args.modValue[scrollIndex], args.default)
                end
            elseif args.modName == 'secondaryRespray' then 
                if args.openDialogue == nil then
                    if GetIsVehicleSecondaryColourCustom(modshop.vehicle) then
                        modshop.customSecondary = {GetVehicleCustomSecondaryColour(modshop.vehicle)}
                        ClearVehicleCustomSecondaryColour(modshop.vehicle)
                    end
                    SetVehicleColours(modshop.vehicle, args.default, args.modValue[scrollIndex])
                end
            elseif args.modName == 'modLivery' then
                if (args.old ~= nil and args.old == true) then 
                    SetVehicleLivery(modshop.vehicle, args.modValue[scrollIndex])
                end
            end
        end,
        onCheck = function(selected, checked, args)
            PlaySoundFrontend(-1, Config.MenuSoundFrontend.AudioName, Config.MenuSoundFrontend.AudioRef, true)
            if args.modName == 'neonEnabled' then 
                local neonIndex, neonState = (selected - 1), checked
                SetVehicleNeonLightEnabled(modshop.vehicle, neonIndex, neonState)
            end
        end,
        options = menuOptions
    }, function(selected, scrollIndex, args)
        if Config.Debug then
            print("install mod | ", selected, scrollIndex, args)
        end
        
        local newOptions, hasMoney, installMod = {}, false, true
        local alreadyInstalled = false

        if args.menuLabel ~= nil and type(args.menuLabel) == 'string' and string.match(args.menuLabel, Config.Installed) then 
            alreadyInstalled = true
            Core.Notification({
                title = '',
                message = Lang['mod_variant_already_installed'],
                type = 'inform'
            })
        end

        if args.values ~= nil and next(args.values) and scrollIndex ~= nil and args.values[scrollIndex] then
            if string.match(args.values[scrollIndex], Config.Installed) then
                alreadyInstalled = true
                Core.Notification({
                    title = '',
                    message = Lang['mod_variant_already_installed'],
                    type = 'inform'
                })
            end
        end

        if alreadyInstalled then
            local newOptions = GetUpdatedModOptions(modshop.vehicle, modshop.props, data.modName, data.modType, modshop.price, modshop.rgb, modshop.shopId)
            lib.setMenuOptions(modshop[data.modName].id, newOptions)
            lib.showMenu(modshop[data.modName].id, modshop[data.modName].index)
            SetVehicleDoorsShut(modshop.vehicle, true)
            return
        end

        -- check money
        local cache = {modName = args.modName, modType = args.modType, modLabel = args.labels or args.modLabel, modPrice = args.modPrice}
        if scrollIndex ~= nil then 
            cache.modLabel = args.labels ~= nil and args.labels[scrollIndex] or args.modLabel
            cache.modPrice = (args.modPrice ~= nil and next(args.modPrice)) and args.modPrice[scrollIndex] or args.modPrice
        end

        local fetchedMoney = false
        if cache.modPrice ~= nil then 
            Core.TriggerCallback('t1ger_lib:getMoney', function(money)
                if money >= cache.modPrice then 
                    hasMoney = true
                end
                fetchedMoney = true
            end, 'bank')    

            while fetchedMoney == false do 
                Wait(10)
            end
        else
            installMod = false
        end

        -- RGB Color Picker
        if args.openDialogue ~= nil and args.openDialogue == true then 
            if scrollIndex == 1 then 
                local input = lib.inputDialog(Lang['input_title_rgb_color'], {
                    {type = 'color', label = Lang['input_label_rgb_color'], default = '#ffffff', format = 'rgb'},
                })
                local rgb = lib.math.torgba(input[1])

                if args.modName == 'modSmokeEnabled' then
                    modshop.rgb = rgb
                    installMod = false
                elseif args.modName == 'primaryRespray' or args.modName == 'secondaryRespray' then
                    local colorPrimary, colorSecondary = GetVehicleColours(modshop.vehicle)
                    SetVehicleModKit(modshop.vehicle, 0)
    
                    if args.modName == 'primaryRespray' then
                        SetVehicleCustomPrimaryColour(modshop.vehicle, rgb.x, rgb.y, rgb.z)
                    elseif args.modName == 'secondaryRespray' then
                        SetVehicleCustomSecondaryColour(modshop.vehicle, rgb.x, rgb.y, rgb.z)
                    end
                    
                    if GetIsVehiclePrimaryColourCustom(modshop.vehicle) then
                        colorPrimary = { GetVehicleCustomPrimaryColour(modshop.vehicle) }
                    end

                    if GetIsVehicleSecondaryColourCustom(modshop.vehicle) then
                        colorSecondary = { GetVehicleCustomSecondaryColour(modshop.vehicle) }
                    end
    
                    SetVehicleColours(modshop.vehicle, colorPrimary, colorSecondary)
                    modshop.rgb = args.modName == 'primaryRespray' and { GetVehicleCustomPrimaryColour(modshop.vehicle) } or args.modName == 'secondaryRespray' and { GetVehicleCustomSecondaryColour(modshop.vehicle) }
                    installMod = false
                end

            elseif scrollIndex == 2 then 
                if modshop.rgb ~= nil and args.modValue ~= nil and hasMoney then
                    if args.modName == 'modSmokeEnabled' then
                        ToggleVehicleMod(modshop.vehicle, Config.Mods['modSmokeEnabled'].modType, true)
                        SetVehicleTyreSmokeColor(modshop.vehicle, args.modValue.x, args.modValue.y, args.modValue.z)
                        modshop.props['modSmokeEnabled'] = true
                    elseif args.modName == 'primaryRespray' or args.modName == 'secondaryRespray' then
                        if args.modName == 'primaryRespray' then
                            args.modValue = { GetVehicleCustomPrimaryColour(modshop.vehicle) }
                        elseif args.modName == 'secondaryRespray' then
                            args.modValue = { GetVehicleCustomSecondaryColour(modshop.vehicle) }
                        end
                    end 
                else
                    installMod = false
                end
            end
        end

        if args.modName == 'modSmokeEnabled' then 
            if selected == 1 or selected == 2 then
                installMod = false
            end
        end

        if hasMoney then
            if installMod == true then
                local priceAmount = cache.modPrice
                TriggerServerEvent('tuningsystem:server:removeMoney', priceAmount, 'bank')

                Lib.GetControlOfEntity(modshop.vehicle)
                local vehicleProps = lib.getVehicleProperties(modshop.vehicle)

                if data.modName == 'modSmokeEnabled' or data.modName == 'tyreSmokeColor' then
                    vehicleProps['modSmokeEnabled'] = true
                end

                Lib.GetControlOfEntity(modshop.vehicle)
                lib.setVehicleProperties(modshop.vehicle, vehicleProps, false)
                modshop.props = vehicleProps
                TriggerServerEvent('t1ger_lib:server:saveVehicleProperties', GetVehicleNumberPlateText(modshop.vehicle), lib.getVehicleProperties(modshop.vehicle))
                PlayUpgradeSound()
                modshop.rgb = nil
                SetVehicleDoorsShut(modshop.vehicle, true)

                lib.showMenu(modshop[data.category].id, modshop[data.category].index)
            else
                local newOptions = GetUpdatedModOptions(modshop.vehicle, modshop.props, data.modName, data.modType, modshop.price, modshop.rgb, modshop.shopId)
                lib.setMenuOptions(modshop[data.modName].id, newOptions)
                lib.showMenu(modshop[data.modName].id, modshop[data.modName].index)
                SetVehicleDoorsShut(modshop.vehicle, true)
            end
        else
            local newOptions = GetUpdatedModOptions(modshop.vehicle, modshop.props, data.modName, data.modType, modshop.price, modshop.rgb, modshop.shopId)
            lib.setMenuOptions(modshop[data.modName].id, newOptions)
            lib.showMenu(modshop[data.modName].id, modshop[data.modName].index)
            SetVehicleDoorsShut(modshop.vehicle, true)
        end

    end)

    local defaultIndex = 1
    for k,v in ipairs(menuOptions) do
        if v.args.modName == 'modFrontWheels' or v.args.modName == 'modBackWheels' then
            if modshop.props['wheels'] == v.args.wheelType then
                if v.args.rear ~= nil then 
                    defaultIndex = 1
                else
                    defaultIndex = v.args.menuIndex or 1
                end
            end
        elseif v.args.modName == 'primaryRespray' or v.args.modName == 'secondaryRespray' then 
            local category = GetVehicleColorCategory(modshop.vehicle, v.args.modType)
            if category == v.args.modLabel then
                defaultIndex = v.args.menuIndex 
            end
        else
            if modshop.props[v.args.modName] == v.args.modValue then 
                defaultIndex = k
            end
        end
    end

    lib.showMenu(newMenu, defaultIndex)
end


local modMenu = {}
local currentMod = {}
local modBill = {}

ViewSelectedModVariants = function(vehicle, data)

    local menuOptions = {}
    local vehiclePrice = currentMod.price

    if data.category == 'respray' then
        menuOptions = GetVehicleResprayOptions(vehicle, currentMod.props, data.modName, data.modType, vehiclePrice, nil, playerTunerId, data.itemId)
    elseif data.category == 'bodyworks' or data.category == 'chassis' or data.category == 'enginebay' or data.category == 'interior' then
        menuOptions = GetModVariantOptions(vehicle, currentMod.props, data.modName, data.modType, vehiclePrice, playerTunerId, data.itemId)
    elseif data.category == 'exterior' then 
        menuOptions = GetVehicleExteriorOptions(vehicle, currentMod.props, data.modName, data.modType, vehiclePrice, playerTunerId, data.itemId)
    elseif data.category == 'lights' then
        menuOptions = GetVehicleLightsOptions(vehicle, currentMod.props, data.modName, data.modType, vehiclePrice, playerTunerId, data.itemId)
    elseif data.category == 'wheels' then 
        menuOptions = GetVehicleWheelsOptions(vehicle, currentMod.props, data.modName, data.modType, vehiclePrice, currentMod.rgb, playerTunerId, data.itemId)
    end

    if next(menuOptions) == nil then
        return Core.Notification({
            title = '',
            message = Lang['vehicle_no_mod_category']:format(data.category),
            type = 'inform'
        }) 
    end

    browsingMods = true

    ModPreviewOpenDoors(menuOptions, vehicle, data.modName)

    if Config.Debug then
        print("modname: ", data.modName, "modtype: ", data.modType)
    end

    local newMenu = modMenu[data.category].id..'_'..data.modName
    lib.registerMenu({
        id = newMenu,
        title = data.title,
        position = Config.ModCategories[data.category].position,
        onClose = function(keyPressed)
            lib.showMenu(modMenu[data.category].id, modMenu[data.category].index)

            if currentMod.customPrimary ~= nil and currentMod.customPrimary or currentMod.customSecondary ~= nil and currentMod.customSecondary then 
                SetVehicleModKit(vehicle, 0)
                local colorPrimary, colorSecondary = GetVehicleColours(vehicle)
                if currentMod.customPrimary ~= nil and currentMod.customPrimary then
                    SetVehicleCustomPrimaryColour(vehicle, currentMod.customPrimary[1] * 1.0, currentMod.customPrimary[2] * 1.0, currentMod.customPrimary[3] * 1.0)
                    currentMod.props['primaryRespray'] = {currentMod.customPrimary[1] * 1.0, currentMod.customPrimary[2] * 1.0, currentMod.customPrimary[3] * 1.0}
                    currentMod.customPrimary = nil
                elseif currentMod.customSecondary ~= nil and currentMod.customSecondary then 
                    SetVehicleCustomSecondaryColour(vehicle, currentMod.customSecondary[1] * 1.0, currentMod.customSecondary[2] * 1.0, currentMod.customSecondary[3] * 1.0)
                    currentMod.props['secondaryRespray'] = {currentMod.customSecondary[1] * 1.0, currentMod.customSecondary[2] * 1.0, currentMod.customSecondary[3] * 1.0}
                    currentMod.customSecondary = nil
                end
                if GetIsVehiclePrimaryColourCustom(vehicle) then colorPrimary = { GetVehicleCustomPrimaryColour(vehicle) } end
                if GetIsVehicleSecondaryColourCustom(vehicle) then colorSecondary = { GetVehicleCustomSecondaryColour(vehicle) } end
                SetVehicleColours(vehicle, colorPrimary, colorSecondary)
            end

            Lib.GetControlOfEntity(vehicle)
            lib.setVehicleProperties(vehicle, currentMod.props, false)

            SetVehicleDoorsShut(vehicle, true)
            SetVehicleEngineOn(vehicle, false, true)
            browsingMods = false
        end,
        onSelected = function(selected, secondary, args)
            PlaySoundFrontend(-1, Config.MenuSoundFrontend.AudioName, Config.MenuSoundFrontend.AudioRef, true)
            modMenu[data.modName] = {id = newMenu, index = selected}

            if args.modName == 'neonEnabled' or args.modName == 'neonColor' or args.modName == 'modXenon' or args.modName == 'xenonColor' or args.modName == 'wheelColor' or args.modName == 'primaryRespray' or args.modName == 'secondaryRespray' or args.modName == 'pearlescentColor' or args.modName == 'dashboardColor' or args.modName == 'interiorColor' or (args.modName == 'modLivery' and args.old ~= nil)  then
                return
            end

            if args.modName == 'modSmokeEnabled' then
                if selected == 2 and currentMod.rgb ~= nil then
                    TyreSmokeColorPreview(vehicle, 'scr_recartheft', 'scr_wheel_burnout', currentMod.rgb)
                else
                    return
                end
            end

            local props = {[args.modName] = args.modValue}

            if args.modName == 'modFrontWheels' then
                SetVehicleWheelType(vehicle, args.wheelType)
                props = {[args.modName] = args.modValue[secondary]}
            end

            Lib.GetControlOfEntity(vehicle)
            lib.setVehicleProperties(vehicle, props, false)
            
            if args.modName == 'modHorns' then 
                StartVehicleHorn(vehicle, 2000, 'HELDDOWN', false)
            end
        end,
        onSideScroll = function(selected, scrollIndex, args)
            PlaySoundFrontend(-1, Config.MenuSoundFrontend.AudioName, Config.MenuSoundFrontend.AudioRef, true)
            if args.modName == 'modXenon' then
                local toggle = scrollIndex == 2 and true or scrollIndex == 1 and false
                ToggleVehicleMod(vehicle, args.modType, toggle)
            elseif args.modName == 'xenonColor' then
                local xenonColor = args.modValue[scrollIndex]
                SetVehicleXenonLightsColor(vehicle, xenonColor)
            elseif args.modName == 'neonEnabled' then 
                local neonIndex, neonState = (selected - 1), scrollIndex == 2 and true or scrollIndex == 1 and false
                SetVehicleNeonLightEnabled(vehicle, neonIndex, neonState)
            elseif args.modName == 'neonColor' then
                local rgb = args.modValue[scrollIndex]
                SetVehicleNeonLightsColour(vehicle, rgb[1], rgb[2], rgb[3])
            elseif args.modName == 'modFrontWheels' or args.modName == 'modBackWheels' then
                SetVehicleWheelType(vehicle, args.wheelType)
                if args.rear ~= nil then 
                    SetVehicleMod(vehicle, Config.Mods['modBackWheels'].modType, args.modValue[scrollIndex])
                else
                    SetVehicleMod(vehicle, args.modType, args.modValue[scrollIndex])
                end
            elseif args.modName == 'wheelColor' then
                SetVehicleExtraColours(vehicle, args.pearlescent, args.modValue[scrollIndex])
            elseif args.modName == 'pearlescentColor' then 
                SetVehicleExtraColours(vehicle, args.modValue[scrollIndex], args.wheelColor)
            elseif args.modName == 'dashboardColor' then
                SetVehicleDashboardColor(vehicle, args.modValue[scrollIndex])
            elseif args.modName == 'interiorColor' then
                SetVehicleInteriorColor(vehicle, args.modValue[scrollIndex])
            elseif args.modName == 'primaryRespray' then
                if args.openDialogue == nil then
                    if GetIsVehiclePrimaryColourCustom(vehicle) then
                        currentMod.customPrimary = {GetVehicleCustomPrimaryColour(vehicle)}
                        ClearVehicleCustomPrimaryColour(vehicle)
                    end
                    SetVehicleColours(vehicle, args.modValue[scrollIndex], args.default)
                end
            elseif args.modName == 'secondaryRespray' then 
                if args.openDialogue == nil then
                    if GetIsVehicleSecondaryColourCustom(vehicle) then
                        currentMod.customSecondary = {GetVehicleCustomSecondaryColour(vehicle)}
                        ClearVehicleCustomSecondaryColour(vehicle)
                    end
                    SetVehicleColours(vehicle, args.default, args.modValue[scrollIndex])
                end
            elseif args.modName == 'modLivery' then
                if (args.old ~= nil and args.old == true) then 
                    SetVehicleLivery(vehicle, args.modValue[scrollIndex])
                end
            end
        end,
        onCheck = function(selected, checked, args)
            PlaySoundFrontend(-1, Config.MenuSoundFrontend.AudioName, Config.MenuSoundFrontend.AudioRef, true)
            if args.modName == 'neonEnabled' then 
                local neonIndex, neonState = (selected - 1), checked
                SetVehicleNeonLightEnabled(vehicle, neonIndex, neonState)
            end
        end,
        options = menuOptions
    }, function(selected, scrollIndex, args)
        if Config.Debug then
            print("install mod | ", selected, scrollIndex, args)
        end

        local newOptions, hasMoney, installMod = {}, false, true
        local alreadyInstalled = false

        if args.menuLabel ~= nil and type(args.menuLabel) == 'string' and string.match(args.menuLabel, Config.Installed) then 
            alreadyInstalled = true
            Core.Notification({
                title = '',
                message = Lang['mod_variant_already_installed'],
                type = 'inform'
            }) 
        end

        if args.values ~= nil and next(args.values) and scrollIndex ~= nil and args.values[scrollIndex] then
            if string.match(args.values[scrollIndex], Config.Installed) then
                alreadyInstalled = true
                Core.Notification({
                    title = '',
                    message = Lang['mod_variant_already_installed'],
                    type = 'inform'
                }) 
            end
        end

        if alreadyInstalled then 
            local newOptions = GetUpdatedModOptions(vehicle, currentMod.props, data.modName, data.modType, vehiclePrice, currentMod.rgb, playerTunerId, data.itemId)
            lib.setMenuOptions(modMenu[data.modName].id, newOptions)
            lib.showMenu(modMenu[data.modName].id, modMenu[data.modName].index)
            return
        end

        -- check money
        local cache = {modName = args.modName, modType = args.modType, modLabel = args.labels or args.modLabel, modPrice = args.modPrice}
        if scrollIndex ~= nil then 
            cache.modLabel = args.labels ~= nil and args.labels[scrollIndex] or args.modLabel
            cache.modPrice = (args.modPrice ~= nil and next(args.modPrice)) and args.modPrice[scrollIndex] or args.modPrice
        end

        local fetchedMoney = false
        if cache.modPrice ~= nil then
            
            if Config.PayModWithShopAccount == true then
                Core.TriggerCallback('tuningsystem:server:getAccount', function(account)
                    if account >= cache.modPrice then 
                        hasMoney = true
                    end
                    fetchedMoney = true
                end, playerTunerId)
            else
                Core.TriggerCallback('t1ger_lib:getMoney', function(money)
                    if money >= cache.modPrice then 
                        hasMoney = true
                    end
                    fetchedMoney = true
                end, 'bank')
            end

            while fetchedMoney == false do 
                Wait(10)
            end
        else
            installMod = false
        end

        SetVehicleEngineOn(vehicle, false, true)

        -- RGB Color Picker
        if args.openDialogue ~= nil and args.openDialogue == true then 
            if scrollIndex == 1 then 
                local input = lib.inputDialog(Lang['input_title_rgb_color'], {
                    {type = 'color', label = Lang['input_label_rgb_color'], default = '#ffffff', format = 'rgb'},
                })
                local rgb = lib.math.torgba(input[1])

                if args.modName == 'modSmokeEnabled' then
                    currentMod.rgb = rgb
                    installMod = false
                elseif args.modName == 'primaryRespray' or args.modName == 'secondaryRespray' then
                    local colorPrimary, colorSecondary = GetVehicleColours(vehicle)
                    SetVehicleModKit(vehicle, 0)
    
                    if args.modName == 'primaryRespray' then
                        SetVehicleCustomPrimaryColour(vehicle, rgb.x, rgb.y, rgb.z)
                    elseif args.modName == 'secondaryRespray' then
                        SetVehicleCustomSecondaryColour(vehicle, rgb.x, rgb.y, rgb.z)
                    end
                    
                    if GetIsVehiclePrimaryColourCustom(vehicle) then
                        colorPrimary = { GetVehicleCustomPrimaryColour(vehicle) }
                    end

                    if GetIsVehicleSecondaryColourCustom(vehicle) then
                        colorSecondary = { GetVehicleCustomSecondaryColour(vehicle) }
                    end
    
                    SetVehicleColours(vehicle, colorPrimary, colorSecondary)
                    currentMod.rgb = args.modName == 'primaryRespray' and { GetVehicleCustomPrimaryColour(vehicle) } or args.modName == 'secondaryRespray' and { GetVehicleCustomSecondaryColour(vehicle) }
                    installMod = false
                end

            elseif scrollIndex == 2 then 
                if currentMod.rgb ~= nil and args.modValue ~= nil and hasMoney then
                    if args.modName == 'modSmokeEnabled' then
                        ToggleVehicleMod(vehicle, Config.Mods['modSmokeEnabled'].modType, true)
                        SetVehicleTyreSmokeColor(vehicle, args.modValue.x, args.modValue.y, args.modValue.z)
                        currentMod.props['modSmokeEnabled'] = true
                    elseif args.modName == 'primaryRespray' or args.modName == 'secondaryRespray' then
                        if args.modName == 'primaryRespray' then
                            args.modValue = { GetVehicleCustomPrimaryColour(vehicle) }
                        elseif args.modName == 'secondaryRespray' then
                            args.modValue = { GetVehicleCustomSecondaryColour(vehicle) }
                        end
                    end 
                else
                    installMod = false
                end
            end
        end

        if args.modName == 'modSmokeEnabled' then 
            if selected == 1 or selected == 2 then
                installMod = false
            end
        end

        if hasMoney then
            if installMod == true then
                Lib.GetControlOfEntity(vehicle)
                local vehicleProps = lib.getVehicleProperties(vehicle)
                if args.modName == 'modSmokeEnabled' or args.modName == 'tyreSmokeColor' then
                    vehicleProps['modSmokeEnabled'] = true
                end
                Lib.GetControlOfEntity(vehicle)
                lib.setVehicleProperties(vehicle, currentMod.props, false)
                if IsPedInAnyVehicle(player, true) then 
                    TaskLeaveVehicle(player, vehicle, 0)
                    Wait(800)
                end
                local installCallback = ModInstallAnimation(vehicle, args, scrollIndex)
                if installCallback == true then
                    local priceAmount = cache.modPrice
                    if Config.PayModWithShopAccount == true then 
                        TriggerServerEvent('tuningsystem:server:removeAccountMoney', playerTunerId, priceAmount)
                    else
                        TriggerServerEvent('tuningsystem:server:removeMoney', priceAmount, 'bank')
                    end
                    TriggerServerEvent('t1ger_lib:server:removeItem', Config.Items['mods'][data.itemId].name, 1)

                    if (args.modName == 'primaryRespray' or args.modName == 'secondaryRespray') and args.openDialogue ~= nil and args.openDialogue == true then
                        SetVehicleModKit(vehicle, 0)
                        local colorPrimary, colorSecondary = GetVehicleColours(vehicle)
                        if args.modName == 'primaryRespray' then
                            SetVehicleCustomPrimaryColour(vehicle, currentMod.rgb[1] * 1.0, currentMod.rgb[2] * 1.0, currentMod.rgb[3] * 1.0)
                        elseif args.modName == 'secondaryRespray' then 
                            SetVehicleCustomSecondaryColour(vehicle, currentMod.rgb[1] * 1.0, currentMod.rgb[2] * 1.0, currentMod.rgb[3] * 1.0)
                        end
                        vehicleProps[args.modName] = {currentMod.rgb[1] * 1.0, currentMod.rgb[2] * 1.0, currentMod.rgb[3] * 1.0}
                        if GetIsVehiclePrimaryColourCustom(vehicle) then colorPrimary = { GetVehicleCustomPrimaryColour(vehicle) } end
                        if GetIsVehicleSecondaryColourCustom(vehicle) then colorSecondary = { GetVehicleCustomSecondaryColour(vehicle) } end
                        SetVehicleColours(vehicle, colorPrimary, colorSecondary)
                    end
                    Lib.GetControlOfEntity(vehicle)
                    lib.setVehicleProperties(vehicle, vehicleProps, false)
                    TriggerServerEvent('t1ger_lib:server:saveVehicleProperties', GetVehicleNumberPlateText(vehicle), lib.getVehicleProperties(vehicle))
                    local plate = GetVehicleNumberPlateText(vehicle)
                    if modBill[plate] ~= nil and next(modBill[plate]) then
                        table.insert(modBill[plate], {invoice = args.invoice, total = priceAmount, modName = args.modName, scrollIndex = scrollIndex})
                    else
                        modBill[plate] = {}
                        table.insert(modBill[plate], {invoice = args.invoice, total = priceAmount, modName = args.modName, scrollIndex = scrollIndex})
                    end
                    PlayUpgradeSound()
                    currentMod = {}
                    modMenu = {}
                else
                    local newOptions = GetUpdatedModOptions(vehicle, currentMod.props, data.modName, data.modType, vehiclePrice, currentMod.rgb, playerTunerId, data.itemId)
                    lib.setMenuOptions(modMenu[data.modName].id, newOptions)
                    lib.showMenu(modMenu[data.modName].id, modMenu[data.modName].index)
                end

            else
                local newOptions = GetUpdatedModOptions(vehicle, currentMod.props, data.modName, data.modType, vehiclePrice, currentMod.rgb, playerTunerId, data.itemId)
                lib.setMenuOptions(modMenu[data.modName].id, newOptions)
                lib.showMenu(modMenu[data.modName].id, modMenu[data.modName].index)
            end
        else
            Core.Notification({
                title = '',
                message = Lang['not_enough_money'],
                type = 'inform'
            }) 
            local newOptions = GetUpdatedModOptions(vehicle, currentMod.props, data.modName, data.modType, vehiclePrice, currentMod.rgb, playerTunerId, data.itemId)
            lib.setMenuOptions(modMenu[data.modName].id, newOptions)
            lib.showMenu(modMenu[data.modName].id, modMenu[data.modName].index)
        end

    end)

    local defaultIndex = 1
    for k,v in ipairs(menuOptions) do
        if v.args.modName == 'modFrontWheels' or v.args.modName == 'modBackWheels' then
            if currentMod.props['wheels'] == v.args.wheelType then
                if v.args.rear ~= nil then 
                    defaultIndex = 1
                else
                    defaultIndex = v.args.menuIndex or 1
                end
            end
        elseif v.args.modName == 'primaryRespray' or v.args.modName == 'secondaryRespray' then 
            local category = GetVehicleColorCategory(currentMod.vehicle, v.args.modType)
            if category == v.args.modLabel then
                defaultIndex = v.args.menuIndex 
            end
        else
            if currentMod.props[v.args.modName] == v.args.modValue then 
                defaultIndex = k
            end
        end
    end

    lib.showMenu(newMenu, defaultIndex)
end

ModInstallAnimation = function(vehicle, args, scrollIndex)

    local modName, installDone, installingMod, installCancel = args.modName, false, true, false

    local anim = Config.Mods[modName].anim.idle
    if anim.dict ~= nil then
        Lib.LoadAnim(anim.dict)
        TaskPlayAnim(player, anim.dict, anim.name, anim.blendIn, anim.blendOut, anim.duration, anim.flags, 0, 0, 0, 0)
    end

    Wait(250)

    local modObject, netId, pos, rot = CreateModObject(modName)
    AttachEntityToEntity(modObject, player, GetPedBoneIndex(player, 28422), pos.x, pos.y, pos.z, rot.x, rot.y, rot.z, true, true, false, true, 2, 1)

    local inAction = false

    local InstallVehicleMod = function(data, object, modName, idleAnim)
        local canInstall = GetVehicleModInstallPoint(data.entity, modName)
        if canInstall then
            local useSkillCheck = true
            local installAnim = Config.Mods[modName].anim.install
            if Config.Mods[modName].point ~= 'wheel' then
                TaskTurnPedToFaceEntity(player, data.entity, 1000)
            end
            Wait(1000)
            if installAnim.dict ~= nil then
                Lib.LoadAnim(installAnim.dict)
                TaskPlayAnim(player, installAnim.dict, installAnim.name, installAnim.blendIn, installAnim.blendOut, installAnim.duration, installAnim.flags, 0, 0, 0, 0)
                if modName == 'wheelColor' or modName == 'pearlescentColor' or modName == 'dashboardColor' or modName == 'interiorColor' or modName == 'primaryRespray' or modName == 'secondaryRespray' then
                    
                    local paintType = nil
                    useSkillCheck = false

                    if args.values ~= nil and next(args.values) then
                        paintType = args.labels[scrollIndex]:lower()
                    elseif args.openDialogue ~= nil and args.openDialogue == true and scrollIndex == 2 and currentMod.rgb ~= nil then 
                        paintType = 'custom'
                    end

                    for i = 1, 3 do 
                        SprayCanParticles('scr_recartheft', 'scr_wheel_burnout', paintType, currentMod.rgb)
                        Wait(1500)
                    end

                    RemoveNamedPtfxAsset('scr_recartheft')
                end
            end
            Wait(100)

            local success = {}, nil
            if Config.ModInstallSkillcheck.Enable then 
                if useSkillCheck then
                    success = lib.skillCheck(Config.ModInstallSkillcheck.Difficulty, Config.ModInstallSkillcheck.Inputs)
                end
            else
                success = true
            end
    
            if success then
                inAction = true
                Lib.RemoveLocalEntity(data.entity, {'tuningsystem:target:installMod_'..tostring(modName)}, Config.ModInstallTarget.Label)
                lib.hideTextUI()
                Wait(250)
                installingMod = false
                installDone = true
                ClearPedTasks(player)
                Wait(200)
                DeleteObject(object)
                Wait(500)
                SetVehicleDoorsShut(data.entity, false)
            else
                Wait(200)
                ClearPedTasks(player)
                if idleAnim.dict ~= nil then
                    TaskPlayAnim(player, idleAnim.dict, idleAnim.name, idleAnim.blendIn, idleAnim.blendOut, idleAnim.duration, idleAnim.flags, 0, 0, 0, 0)
                end
                Wait(500)
                --SetVehicleDoorsShut(data.entity, false)
            end
        else
            Core.Notification({
                title = '',
                message = Lang['move_closer_mod_interaction']:format(Config.Mods[modName].point),
                type = 'inform'
            })
        end
    end

    local IsNearVehicle = function(entity)
        local vehCoords = GetEntityCoords(entity)
        local vehDistance = #(coords - vehCoords)
        
        if vehDistance <= 5.0 then
            return true
        end
    
        return false
    end
    
    local CreateVehicleModTarget = function(vehicle, dist, object, modName, idleAnim)
        local target = {
            options = {
                {
                    name = 'tuningsystem:target:installMod_'..tostring(modName),
                    icon = Config.ModInstallTarget.Icon,
                    label = Config.ModInstallTarget.Label,
                    type = 'client',
                    canInteract = IsNearVehicle,
                    distance =  dist,
                    onSelect = function(data) 
                        InstallVehicleMod(data, object, modName, idleAnim)
                    end
                }
            },
            distance = dist,
            canInteract = IsNearVehicle,
        }
        Lib.AddLocalEntity(vehicle, target)
    end

    CreateVehicleModTarget(vehicle, 5.0, modObject, modName, anim)
    
    lib.showTextUI(Config.CancelInteraction.String)
    while modObject ~= nil and DoesEntityExist(modObject) do 
        Wait(0)
        if IsControlJustPressed(0, Config.CancelInteraction.Button) and not inAction then
            lib.hideTextUI()
            local netId = NetworkGetNetworkIdFromEntity(modObject)
            DeleteObject(modObject)
            ClearPedTasks(player)
            Lib.RemoveLocalEntity(vehicle, {'tuningsystem:target:installMod_'..tostring(modName)}, Config.ModInstallTarget.Label)
            installingMod = false
            installCancel = true
            installDone = true
        end
    end

    while not installDone do 
        Wait(500)
    end

    if installCancel then 
        return false 
    else
        return true
    end

end

ViewSelectedModCategory = function(vehicle, category, itemId)
    local menuOptions = {}

    for modName, mod in pairs(Config.Mods) do
        if mod.category ~= nil and mod.category == category then
            if DoesModExist(vehicle, modName) then
                local modLabel = GetVehicleModSlotName(vehicle, modName)
                menuOptions[#menuOptions + 1] = {
                    label = modLabel,
                    args = {title = modLabel, category = mod.category, modName = modName, modType = mod.modType, modPrice = mod.price, itemId = itemId}
                }
            end
        end
    end

    if next(menuOptions) == nil then
        return Core.Notification({
            title = '',
            message = Lang['vehicle_no_mod_category']:format(mod.category),
            type = 'inform'
        })
    end

    table.sort(menuOptions, function(a, b)
        return a.label < b.label
    end)

    lib.registerMenu({
        id = Config.ModCategories[category].id,
        title = Config.ModCategories[category].title,
        position = Config.ModCategories[category].position,
        onClose = function(keyPressed)
            Lib.GetControlOfEntity(vehicle)
            lib.setVehicleProperties(vehicle, currentMod.props, false)
            currentMod = {}
            modMenu = {}
        end,
        onSelected = function(selected, secondary, args)
            PlaySoundFrontend(-1, Config.MenuSoundFrontend.AudioName, Config.MenuSoundFrontend.AudioRef, true)
            modMenu[category] = {id = Config.ModCategories[category].id, index = selected}
        end,
        options = menuOptions
    }, function(selected, scrollIndex, args)
        ViewSelectedModVariants(vehicle, args)
    end)

    lib.showMenu(Config.ModCategories[category].id, 1)
end

RegisterNetEvent('tuningsystem:client:vehicleCustomization', function(itemId, itemData)
    if playerTunerId <= 0 then 
        return Core.Notification({
            title = '',
            message = Lang['not_hired_in_any_shops'],
            type = 'inform'
        })
    end

    local vehicle, closestDist = GetVehiclePedIsIn(player, false), 0
    if vehicle == nil or vehicle == 0 then 
        vehicle, closestDist = Lib.GetClosestVehicle(coords, 5.0, false)
    end

    if vehicle == nil or not DoesEntityExist(vehicle) then 
        return Core.Notification({
            title = '',
            message = Lang['no_vehicle_nearby'],
            type = 'inform'
        })
    end

    local engineHealth = GetVehicleEngineHealth(vehicle)
    local bodyHealth = GetVehicleBodyHealth(vehicle)
    if engineHealth ~= 1000.0 or bodyHealth ~= 1000.0 then
        return Core.Notification({
            title = '',
            message = Lang['veh_must_be_repaired_to_mod'],
            type = 'inform'
        })
    end

    local modCategory = itemData.id

    if Config.ModCategories[modCategory] == nil then
        return print("ERROR - No Config for this item: ", itemData.id, itemId)
    end

    SetVehicleModKit(vehicle, 0)
    if not DoesModCategoryExist(vehicle, modCategory) then 
        return Core.Notification({
            title = '',
            message = Lang['vehicle_no_mod_category']:format(modCategory),
            type = 'inform'
        })
    end

    Lib.GetControlOfEntity(vehicle)
    local vehicleProperties = lib.getVehicleProperties(vehicle)

    currentMod.props = vehicleProperties
    currentMod.vehicle = vehicle
    currentMod.price = Config.DefaultVehiclePrice
    
    Core.GetVehiclePrice(GetEntityModel(vehicle), function(modelValue)
        currentMod.price = modelValue > 0 and modelValue or Config.DefaultVehiclePrice
    end)

    ViewSelectedModCategory(currentMod.vehicle, modCategory, itemId)
end)

Citizen.CreateThread(function()
    while true do
        Wait(5)
        local sleep = true
        if browsingMods and currentMod ~= nil and currentMod.vehicle ~= nil then
            sleep = false
            if IsControlJustPressed(0, Config.PreviewControls.Hood) then -- numpad 4 // hood
                SetVehicleDoorOpen(currentMod.vehicle, 4, false)
            elseif IsControlJustPressed(0, Config.PreviewControls.Trunk) then -- numpad 5 // trunk
                SetVehicleDoorOpen(currentMod.vehicle, 5, false)
            elseif IsControlJustPressed(0, Config.PreviewControls.Doors) then -- numpad 6 // all normal doors
                for i = 0, 3, 1 do 
                    SetVehicleDoorOpen(currentMod.vehicle, i, false)
                end
            elseif IsControlJustPressed(0, Config.PreviewControls.Close) then -- numpad 9 // shut all doors
                SetVehicleDoorsShut(currentMod.vehicle, false)
            end
        end
        if sleep then 
            Wait(2000)
        end
    end
end)

local vehicleTarget = {}
local installingMod = false

vehicleTarget.hoodInteract = function(entity)
    local d1,d2 = GetModelDimensions(GetEntityModel(entity))
    local hoodCoords = GetOffsetFromEntityInWorldCoords(entity, 0.0, (d2.y + 0.2), 0.0)
    local hoodDistance = #(coords - hoodCoords)

    if hoodDistance < 0.9 and not installingPart then 
        return true
    end

    return false
end

vehicleTarget.options = {
    name = 'tuningsystem:examinePerformanceMods',
    event = 'tuningsystem:client:examinePerformanceMods',
    icon = Config.Performance.Target.icon,
    label = Config.Performance.Target.label,
    canInteract = vehicleTarget.hoodInteract,
}

if vehicleTarget ~= nil and next(vehicleTarget) ~= nil then 
    Lib.AddGlobalVehicle({options = {vehicleTarget.options}})
end

RegisterNetEvent('tuningsystem:client:examinePerformanceMods', function(args)
    local vehicle = args.entity
    local menuOptions = {}
    Lib.GetControlOfEntity(vehicle)
    local vehicleProperties = lib.getVehicleProperties(vehicle)

    for _,modName in pairs(Config.Performance.Mods) do
        local mod = Config.Mods[modName]
        if vehicleProperties[modName] ~= nil then
            local currentIndex = modName == 'modTurbo' and GetToggleModNumber(vehicleProperties, modName) or vehicleProperties[modName] 
            local modLabel = GetVehicleModVariantLabel(vehicle, modName, currentIndex)
            
            local metaOptions = {}
            if modName == 'modTurbo' then 
                local value = currentIndex == 0 and Lang['meta_upg_installed_no'] or currentIndex == 1 and Lang['meta_upg_installed_yes']
                table.insert(metaOptions, {label = Lang['meta_upg_installed'], value = value})
            else
                local modCount = GetNumVehicleMods(vehicle, mod.modType)
                local curMod = GetVehicleMod(vehicle, mod.modType)
                table.insert(metaOptions, {label = Lang['meta_installed_upgrade'], value = modLabel..' ['..(curMod + 1)..']'})
                table.insert(metaOptions, {label = Lang['meta_max_available_upgs'], value = modCount..' pcs.'})
            end

            local icon = ''
            for k,v in pairs(Config.Items['mods']) do
                if v.modName ~= nil and v.modName == modName then
                    icon = v.icon
                    break
                end
            end

            table.insert(menuOptions, {
                title = mod.label..' - '..modLabel,
                icon = icon,
                metadata = metaOptions
            })
        end
    end

    lib.registerContext({
        id = 'examine_performance_mods',
        title = Lang['title_cur_veh_upgrades'],
        options = menuOptions,
    })
    lib.showContext('examine_performance_mods')
end)

RegisterNetEvent('tuningsystem:client:vehiclePerformance', function(itemId, itemData)
    if playerTunerId <= 0 then 
        return Core.Notification({
            title = '',
            message = Lang['not_hired_in_any_shops'],
            type = 'inform'
        })
    end

    local vehicle, closestDist = GetVehiclePedIsIn(player, false), 0
    if vehicle == nil or vehicle == 0 then 
        vehicle, closestDist = Lib.GetClosestVehicle(coords, 5.0, false)
    end

    if vehicle == nil or not DoesEntityExist(vehicle) then 
        return Core.Notification({
            title = '',
            message = Lang['no_vehicle_nearby'],
            type = 'inform'
        })
    end
    
    local engineHealth = GetVehicleEngineHealth(vehicle)
    local bodyHealth = GetVehicleBodyHealth(vehicle)
    if engineHealth ~= 1000.0 or bodyHealth ~= 1000.0 then
        return Core.Notification({
            title = '',
            message = Lang['veh_must_be_repaired_to_mod'],
            type = 'inform'
        })
    end

    local vehiclePrice = Config.DefaultVehiclePrice
    Core.GetVehiclePrice(GetEntityModel(vehicle), function(modelValue)
        vehiclePrice = modelValue > 0 and modelValue or Config.DefaultVehiclePrice
    end)

    local modName = itemData.modName
    local modData = Config.Mods[modName]

    local menuOptions = {}
    Lib.GetControlOfEntity(vehicle)
    local vehicleProperties = lib.getVehicleProperties(vehicle)

    local InstallPerformanceMod = function(vehicle, itemId, modName, targetIndex, modPrice, mInvoice)
        local hasMoney, fetchedMoney = false, false
        if Config.PayModWithShopAccount == true then
            Core.TriggerCallback('tuningsystem:server:getAccount', function(account)
                print("tuner account: ", account)
                if account >= modPrice then 
                    hasMoney = true
                end
                fetchedMoney = true
            end, playerTunerId)
        else
            Core.TriggerCallback('t1ger_lib:getMoney', function(money)
                if money >= modPrice then 
                    hasMoney = true
                end
                fetchedMoney = true
            end, 'bank')
        end

        while fetchedMoney == false do 
            Wait(10)
        end

        if hasMoney == true then 
            if IsPedInAnyVehicle(player, true) then 
                TaskLeaveVehicle(player, vehicle, 0)
                Wait(800)
            end

            local installDone, installing, installCancel = false, true, false

            local anim = Config.Mods[modName].anim.idle
            if anim.dict ~= nil then
                Lib.LoadAnim(anim.dict)
                TaskPlayAnim(player, anim.dict, anim.name, anim.blendIn, anim.blendOut, anim.duration, anim.flags, 0, 0, 0, 0)
            end

            Wait(250)

            local modObject, netId, pos, rot = CreateModObject(modName)
            AttachEntityToEntity(modObject, player, GetPedBoneIndex(player, 28422), pos.x, pos.y, pos.z, rot.x, rot.y, rot.z, true, true, false, true, 2, 1)

            local inAction = false

            local InstallVehicleMod = function(data, object, modName, idleAnim)
                local canInstall = GetPerformanceModInstallPoint(data.entity, modName)
                if canInstall then

                    local installAnim = Config.Mods[modName].anim.install
                    if Config.Mods[modName].point ~= 'wheel' then
                        if Config.Mods[modName].point ~= 'vehicle' then
                            SetVehicleDoorOpen(data.entity, 4, false)
                        end
                        TaskTurnPedToFaceEntity(player, data.entity, 1000)
                    end
                    Wait(1000)
                    if installAnim.dict ~= nil then
                        Lib.LoadAnim(installAnim.dict)
                        TaskPlayAnim(player, installAnim.dict, installAnim.name, installAnim.blendIn, installAnim.blendOut, installAnim.duration, installAnim.flags, 0, 0, 0, 0)
                    end
                    Wait(100)
        
                    local success = {}, nil
                    if Config.Performance.Skillcheck.enable then 
                        success = lib.skillCheck(Config.Performance.Skillcheck.difficulty, Config.Performance.Skillcheck.inputs)
                    else
                        success = true
                    end
            
                    if success then
                        local priceAmount = modPrice
                        if Config.PayModWithShopAccount == true then 
                            TriggerServerEvent('tuningsystem:server:removeAccountMoney', playerTunerId, priceAmount)
                        else
                            TriggerServerEvent('tuningsystem:server:removeMoney', priceAmount, 'bank')
                        end
                        TriggerServerEvent('t1ger_lib:server:removeItem', Config.Items['mods'][itemId].name, 1)
                        inAction = true
                        Lib.RemoveLocalEntity(data.entity, {'tuningsystem:target:installMod_'..tostring(modName)}, Config.ModInstallTarget.Label)
                        lib.hideTextUI()
                        Wait(250)
                        installingMod = false
                        installDone = true
                        ClearPedTasks(player)
                        Wait(200)
                        DeleteObject(object)
                        local props = {}
                        props[modName] = targetIndex
                        PlayUpgradeSound()
                        Lib.GetControlOfEntity(data.entity)
                        lib.setVehicleProperties(data.entity, props, false)
                        local plate = GetVehicleNumberPlateText(data.entity)
                        TriggerServerEvent('t1ger_lib:server:saveVehicleProperties', plate, lib.getVehicleProperties(data.entity))
                        if modBill[plate] ~= nil and next(modBill[plate]) then
                            table.insert(modBill[plate], {invoice = mInvoice, total = priceAmount, modName = modName})
                        else
                            modBill[plate] = {}
                            table.insert(modBill[plate], {invoice = mInvoice, total = priceAmount, modName = modName})
                        end
                        Wait(500)
                        SetVehicleDoorsShut(data.entity, false)
                    else
                        Wait(200)
                        ClearPedTasks(player)
                        if idleAnim.dict ~= nil then
                            TaskPlayAnim(player, idleAnim.dict, idleAnim.name, idleAnim.blendIn, idleAnim.blendOut, idleAnim.duration, idleAnim.flags, 0, 0, 0, 0)
                        end
                        Wait(500)
                        SetVehicleDoorsShut(data.entity, false)
                    end
                else
                    Core.Notification({
                        title = '',
                        message = Lang['move_closer_mod_interaction']:format(modData.point),
                        type = 'inform'
                    })
                end
            end
                
            local IsNearVehicle = function(entity)
                local vehCoords = GetEntityCoords(entity)
                local vehDistance = #(coords - vehCoords)
                
                if vehDistance <= 5.0 then
                    return true
                end
            
                return false
            end
            
            local CreateVehicleModTarget = function(vehicle, dist, object, modName, idleAnim)
                local target = {
                    options = {
                        {
                            name = 'tuningsystem:target:installMod_'..tostring(modName),
                            icon = Config.ModInstallTarget.Icon,
                            label = Config.ModInstallTarget.Label,
                            type = 'client',
                            canInteract = IsNearVehicle,
                            distance =  dist,
                            onSelect = function(data) 
                                InstallVehicleMod(data, object, modName, idleAnim)
                            end
                        }
                    },
                    distance = dist,
                    canInteract = IsNearVehicle,
                }
                Lib.AddLocalEntity(vehicle, target)
            end

            CreateVehicleModTarget(vehicle, 5.0, modObject, modName, anim)
            
            lib.showTextUI(Config.CancelInteraction.String)
            while modObject ~= nil and DoesEntityExist(modObject) do 
                Wait(0)
                if IsControlJustPressed(0, Config.CancelInteraction.Button) and not inAction then
                    lib.hideTextUI()
                    local netId = NetworkGetNetworkIdFromEntity(modObject)
                    DeleteObject(modObject)
                    ClearPedTasks(player)
                    Lib.RemoveLocalEntity(vehicle, {'tuningsystem:target:installMod_'..tostring(modName)}, Config.ModInstallTarget.Label)
                    installingMod = false
                    installCancel = true
                    installDone = true
                end
            end

            while not installDone do 
                Wait(500)
            end

            if installCancel then 
                --TriggerServerEvent('t1ger_lib:server:addItem', Config.Items['mods'][itemId].name, 1)
                --TriggerServerEvent('tuningsystem:server:addMoney', modPrice, 'bank')
                return false 
            else
                return true
            end
        else
            Core.Notification({
                title = '',
                message = Lang['insufficient_funds'],
                type = 'error'
            })
        end
    end

    if modName == 'modTurbo' then
        local currentIndex = GetToggleModNumber(vehicleProperties, modName)

        for index = 0, 1, 1 do
            local modLabel = GetVehicleModVariantLabel(vehicle, modName, index)
            local modPrice = GetVehicleModVariantPrice(vehicle, modName, index, vehiclePrice)

            local defaultPrice = modPrice + Config.Items['mods'][itemId].price
            local laborFee = Config.Shops[playerTunerId].laborFee or Config.LaborFee.Default
            local calculatedPrice = defaultPrice + laborFee
            local finalPrice = calculatedPrice

            local invoice = {modPrice = modPrice, defaultPrice = defaultPrice, laborFee = laborFee, calculatedPrice = calculatedPrice, finalPrice = finalPrice, variantLabel = modLabel, modLabel = Config.Mods[modName].label}

            local meta_data = {
                {label = Lang['meta_mod_part_acquisition'], value = GetFormattedPrice(defaultPrice)},
                {label = Lang['meta_mod_labor_fee'], value = GetFormattedPrice(laborFee)},
            }

            local disable = false

            local menuLabel = modLabel..' - '..GetFormattedPrice(finalPrice)
            if currentIndex == index then
                menuLabel = modLabel..' - '..Config.Installed
                disable = true
            end

            table.insert(menuOptions, {
                title = menuLabel,
                icon = itemData.icon,
                disabled = disable,
                metadata = meta_data,
                onSelect = function()
                    lib.hideContext()
                    InstallPerformanceMod(vehicle, itemId, modName, index, finalPrice, invoice)
                end
            })
        end
    else
        local modVariants = GetVehicleModVariants(vehicle, modName, modData.modType, vehiclePrice)
        for k,v in ipairs(modVariants) do 
            local modPrice = v.modPrice
            local defaultPrice = modPrice + Config.Items['mods'][itemId].price
            local laborFee = Config.Shops[playerTunerId].laborFee or Config.LaborFee.Default
            local calculatedPrice = defaultPrice + laborFee
            local finalPrice = calculatedPrice

            local invoice = {modPrice = modPrice, defaultPrice = defaultPrice, laborFee = laborFee, calculatedPrice = calculatedPrice, finalPrice = finalPrice, variantLabel = v.modLabel, modLabel = Config.Mods[modName].label}

            local meta_data = {
                {label = Lang['meta_mod_part_acquisition'], value = GetFormattedPrice(defaultPrice)},
                {label = Lang['meta_mod_labor_fee'], value = GetFormattedPrice(laborFee)},
            }

            local menuTitle = v.modLabel..' - '..GetFormattedPrice(finalPrice)
            local disable = false
            if vehicleProperties[modName] ~= nil and vehicleProperties[modName] == v.modValue then
                menuTitle = v.modLabel..' - '..Config.Installed
                disable = true
            end
            table.insert(menuOptions, {
                title = menuTitle,
                icon = itemData.icon,
                disabled = disable,
                metadata = meta_data,
                onSelect = function()
                    lib.hideContext()
                    InstallPerformanceMod(vehicle, itemId, modName, v.modValue, finalPrice, invoice)
                end
            })
        end
    end

    if next(menuOptions) == nil then 
        return Core.Notification({
            title = '',
            message = Lang['no_variants_for_mod']:format(modName),
            type = 'inform'
        }) 
    end
    
    lib.registerContext({
        id = 'vehicle_performance_upgrades',
        title = itemData.label,
        options = menuOptions,
    })
    lib.showContext('vehicle_performance_upgrades')
end)


if Config.Menu['tuner'].command.enable then
    RegisterCommand(Config.Menu['tuner'].command.string, function()
        TuningActionMenu()
    end)
end

if Config.Menu['tuner'].keybind.enable then
    RegisterCommand('TuningActionMenu', function()
        TuningActionMenu()
    end, false)
    RegisterKeyMapping('TuningActionMenu', 'Open Tuning Action Menu', 'keyboard', Config.Menu['tuner'].keybind.defaultMapping)
end

TuningActionMenu = function()

    if tuner_shops == nil or next(tuner_shops) == nil then 
        return 
    end

    if playerTunerId <= 0 or tuner_shops[playerTunerId] == nil or next(tuner_shops[playerTunerId]) == nil then
        return
    end

    if Core.GetJob().name ~= Config.Shops[playerTunerId].job.name then 
        return 
    end

    local options = {
        {title = Lang['title_billing'], icon = 'file-invoice-dollar', arrow = true, event = 'tuningsystem:client:billing'},
        {title = Lang['title_npc_jobs'], icon = 'comment-dots', arrow = true, event = 'tuningsystem:client:jobs_menu'},
        {title = Lang['title_repair_vehicle'], icon = 'car', onSelect = function()
            local vehicle, closestDist = GetVehiclePedIsIn(player, false), 0
            if vehicle == nil or vehicle == 0 then 
                vehicle, closestDist = Lib.GetClosestVehicle(coords, 5.0, false)
            end
            if vehicle == nil or not DoesEntityExist(vehicle) then 
                TuningActionMenu()
                return Core.Notification({
                    title = '',
                    message = Lang['no_vehicle_nearby'],
                    type = 'inform'
                })
            end
            TaskTurnPedToFaceEntity(player, vehicle, 1000)
            Wait(1000)
            TaskStartScenarioInPlace(player, 'WORLD_HUMAN_WELDING', 0, true)
            Wait(3000)
            ClearPedTasks(player)
            SetVehicleEngineHealth(vehicle, 1000.0)
            SetVehicleBodyHealth(vehicle, 1000.0)
            SetVehicleFixed(vehicle)
            RepairSound()
        end},
    }

    lib.registerContext({
        id = 'player_tuning_menu',
        title = Lang['title_tuning_player'],
        options = options
    })
    lib.showContext('player_tuning_menu')
end

RegisterNetEvent('tuningsystem:client:billing', function()
    local menuOptions = {
        {
            title = Lang['title_view_bills'],
            icon = 'receipt',
            arrow = true,
            event = 'tuningsystem:client:viewBills'
        },
        {
            title = Lang['title_create_bill'],
            icon = 'file-invoice-dollar',
            arrow = true,
            onSelect = function()
                local optionsArray = {}

                local players = Lib.GetPlayersInArea(GetEntityCoords(PlayerPedId()), Config.RecruitMember.Distance)

                for i = 1, #players do
                    local playerId = GetPlayerServerId(players[i])
                    local fullName = Core.GetFullName(playerId)
                    local optionLabel = fullName..' ['..playerId..']'
                    if Config.RecruitMember.ShowFullName == false then
                        optionLabel = '['..playerId..']'
                    end
                    table.insert(optionsArray, {label = optionLabel, value = playerId})
                end

                if Config.Debug then
                    table.insert(optionsArray, {label = 'T1GER Scripts [1]', value = 1})
                end

                if next(optionsArray) == nil then
                    Core.Notification({
                        title = '',
                        message = Lang['no_players_nearby'],
                        type = 'inform'
                    })
                    return lib.showContext('billing_menu')
                end

                local input = lib.inputDialog(Lang['title_create_bill'], {
                    {type = 'select', label = Lang['input_label_bill_player'], description = Lang['input_desc_bill_player'], icon = 'person', options = optionsArray, required = true},
                    {type = 'number', label = Lang['input_label_bill_amount'], icon = 'dollar-sign', required = true, min = 1},
                    {type = 'textarea', label = Lang['input_label_bill_note'], description = Lang['input_desc_bill_note'], icon = 'note', autosize = true, required = true},
                    {type = 'date', label = Lang['input_label_bill_date'], icon = 'calendar', default = true, disabled = true},
                    {type = 'time', label = Lang['input_label_bill_time'], icon = 'clock', format = 24, default = true, disabled = true},
                })

                if not input or input == nil then
                    return TuningActionMenu()
                end

                TriggerServerEvent('tuningsystem:server:createBill', playerTunerId, input)
                if not Config.Debug then
                    Wait(100)
                    TriggerEvent('tuningsystem:client:billing')
                end
            end,
        },
    }

    if modBill ~= nil and next(modBill) then
        menuOptions[#menuOptions + 1] = {
            title = Lang['title_generate_bill'],
            icon = 'receipt',
            arrow = true,
            event = 'tuningsystem:client:generateBill'
        }
    end

    lib.registerContext({
        id = 'billing_menu',
        title = Lang['title_billing'],
        canClose = false,
        onExit = function()
            TuningActionMenu()
        end,
        menu = 'player_tuning_menu',
        options = menuOptions,
    })
    lib.showContext('billing_menu')
end)

RegisterNetEvent('tuningsystem:client:viewBills', function()
    local menuOptions = {}
    Core.TriggerCallback('tuningsystem:server:getBills', function(results)
        if next(results) ~= nil then
            for k,v in pairs(results) do
                table.insert(menuOptions, {
                    title = Lang['title_bill_overview']:format(v.id, Lib.CommaValue(v.amount)),
                    icon = 'file-invoice-dollar',
                    description = v.note,
                    metadata = {
                        {label = Lang['meta_bill_ref'], value = v.id},
                        {label = Lang['meta_bill_shop'], value = v.shop},
                        {label = Lang['meta_bill_sender'], value = v.sender.name},
                        {label = Lang['meta_bill_receiver'], value = v.receiver.name},
                        {label = Lang['meta_bill_amount'], value = '$'..v.amount},
                        {label = Lang['meta_bill_date'], value = v.date},
                        {label = Lang['meta_bill_time'], value = v.time},
                    },
                })
            end
            lib.registerContext({
                id = 'view_bills',
                title = Lang['title_view_bills'],
                onExit = function()
                    TuningActionMenu()
                end,
                menu = 'billing_menu',
                options = menuOptions,
            })
            lib.showContext('view_bills')
        else
            Core.Notification({
                title = '',
                message = Lang['no_bills_to_show'],
                type = 'inform'
            })
            return lib.showContext('billing_menu')
        end
    end, playerTunerId)
end)

RegisterNetEvent('tuningsystem:client:sendBill')
AddEventHandler('tuningsystem:client:sendBill', function(shopId, input, playerSrc)
    lib.registerContext({
        id = 'pay_bill',
        title = Lang['title_bill_respond']:format(input[2]),
        canClose = false,
        options = {
            {
                title = Lang['title_yes'],
                icon = 'check',
                onSelect = function()
                    TriggerServerEvent('tuningsystem:server:payBill', shopId, input, true, playerSrc)
                    Core.Notification({
                        title = '',
                        message = Lang['you_paid_a_bill']:format(input[2], Config.Shops[shopId].name),
                        type = 'inform'
                    })
                end
            },
            {
                title = Lang['title_no'],
                icon = 'ban',
                onSelect = function()
                    TriggerServerEvent('tuningsystem:server:payBill', shopId, input, false, playerSrc)
                    Core.Notification({
                        title = '',
                        message = Lang['you_declined_bill']:format(input[2], Config.Shops[shopId].name),
                        type = 'inform'
                    })
                end
            },
        },
    })
    lib.showContext('pay_bill')
end)

RegisterNetEvent('tuningsystem:client:generateBill', function()
    local menuOptions = {}
    local billAmount = 0

    for plate,installations in pairs(modBill) do
        local meta_data = {}
        for k,v in pairs(installations) do
            local invoice = v.invoice
            if v.scrollIndex ~= nil then 
                invoice = v.invoice[v.scrollIndex]
            end
            billAmount = billAmount + invoice.finalPrice
            meta_data[#meta_data+1] = {label = invoice.modLabel, value = invoice.variantLabel..' - '..GetFormattedPrice(invoice.finalPrice)}
        end
        table.insert(menuOptions, {
            title = Lang['title_bill_plate_x']:format(plate, GetFormattedPrice(billAmount)),
            icon = 'car',
            args = {plate = plate, installations = installations, billAmount = billAmount},
            metadata = meta_data,
            arrow = true,
            event = 'tuningsystem:client:selectPlate'
        })
    end
    lib.registerContext({
        id = 'generate_bill',
        title = Lang['title_select_bill_plate'],
        menu = 'billing_menu',
        options = menuOptions,
    })
    lib.showContext('generate_bill')
end)

RegisterNetEvent('tuningsystem:client:selectPlate', function(args)
    local menuOptions = {
        {
            title = Lang['title_bill_send_bill']:format(GetFormattedPrice(args.billAmount)),
            description = Lang['desc_send_bill'],
            onSelect = function()
                local optionsArray = {}
                local players = Lib.GetPlayersInArea(GetEntityCoords(PlayerPedId()), Config.RecruitMember.Distance)

                for i = 1, #players do
                    local playerId = GetPlayerServerId(players[i])
                    local fullName = Core.GetFullName(playerId)
                    local optionLabel = fullName..' ['..playerId..']'
                    if Config.RecruitMember.ShowFullName == false then
                        optionLabel = '['..playerId..']'
                    end
                    table.insert(optionsArray, {label = optionLabel, value = playerId})
                end

                if Config.Debug then
                    table.insert(optionsArray, {label = 'T1GER Scripts [1]', value = 1})
                end

                if next(optionsArray) == nil then
                    Core.Notification({
                        title = '',
                        message = Lang['no_players_nearby'],
                        type = 'inform'
                    })
                    return lib.showContext('generate_bill')
                end
                
                local input = lib.inputDialog(Lang['title_generate_bill'], {
                    {type = 'select', label = Lang['input_label_bill_player'], description = Lang['input_desc_bill_player'], icon = 'person', options = optionsArray, required = true},
                    {type = 'input', label = Lang['input_label_bill_amount'], icon = 'dollar-sign', default = Lib.CommaValue(args.billAmount), disabled = true},
                    {type = 'date', label = Lang['input_label_bill_date'], icon = 'calendar', default = true, disabled = true},
                    {type = 'time', label = Lang['input_label_bill_time'], icon = 'clock', format = 24, default = true, disabled = true},
                })

                if not input or input == nil then
                    return lib.showContext('generate_bill')
                end

                TriggerServerEvent('tuningsystem:server:generateBill', playerTunerId, input[1], args.plate, args.billAmount, args.installations)
                if not Config.Debug then
                    Wait(100)
                    TriggerEvent('tuningsystem:client:billing')
                end
            end,
        },
        {title = '_', disabled = true, readOnly = true},
    }

    for k,v in pairs(args.installations) do
        local invoice = v.invoice
        if v.scrollIndex ~= nil then 
            invoice = v.invoice[v.scrollIndex]
        end
        local meta_data = {
            {label = Lang['meta_mod_name'], value = v.modName},
            {label = Lang['meta_mod_label'], value = invoice.modLabel},
            {label = Lang['meta_mod_variant_label'], value = invoice.variantLabel},
            {label = Lang['meta_mod_total'], value = GetFormattedPrice(invoice.finalPrice)},
            {label = Lang['meta_mod_labor_fee'], value = GetFormattedPrice(invoice.laborFee)},
            {label = Lang['meta_mod_part_acquisition'], value = GetFormattedPrice(invoice.defaultPrice)},
        }
        menuOptions[#menuOptions + 1] = {
            title = Lang['title_bill_item_price_display']:format(invoice.variantLabel, GetFormattedPrice(invoice.finalPrice)),
            metadata = meta_data,
            readOnly = true,
        }
    end

    lib.registerContext({
        id = 'bill_selected_plate',
        title = Lang['title_bill_plate_overview']:format(args.plate),
        menu = 'generate_bill',
        options = menuOptions,
    })
    lib.showContext('bill_selected_plate')
end)

RegisterNetEvent('tuningsystem:client:sendGeneratedBill')
AddEventHandler('tuningsystem:client:sendGeneratedBill', function(shopId, plate, billAmount, installations, playerSrc)
    local menuOptions = {
        {
            title = Lang['title_bill_payment']:format(GetFormattedPrice(billAmount)),
            description = Lang['desc_pay_bill'],
            onSelect = function()
                local bill_note = ''
                for k,v in pairs(installations) do
                    local invoice = v.invoice
                    if v.scrollIndex ~= nil then 
                        invoice = v.invoice[v.scrollIndex]
                    end
                    local newLine = '\n• '..invoice.variantLabel..' ('..invoice.modLabel..')'..' - '..GetFormattedPrice(invoice.finalPrice)
                    bill_note = bill_note..newLine
                end
                TriggerServerEvent('tuningsystem:server:billPayment', shopId, plate, billAmount, installations, playerSrc, bill_note)
            end,
        },
        {title = '_', disabled = true, readOnly = true},
    }

    for k,v in pairs(installations) do
        local invoice = v.invoice
        if v.scrollIndex ~= nil then 
            invoice = v.invoice[v.scrollIndex]
        end
        local meta_data = {
            {label = Lang['meta_mod_name'], value = v.modName},
            {label = Lang['meta_mod_label'], value = invoice.modLabel},
            {label = Lang['meta_mod_variant_label'], value = invoice.variantLabel},
            {label = Lang['meta_mod_total'], value = GetFormattedPrice(invoice.finalPrice)},
            {label = Lang['meta_mod_labor_fee'], value = GetFormattedPrice(invoice.laborFee)},
            {label = Lang['meta_mod_part_acquisition'], value = GetFormattedPrice(invoice.defaultPrice)},
        }
        menuOptions[#menuOptions + 1] = {
            title = Lang['title_bill_item_price_display']:format(invoice.variantLabel, GetFormattedPrice(invoice.finalPrice)),
            metadata = meta_data,
            readOnly = true,
        }
    end

    lib.registerContext({
        id = 'bill_pay_selected_plate',
        title = Lang['title_bill_plate_overview']:format(plate),
        options = menuOptions,
    })
    lib.showContext('bill_pay_selected_plate')
end)
