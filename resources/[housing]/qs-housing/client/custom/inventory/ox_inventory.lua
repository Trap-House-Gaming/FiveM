if Config.Inventory ~= 'ox_inventory' then
    return
end

function openStash(customData, uniq)
    local data = customData or Config.DefaultStashData
    local house = CurrentHouse or closesthouse
    local houseData = Config.Houses[house]
    if not customData then
        if houseData.ipl then
            data = houseData.ipl.stash or data
        else
            local shellData = Config.Shells[houseData.tier]
            if shellData then
                data = shellData.stash or data
            end
        end
    end
    uniq = uniq or house
    local maxweight = data.maxweight or 10000
    local slot = data.slots or 30
    TriggerServerEvent('qb-houses:server:RegisterStash', uniq, slot, maxweight)
    TriggerEvent('qb-houses:client:RegisterStash', uniq)
end
