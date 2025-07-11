local IsAnimated = false

RegisterNetEvent('ak47_taco:onEat')
AddEventHandler('ak47_taco:onEat', function()
    if not IsAnimated then
        IsAnimated = true
        Citizen.CreateThread(function()
            local playerPed = PlayerPedId()
            QBCore.Functions.RequestAnimDict('mp_player_inteat@burger')
            TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
            Citizen.Wait(3000)
            IsAnimated = false
            ClearPedSecondaryTask(playerPed)
        end)
    end
end)

RegisterNetEvent('ak47_taco:onDrink')
AddEventHandler('ak47_taco:onDrink', function()
    if not IsAnimated then
        IsAnimated = true
        Citizen.CreateThread(function()
            local playerPed = PlayerPedId()
            QBCore.Functions.RequestAnimDict('mp_player_intdrink')
            TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 49, 0, 0, 0, 0)
            Citizen.Wait(3000)
            IsAnimated = false
            ClearPedSecondaryTask(playerPed)
        end)
    end
end)

RegisterNetEvent('ak47_taco:add')
AddEventHandler('ak47_taco:add', function(type, value)
    TriggerServerEvent("ak47_taco:SetMetaData", type, QBCore.Functions.GetPlayerData().metadata[type] + value)
end)
