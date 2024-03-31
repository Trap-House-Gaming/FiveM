if Config.Garage ~= 'qb-garages' then
    return
end

function TriggerHouseUpdateGarage()
    if not Config.Houses[closesthouse] then
        return
    end
    local garage = Config.Houses[closesthouse].garage
    if not garage then
        return
    end
    if not garage.takeVehicle then
        return
    end
    TriggerEvent('qb-garages:client:setHouseGarage', closesthouse, hasKey)
end
