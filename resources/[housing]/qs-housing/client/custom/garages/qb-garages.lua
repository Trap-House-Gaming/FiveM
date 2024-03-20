if Config.Garage ~= 'qb-garages' then
    return
end

function TriggerHouseUpdateGarage()
    TriggerEvent('qb-garages:client:setHouseGarage', closesthouse, hasKey)
end
