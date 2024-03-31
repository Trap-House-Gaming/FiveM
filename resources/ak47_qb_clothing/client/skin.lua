other = nil
other = nil
lastSkin = {}
firstRegister = false

function OpenSaveableMenu()
    openMenu(Config.CharacterCreationMenu)
end

RegisterNetEvent('qb-clothing:client:openMenu')
AddEventHandler('qb-clothing:client:openMenu', function()
    OpenSaveableMenu()
end)

RegisterNetEvent('qb-clothes:client:CreateFirstCharacter')
AddEventHandler('qb-clothes:client:CreateFirstCharacter', function()
    firstRegister = true
    QBCore.Functions.GetPlayerData(function(pData)
        if pData.charinfo.gender == 1 then
            TriggerEvent('skinchanger:loadSkin', {sex = 1}, OpenSaveableMenu)
        else
            TriggerEvent('skinchanger:loadSkin', {sex = 0}, OpenSaveableMenu)
        end
    end)
end)

RegisterNetEvent('qb-clothing:client:openOutfitMenu')
AddEventHandler('qb-clothing:client:openOutfitMenu', function()
    QBCore.Functions.TriggerCallback('qb-clothing:server:getOutfits', function(result)
        openMenu({
            {menu = "myOutfits", label = "My Outfits", selected = true, outfits = result},
        })
    end)
end)

RegisterNetEvent('qb-clothing:client:loadPlayerClothing')
AddEventHandler('qb-clothing:client:loadPlayerClothing', function(skin, ped)
    if PlayerPedId() == ped then
        TriggerEvent('skinchanger:loadSkin', QbToEsx(skin))
    else
        TriggerEvent('skinchanger:loadSkinPed', QbToEsx(skin), ped)
    end
end)

RegisterNetEvent('qb-clothing:client:loadOutfit')
AddEventHandler('qb-clothing:client:loadOutfit', function(data)
    TriggerEvent('skinchanger:getSkin', function(skin)
        TriggerEvent('skinchanger:loadClothes', skin, QbToEsx(data.outfitData))
    end)
end)

RegisterNetEvent('ak47_qb_clothing:loadSkin')
AddEventHandler('ak47_qb_clothing:loadSkin', function(data)
    TriggerEvent('skinchanger:loadSkin', QbToEsx(data))
    while exports['skinchanger']:getModelById(QbToEsx(data)) ~= GetEntityModel(PlayerPedId()) do
        Wait(2000)
        TriggerEvent('skinchanger:loadSkin', QbToEsx(data))
    end
end)

AddEventHandler('qb-clothing:getSkin', function(cb)
    TriggerEvent('skinchanger:getSkin', function(skin)
        cb(EsxToQb(skin))
    end)
end)

RegisterCommand('reloadskin', function()
    TriggerServerEvent("qb-clothes:loadPlayerSkin")
end)
