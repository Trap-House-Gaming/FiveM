if Config.Garage ~= 'qb-garages' then
    return
end

function TriggerAddHouseGarage(house, garageInfo)
    garageInfo.takeVehicle.w = garageInfo.takeVehicle.h
    TriggerClientEvent('qb-garages:client:addHouseGarage', -1, house, garageInfo)
end

function TriggerHouseUpdateGarage(garages)
    TriggerClientEvent('qb-garages:client:houseGarageConfig', -1, garages)
end
