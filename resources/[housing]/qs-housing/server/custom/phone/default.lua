if Config.Phone ~= 'default' then
    return
end

function GetPlayerPhone(source)
    local player = GetPlayerFromId(source)

    if Config.Framework == 'qb' then
        return player.PlayerData.charinfo.phone
    end

    local identifier = player.identifier
    local phoneNumber = nil

    MySQL.Async.fetchAll('SELECT phone_number FROM users WHERE identifier = @identifier', {
        ['@identifier'] = identifier
    }, function(result)
        if result[1] then
            phoneNumber = result[1].phone_number
        end
    end)

    repeat Wait(0) until phoneNumber ~= nil
    return phoneNumber
end
