local ESX = exports['es_extended']:getSharedObject()

databaseQuerys = {
    'SELECT researched_items FROM users WHERE identifier = ?',
    'UPDATE users SET researched_items = ? WHERE identifier = ?',
    'SELECT researched_items FROM users WHERE identifier = ?'
}

---@param source number
---@param name string
---@param amount number
function addItem(source, name, amount)
    ESX.GetPlayerFromId(source).addInventoryItem(name, amount)
end

---@param source number
---@param name string
---@param amount number
function removeItem(source, name, amount)
    ESX.GetPlayerFromId(source).removeInventoryItem(name, amount)
end

---@param source number
function getCitizenId(source)
    ESX.GetPlayerFromId(source).getIdentifier()
end

---@param name string
---@param handler function
function createCallback(name, handler)
    ESX.RegisterServerCallback(name, handler)
end

---@param name string
---@param handler function
function createUseableItem(name, handler)
    ESX.RegisterUsableItem(name, handler)
end

createCallback('nuxt-crafting:server:getInventoryItem', function(source, callback, item)
    callback(ESX.GetPlayerFromId(source).getInventoryItem(item))
end)