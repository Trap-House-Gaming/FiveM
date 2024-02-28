local QBCore = exports['qb-core']:GetCoreObject()

---@param name string
function getItemData(name)
    return QBCore.Shared.Items[name]
end

---@param name string
---@param handler function
---@param ... any
function triggerCallback(name, handler, ...)
    QBCore.Functions.TriggerCallback(name, handler, ...)
end

---@param name string
---@param amount number
function hasItem(name, amount)
    return QBCore.Functions.HasItem(name, amount)
end

---@param text string
---@param type string
function notify(text, type)
    QBCore.Functions.Notify(text, type)
end

---@param coords vector3
---@param text string
function drawText3D(coords, text)
    QBCore.Functions.DrawText3D(coords.x, coords.y, coords.z, text)
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
