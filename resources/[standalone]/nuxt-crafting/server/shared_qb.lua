local QBCore = exports['qb-core']:GetCoreObject()

databaseQuerys = {
    'SELECT researched_items FROM players WHERE citizenid = ?',
    'UPDATE players SET researched_items = ? WHERE citizenid = ?',
    'SELECT researched_items FROM players WHERE citizenid = ?'
}

---@param source number
function getPlayer(source)
    return QBCore.Functions.GetPlayer(source)
end

---@param source number
---@param name string
---@param amount number
function addItem(source, name, amount)
    QBCore.Functions.GetPlayer(source).Functions.AddItem(name, amount)
end

---@param source number
---@param name string
---@param amount number
function removeItem(source, name, amount)
    QBCore.Functions.GetPlayer(source).Functions.RemoveItem(name, amount)
end

---@param source number
function getCitizenId(source)
    return QBCore.Functions.GetPlayer(source).PlayerData.citizenid
end

---@param name string
---@param handler function
function createCallback(name, handler)
    QBCore.Functions.CreateCallback(name, handler)
end

---@param name string
---@param handler function
function createUseableItem(name, handler)
    QBCore.Functions.CreateUseableItem(name, handler)
end
