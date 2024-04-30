if Config.Inventory ~= 'ox_inventory' then
    return
end

local ox_inventory = exports.ox_inventory

function openStash(customData, uniq)
    local data = customData or Config.DefaultStashData
    local house = CurrentHouse
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
    if ox_inventory:openInventory('stash', uniq) == false then
        TriggerServerEvent('qb-houses:server:RegisterStash', uniq, slot, maxweight)
        ox_inventory:openInventory('stash', uniq)
        Debug('Ox Stash', 'Registering new stash', uniq)
    end
end
