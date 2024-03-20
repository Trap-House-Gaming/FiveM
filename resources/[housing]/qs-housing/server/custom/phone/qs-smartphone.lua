if Config.Phone ~= 'qs-smartphone' then
    return
end

function GetPlayerPhone(source)
    return exports['qs-base']:GetPlayerPhone(source)
end
