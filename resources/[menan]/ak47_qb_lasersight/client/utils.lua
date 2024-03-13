QBCore = exports['qb-core']:GetCoreObject()
PlayerData = nil

Citizen.CreateThread(function()
	while QBCore.Functions == nil do
        Citizen.Wait(0)
    end
    while QBCore.Functions.GetPlayerData() == nil do
        Citizen.Wait(0)
    end
    PlayerData = QBCore.Functions.GetPlayerData()
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerData.job = JobInfo
    if Config.JobsOnly and not Config.Whitelistedjobs[PlayerData.job.name] and LocalPlayer.state.laserOn then
        Laser(true)
    end
end)

RegisterCommand('lasersight', function()
    local playerPed = PlayerPedId()
    local found, currentWeapon = GetCurrentPedWeapon(playerPed, true)

    if found and not Config.OffsetByWeapon[currentWeapon] then
        QBCore.Functions.Notify('This weapon don\'t have laser sight!')
        return
    end

    if Config.JobsOnly then
        if Config.Whitelistedjobs[PlayerData.job.name] then
            if found and Config.OffsetByWeapon[currentWeapon] then
                Laser()
            end
        else
            QBCore.Functions.Notify('Your job is not allowed to use laser sight!')
        end
    else
        if found and Config.OffsetByWeapon[currentWeapon] then
            Laser()
        end
    end
end)
RegisterKeyMapping('lasersight', 'Laser Sight', 'keyboard', Config.Key)