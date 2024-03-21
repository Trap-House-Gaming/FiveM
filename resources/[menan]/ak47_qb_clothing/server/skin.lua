RegisterServerEvent("qb-clothes:saveOutfit")
AddEventHandler("qb-clothes:saveOutfit", function(outfitName, model, skinData)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if model ~= nil and skinData ~= nil then
        local outfitId = "outfit-"..math.random(1, 10) .. "-"..math.random(1111, 9999)
        MySQL.Async.execute('INSERT INTO player_outfits (citizenid, outfitname, model, skin, outfitId) VALUES (?, ?, ?, ?, ?)', {
            Player.PlayerData.citizenid,
            outfitName,
            model,
            json.encode(skinData),
            outfitId
        }, function()
            reloadOutfits(Player, src)
        end)
    end
end)

RegisterServerEvent("qb-clothing:server:removeOutfit")
AddEventHandler("qb-clothing:server:removeOutfit", function(outfitName, outfitId, other)
    local src = other or source
    local Player = QBCore.Functions.GetPlayer(src)
    MySQL.Async.execute('DELETE FROM player_outfits WHERE citizenid = ? AND outfitname = ? AND outfitId = ?', {
        Player.PlayerData.citizenid,
        outfitName,
        outfitId
    }, function()
        reloadOutfits(Player, src)
    end)
end)

function reloadOutfits(Player, src)
    local result = MySQL.Sync.fetchAll('SELECT * FROM player_outfits WHERE citizenid = ?', {Player.PlayerData.citizenid})
    local anusVal = {}
    if result[1] then
        local _labels = {}
        for k, v in pairs(result) do
            result[k].skin = json.decode(result[k].skin)
            anusVal[k] = v
        end
        TriggerClientEvent('ak47_qb_clothing:reloadOutfits', src, anusVal)
    else
        TriggerClientEvent('ak47_qb_clothing:reloadOutfits', src, anusVal)
    end
end

RegisterServerEvent("qb-clothing:saveSkin")
AddEventHandler('qb-clothing:saveSkin', function(model, skin)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if model ~= nil and skin ~= nil then
        MySQL.Async.execute('DELETE FROM playerskins WHERE citizenid = ?', { Player.PlayerData.citizenid }, function()
            MySQL.Async.execute('INSERT INTO playerskins (citizenid, model, skin, active) VALUES (?, ?, ?, ?)', {
                Player.PlayerData.citizenid,
                model,
                json.encode(skin),
                1
            })
        end)
    end
end)

RegisterServerEvent("qb-clothes:loadPlayerSkin")
AddEventHandler('qb-clothes:loadPlayerSkin', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local result = MySQL.Sync.fetchAll('SELECT * FROM playerskins WHERE citizenid = ? AND active = ?', { Player.PlayerData.citizenid, 1 })
    if result[1] ~= nil then
        TriggerClientEvent("ak47_qb_clothing:loadSkin", src, json.decode(result[1].skin))
    else
        local result = MySQL.Sync.fetchAll('SELECT * FROM playerskins WHERE citizenid = ?', { Player.PlayerData.citizenid})
        if result[1] ~= nil then
            TriggerClientEvent("ak47_qb_clothing:loadSkin", src, json.decode(result[1].skin))
--        else
 --           TriggerClientEvent("qb-clothes:client:CreateFirstCharacter", src)
        end
    end
end)

QBCore.Functions.CreateCallback('qb-clothing:server:getOutfits', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local anusVal = {}
    local result = MySQL.Sync.fetchAll('SELECT * FROM player_outfits WHERE citizenid = ?', {Player.PlayerData.citizenid})
    if result[1] ~= nil then
        for k, v in pairs(result) do
            result[k].skin = json.decode(result[k].skin)
            anusVal[k] = v
        end
        cb(anusVal)
    end
    cb(anusVal)
end)

QBCore.Commands.Add("skin", 'change skin', {{name = 'id', help = 'The player id'}}, false, function(source, args)
    if args[1] then
        TriggerClientEvent('qb-clothing:client:openMenu', tonumber(args[1]))
    else
        TriggerClientEvent('qb-clothing:client:openMenu', source)
    end
end, "admin")
