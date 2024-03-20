if Config.Garage ~= 'qs-advancedgarages' then
    return
end

function TriggerHouseUpdateGarage()
    TriggerEvent('advancedgarages:SetShellGarageData', closesthouse, hasKey)
end
