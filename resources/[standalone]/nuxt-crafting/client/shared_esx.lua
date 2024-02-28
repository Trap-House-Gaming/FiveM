local ESX = exports['es_extended']:getSharedObject()

AddEventHandler('esx:setPlayerData', function(key, val, last)
    if GetInvokingResource() == 'es_extended' then
        ESX.PlayerData[key] = val
        if OnPlayerData then
            OnPlayerData(key, val, last)
        end
    end
end)

RegisterNetEvent('esx:playerLoaded', function(xPlayer)
    ESX.PlayerData = xPlayer
    ESX.PlayerLoaded = true
end)

RegisterNetEvent('esx:onPlayerLogout', function()
    ESX.PlayerLoaded = false
    ESX.PlayerData = {}
end)

---@param name string
function getItemData(name)
    return ESX.Items[name]
end

---@param name string
---@param handler function
---@param ... any
function triggerCallback(name, handler, ...)
    ESX.TriggerServerCallback(name, handler, ...)
end

---@param name string
---@param amount number
function hasItem(name, amount)
    triggerCallback('nuxt-crafting:server:getInventoryItem', function(result)
        return result.count >= amount
    end, name)
end

---@param text string
---@param type string
function notify(text, type)
    ESX.ShowNotification(text, type)
end

---@param coords vector3
---@param text string
function drawText3D(coords, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry('STRING')
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0 + 0.0125, 0.017 + factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

---@param name string
---@param label string
---@param duration number
---@param useWhileDead boolean
---@param canCancel boolean
---@param disableControls { [string]: boolean }
---@param animation { [string]: string || number }
---@param prop { [string]: string || number }
---@param propTwo { [string]: string || number }
---@param onFinish function
---@param onCancel function
function progressBar(name, label, duration, useWhileDead, canCancel, disableControls, animation, prop, propTwo, onFinish, onCancel)
    QBCore.Functions.Progressbar(name, label, duration, useWhileDead, canCancel, disableControls, animation, prop, propTwo, onFinish, onCancel)
end
