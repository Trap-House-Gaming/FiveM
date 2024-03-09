QBCore = nil
PlayerData = {}

Citizen.CreateThread(function()
    while QBCore == nil do
        QBCore = exports['qb-core']:GetCoreObject()
        Citizen.Wait(1000)
    end
    while QBCore.Functions == nil do
        Citizen.Wait(0)
    end
    while QBCore.Functions.GetPlayerData() == nil do
        Citizen.Wait(0)
    end
    PlayerData = QBCore.Functions.GetPlayerData()
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerData.job = JobInfo
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    TriggerServerEvent("qb-clothes:loadPlayerSkin")
    PlayerData = QBCore.Functions.GetPlayerData()
end)

RegisterNetEvent('ak47_qb_clothing:notify')
AddEventHandler('ak47_qb_clothing:notify', function(msg)
    QBCore.Functions.Notify(msg)
end)

function onOpenSkinMenu()
    -- here you can place trigger to hide your hud
end

function onCloseSkinMenu()
    -- here you can place trigger to show your hud
end

local cutScenePlayed = false
function playCutScene()
    if not cutScenePlayed then
        cutScenePlayed = true
        
        --place your cutscene here
    end
end

function ShowHelpNotification(msg)
    BeginTextCommandDisplayHelp('STRING')
    AddTextComponentSubstringPlayerName(msg)
    EndTextCommandDisplayHelp(0, false, true, -1)
end

Citizen.CreateThread(function()
    for k, v in pairs (Config.Stores) do
        if v.blip.enable then
            local blip = AddBlipForCoord(v.coords)
            SetBlipSprite(blip, v.blip.sprite)
            SetBlipColour(blip, v.blip.color)
            SetBlipScale (blip, v.blip.size)
            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(v.name)
            EndTextCommandSetBlipName(blip)
        end
    end
    for i, v in pairs(Config.Salon) do
        if v.blip.enable then
            local blip = AddBlipForCoord(v.boss_action)
            SetBlipSprite(blip, v.blip.sprite)
            SetBlipColour(blip, v.blip.color)
            SetBlipScale (blip, v.blip.size)
            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(v.blip.name)
            EndTextCommandSetBlipName(blip)
        end
    end
    for i, v in pairs(Config.Tattoos) do
        if v.blip.enable then
            local blip = AddBlipForCoord(v.boss_action)
            SetBlipSprite(blip, v.blip.sprite)
            SetBlipColour(blip, v.blip.color)
            SetBlipScale (blip, v.blip.size)
            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(v.blip.name)
            EndTextCommandSetBlipName(blip)
        end
    end
end)

local inZone = false

if Config.UseTarget then
    CreateThread(function()
        for k, v in pairs(Config.Stores) do
            local opts = {
                action = function()
                    QBCore.Functions.TriggerCallback('ak47_qb_clothing:canBuyClothes', function(cb)
                        if cb then
                            QBCore.Functions.TriggerCallback('qb-clothing:server:getOutfits', function(result)
                                menu = {}
                                for j, k in pairs(v.container) do
                                    table.insert(menu, {menu = k.type, label = k.title, selected = j == 1, true, false})
                                end
                                if Config.StoreOutfitOption then
                                    table.insert(menu, {menu = "myOutfits", label = "My Outfits", selected = false, outfits = result})
                                end
                                openMenu(menu)
                            end)
                        end
                    end, v.price)
                end,
                icon = "fas fa-clothes-hanger",
                label = "Open Store",
            }

            exports['qb-target']:AddBoxZone('ClothingStore'..k, v.coords, v.length, v.width, {
                name = 'ClothingStore' .. k,
                debugPoly = Config.DebugPoly,
                minZ = v.coords.z-1,
                maxZ = v.coords.z+1,
            }, {
                options = {
                    {
                        type = "client",
                        action = opts.action,
                        icon = opts.icon,
                        label = opts.label,
                    },
                },
                distance = 3
            })
        end
        for k, v in pairs(Config.DressingRooms) do
            local action = function()
                if (not v.jobs and not v.gangs) or (PlayerData.job and v.jobs and v.jobs[PlayerData.job.name]) or (PlayerData.gang and v.gangs and v.gangs[PlayerData.gang.name]) then
                    local playerPed = PlayerPedId()
                    SetEntityCoords(playerPed, vector3(v.coords.x, v.coords.y, v.coords.z - 0.98))
                    SetEntityHeading(playerPed, v.coords.w)
                    getOutfits()
                else
                    TriggerEvent('ak47_qb_clothing:notify', 'Your are not allowed to use this!')
                end
            end

            exports['qb-target']:AddBoxZone('Dressing' .. k, v.coords, v.length, v.width, {
                name = 'Dressing'.. k,
                debugPoly = Config.DebugPoly,
                minZ = v.coords.z - 2,
                maxZ = v.coords.z + 2,
            }, {
                options = {
                    {
                        type = "client",
                        action = action,
                        icon = "fas fa-sign-in-alt",
                        label = "Clothing",
                    },
                },
                distance = 3
            })
        end
    end)
else
    Citizen.CreateThread(function()
        while true do
            local ped = PlayerPedId()
            local pos = GetEntityCoords(ped)
            local inRange = false
            for k, v in pairs(Config.Stores) do
                local dist = #(pos - v.coords)
                if dist < 30 then
                    if not creatingCharacter then
                        DrawMarker(2, Config.Stores[k].coords.x, Config.Stores[k].coords.y, Config.Stores[k].coords.z + 0.98, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.2, 0.2, 0.1, 255, 0, 0, 200, 0, 0, 0, 1, 0, 0, 0)
                    end
                    inRange = true
                end
            end
            if not inRange then
                Citizen.Wait(2000)
            end
            Citizen.Wait(0)
        end
    end)
    Citizen.CreateThread(function()
        while true do
            local ped = PlayerPedId()
            local pos = GetEntityCoords(ped)
            local inRange = false
            for k, v in pairs(Config.DressingRooms) do
                local dist = #(pos - vector3(v.coords.x, v.coords.y, v.coords.z))
                if dist < 30 then
                    if not creatingCharacter then
                        DrawMarker(2, v.coords.x, v.coords.y, v.coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.2, 0.2, 0.1, 255, 0, 0, 200, 0, 0, 0, 1, 0, 0, 0)
                    end
                    inRange = true
                end
            end
            if not inRange then
                Citizen.Wait(2000)
            end
            Citizen.Wait(0)
        end
    end)
    CreateThread(function()
        local zones = {}
        for i, v in pairs(Config.Stores) do
            zones[#zones+1] = BoxZone:Create(
                v.coords, v.length, v.width, {
                name = v.name..i,
                minZ = v.coords.z - 2,
                maxZ = v.coords.z + 2,
                debugPoly = Config.DebugPoly,
                data = v,
            })
        end

        local clothingCombo = ComboZone:Create(zones, {name = "clothingCombo", debugPoly = false})
        clothingCombo:onPlayerInOut(function(isPointInside, _, zone)
            if isPointInside then
                zoneName = zone.name
                inZone = true
                exports['qb-core']:DrawText('[E] - Open', 'left')
                local v = zone.data
                Citizen.CreateThread(function()
                    while inZone do
                        Citizen.Wait(0)
                        if IsControlJustPressed(0, 38) then
                            QBCore.Functions.TriggerCallback('ak47_qb_clothing:canBuyClothes', function(cb)
                                if cb then
                                    QBCore.Functions.TriggerCallback('qb-clothing:server:getOutfits', function(result)
                                        menu = {}
                                        for j, k in pairs(v.container) do
                                            table.insert(menu, {menu = k.type, label = k.title, selected = j == 1, true, false})
                                        end
                                        if Config.StoreOutfitOption then
                                            table.insert(menu, {menu = "myOutfits", label = "My Outfits", selected = false, outfits = result})
                                        end
                                        openMenu(menu)
                                    end)
                                end
                            end, v.price)
                            Citizen.Wait(1000)
                        end
                    end
                end)
            else
                inZone = false
                exports['qb-core']:HideText()
            end
        end)

        local zones = {}
        for i, v in pairs(Config.DressingRooms) do
            zones[#zones+1] = BoxZone:Create(
                v.coords, v.length, v.width, {
                name = 'DressingRooms'..i,
                minZ = v.coords.z - 2,
                maxZ = v.coords.z + 2,
                debugPoly = Config.DebugPoly,
                data = v,
            })
        end

        local clothingCombo = ComboZone:Create(zones, {name = "DressingRoomsCombo", debugPoly = Config.DebugPoly})
        clothingCombo:onPlayerInOut(function(isPointInside, _, zone)
            if isPointInside then
                zoneName = zone.name
                inZone = true
                exports['qb-core']:DrawText('[E] - Open', 'left')
                local v = zone.data
                Citizen.CreateThread(function()
                    while inZone do
                        Citizen.Wait(0)
                        if IsControlJustPressed(0, 38) then
                            if (not v.jobs and not v.gangs) or (PlayerData.job and v.jobs and v.jobs[PlayerData.job.name]) or (PlayerData.gang and v.gangs and v.gangs[PlayerData.gang.name]) then
                                QBCore.Functions.TriggerCallback('qb-clothing:server:getOutfits', function(result)
                                    local menu = {
                                        {menu = "myOutfits", label = "My Outfits", selected = true, outfits = result}
                                    }
                                    local gender = "male"
                                    if QBCore.Functions.GetPlayerData().charinfo.gender == 1 then gender = "female" end
                                    if Config.Outfits[PlayerData.job.name] and Config.Outfits[PlayerData.job.name][gender] and Config.Outfits[PlayerData.job.name][gender][PlayerData.job.grade.level] then
                                        table.insert(menu, {menu = "roomOutfits", label = "Presets", selected = false, outfits = Config.Outfits[PlayerData.job.name][gender][PlayerData.job.grade.level]})
                                    elseif PlayerData.gang and Config.Outfits[PlayerData.gang.name] and Config.Outfits[PlayerData.gang.name][gender] and Config.Outfits[PlayerData.gang.name][gender][PlayerData.gang.grade.level] then
                                        table.insert(menu, {menu = "roomOutfits", label = "Presets", selected = false, outfits = Config.Outfits[PlayerData.job.name][gender][PlayerData.job.grade.level]})
                                    end
                                    local playerPed = PlayerPedId()
                                    SetEntityCoords(playerPed, vector3(v.coords.x, v.coords.y, v.coords.z - 0.98))
                                    SetEntityHeading(playerPed, v.coords.w)
                                    openMenu(menu)
                                end)
                            else
                                TriggerEvent('ak47_qb_clothing:notify', 'Your job is not allowed to use this!')
                            end
                            Citizen.Wait(1000)
                        end
                    end
                end)
            else
                inZone = false
                exports['qb-core']:HideText()
            end
        end)
    end)
end

exports('openOutfit', getOutfits)
exports('getOutfits', getOutfits)

RegisterNetEvent('ak47_qb_clothing:openOutfit', function()
    getOutfits()
end)

RegisterNetEvent('qb-clothing:client:openOutfitMenu', function()
    getOutfits()
end)

function getOutfits()
    QBCore.Functions.TriggerCallback('qb-clothing:server:getOutfits', function(result)
        local menu = {
            {menu = "myOutfits", label = "My Outfits", selected = true, outfits = result}
        }
        local gender = "male"
        if QBCore.Functions.GetPlayerData().charinfo.gender == 1 then gender = "female" end
        if Config.Outfits[PlayerData.job.name] and Config.Outfits[PlayerData.job.name][gender] and Config.Outfits[PlayerData.job.name][gender][PlayerData.job.grade.level] then
            table.insert(menu, {menu = "roomOutfits", label = "Presets", selected = false, outfits = Config.Outfits[PlayerData.job.name][gender][PlayerData.job.grade.level]})
        elseif PlayerData.gang and Config.Outfits[PlayerData.gang.name] and Config.Outfits[PlayerData.gang.name][gender] and Config.Outfits[PlayerData.gang.name][gender][PlayerData.gang.grade.level] then
            table.insert(menu, {menu = "roomOutfits", label = "Presets", selected = false, outfits = Config.Outfits[PlayerData.job.name][gender][PlayerData.job.grade.level]})
        end
        openMenu(menu)
    end)
end

Citizen.CreateThread(function()
    for i, v in pairs(Config.Outfits) do
        for j, k in pairs(v) do
            for l, m in pairs(k) do
                for n, o in pairs(m) do
                    o.outfitData = QbToEsx(o.outfitData)
                end
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if creatingCharacter then
            InvalidateIdleCam()
            SetPedCanPlayAmbientIdles(PlayerPedId(), true, false)
        else
            Citizen.Wait(1000)
        end
    end
end)

function DrawText3Ds(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0 + 0.0125, 0.017 + factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

function closeMenu()
    SendNUIMessage({action = "close"})
    disableCam()
end

local accessoires = MenuV:CreateMenu(false, 'Accessories', 'center', 155, 0, 0, 'size-125', 'none', 'menuv', 'accessoires')

function OpenAccessoryMenu()
    MenuV:CloseMenu(accessoires)
    accessoires:ClearItems()
    accessoires:AddButton({label = 'Glasses', value = 'glasses', select = function(btn)
        MenuV:CloseMenu(accessoires)
        TriggerEvent('ak47_qb_clothing:'..btn.Value)
    end})
    accessoires:AddButton({label = 'Torso', value = 'torso', select = function(btn)
        MenuV:CloseMenu(accessoires)
        TriggerEvent('ak47_qb_clothing:'..btn.Value)
    end})
    accessoires:AddButton({label = 'Pants', value = 'pants', select = function(btn)
        MenuV:CloseMenu(accessoires)
        TriggerEvent('ak47_qb_clothing:'..btn.Value)
    end})
    accessoires:AddButton({label = 'Shoes', value = 'shoes', select = function(btn)
        MenuV:CloseMenu(accessoires)
        TriggerEvent('ak47_qb_clothing:'..btn.Value)
    end})
    accessoires:AddButton({label = 'Mask', value = 'mask', select = function(btn)
        MenuV:CloseMenu(accessoires)
        TriggerEvent('ak47_qb_clothing:'..btn.Value)
    end})
    accessoires:AddButton({label = 'Hat', value = 'helmet', select = function(btn)
        MenuV:CloseMenu(accessoires)
        TriggerEvent('ak47_qb_clothing:'..btn.Value)
    end})
    accessoires:AddButton({label = 'Bag', value = 'bag', select = function(btn)
        MenuV:CloseMenu(accessoires)
        TriggerEvent('ak47_qb_clothing:'..btn.Value)
    end})
    accessoires:AddButton({label = 'Ears', value = 'ear', select = function(btn)
        MenuV:CloseMenu(accessoires)
        TriggerEvent('ak47_qb_clothing:'..btn.Value)
    end})
    accessoires:AddButton({label = 'Chain', value = 'chain', select = function(btn)
        MenuV:CloseMenu(accessoires)
        TriggerEvent('ak47_qb_clothing:'..btn.Value)
    end})
    accessoires:AddButton({label = 'Vest', value = 'vest', select = function(btn)
        MenuV:CloseMenu(accessoires)
        TriggerEvent('ak47_qb_clothing:'..btn.Value)
    end})
    MenuV:OpenMenu(accessoires)
end

if Config.UseAccessoryMenu then
    RegisterCommand('accessoires', function()
        OpenAccessoryMenu()
    end)
    RegisterKeyMapping('accessoires', 'Accessories Menu', 'keyboard', Config.AccessoryMenuKey)
end
