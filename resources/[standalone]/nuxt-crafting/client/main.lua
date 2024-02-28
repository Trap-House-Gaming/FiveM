local locale = config.locales[config.lang]
stations = {}

local function prepareItemData(itemName, researchedItems)
    local data

    for key, value in pairs(config.items) do
        if value.name == itemName then
            data = value
            break
        end
    end
    
    local item = getItemData(itemName)
    
    data.label = item.label
    data.description = item.description
    data.image = ('%s/%s'):format(config.imagePath, item.image)
    data.researchable = true
    data.craftable = true

    for key, value in pairs(data.researchCost) do
        value.label = getItemData(value.name).label
        local hasItem = hasItem(value.name, value.amount)
        value.has = hasItem
        
        if not hasItem then
            data.researchable = false
        end
    end

    for key, value in pairs(data.craftingCost) do
        value.label = getItemData(value.name).label
        local hasItem = hasItem(value.name, value.amount)
        value.has = hasItem
        
        if not hasItem then
            data.craftable = false
        end
    end

    if not researchedItems[itemName] and data.researchRequired then
        data.craftable = false
    end

    if researchedItems[itemName] or not data.researchRequired then
        data.researchable = false
        data.researched = true
    end

    return data
end

RegisterNuiCallback('getResearchableItems', function(_, callback)
    triggerCallback('nuxt-crafting:server:getResearchedItems', function(result)
        local items = {}
    
        for key, value in pairs(config.items) do
            items[#items+1] = prepareItemData(value.name, result)
        end
    
        callback(items)
    end)
end)

RegisterNuiCallback('getCraftableItems', function(data, callback)
    triggerCallback('nuxt-crafting:server:getResearchedItems', function(result)
        local items = {}
    
        for key, value in pairs(config.items) do
            local item = prepareItemData(value.name, result)

            if item.researched or not item.researchRequired then
                if tonumber(data.tier) >= item.tier then
                    items[#items+1] = item
                end
            end
        end
    
        callback(items)
    end)
end)

RegisterNuiCallback('close', function(_, callback)
    TriggerScreenblurFadeOut(3000)
    SetNuiFocus(false, false)
    callback('OK')
end)

RegisterNuiCallback('researchItem', function(data, callback)
    triggerCallback('nuxt-crafting:server:getResearchedItems', function(result)
        local item = prepareItemData(data.item.name, result)

        if item.researchable then
            TriggerServerEvent('nuxt-crafting:server:researchItem', data.item.name)
            callback('OK')
        else
            notify(locale.you_cant, 'error')
        end
    end)
end)

RegisterNuiCallback('craftItem', function(data, callback)
    triggerCallback('nuxt-crafting:server:getResearchedItems', function(result)
        local item = prepareItemData(data.item.name, result)

        if item.craftable then
            TriggerServerEvent('nuxt-crafting:server:craftItem', data.item.name)
            callback('OK')
        else
            notify(locale.you_cant, 'error')
        end
    end)
end)

local function spawnObject(model, coords)
	local promise = promise.new()
	
	if not HasModelLoaded(model) then
		RequestModel(model)
		while not HasModelLoaded(model) do
			Wait(1)
		end
	end

	local prop = CreateObject(model, coords, true, true, false)

	if coords.w then
		SetEntityHeading(prop, coords.w)
	end

    SetEntityAsMissionEntity(prop, true, true)
    FreezeEntityPosition(prop, true)
    SetEntityInvincible(prop, true)

    return prop
end

local function rotationToDirection(rotation)
	local adjustedRotation = {
		x = (math.pi / 180) * rotation.x,
		y = (math.pi / 180) * rotation.y,
		z = (math.pi / 180) * rotation.z
	}
	local direction = {
        x = -math.sin(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)),
		y = math.cos(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)),
		z = math.sin(adjustedRotation.x)
	}

	return direction
end

local function rayCastGamePlayCamera(distance)
    local cameraRotation = GetGameplayCamRot()
	local cameraCoord = GetGameplayCamCoord()
	local direction = rotationToDirection(cameraRotation)
	local destination = {
        x = cameraCoord.x + direction.x * distance,
		y = cameraCoord.y + direction.y * distance,
		z = cameraCoord.z + direction.z * distance
	}
	local a, b, c, d, e = GetShapeTestResult(StartShapeTestRay(cameraCoord.x, cameraCoord.y, cameraCoord.z, destination.x, destination.y, destination.z, -1, PlayerPedId(), 0))

	return b, c, e
end

local function buttonMessage(text)
    BeginTextCommandScaleformString('STRING')
    AddTextComponentScaleform(text)
    EndTextCommandScaleformString()
end

local function setupScaleform(scaleform)
    local scaleform = RequestScaleformMovie(scaleform)

    while not HasScaleformMovieLoaded(scaleform) do
        Wait(0)
    end

    DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 0, 0)

    PushScaleformMovieFunction(scaleform, 'CLEAR_ALL')
    PopScaleformMovieFunctionVoid()
    
    PushScaleformMovieFunction(scaleform, 'SET_CLEAR_SPACE')
    PushScaleformMovieFunctionParameterInt(200)
    PopScaleformMovieFunctionVoid()

    PushScaleformMovieFunction(scaleform, 'SET_DATA_SLOT')
    PushScaleformMovieFunctionParameterInt(0)
    N_0xe83a3e3557a56640(GetControlInstructionalButton(2, 191, true))
    buttonMessage(locale.confirm)
    PopScaleformMovieFunctionVoid()

    PushScaleformMovieFunction(scaleform, 'SET_DATA_SLOT')
    PushScaleformMovieFunctionParameterInt(1)
    N_0xe83a3e3557a56640(GetControlInstructionalButton(2, 47, true))
    buttonMessage(locale.cancel)
    PopScaleformMovieFunctionVoid()

    PushScaleformMovieFunction(scaleform, 'SET_DATA_SLOT')
    PushScaleformMovieFunctionParameterInt(2)
    N_0xe83a3e3557a56640(GetControlInstructionalButton(2, 44, true))
    buttonMessage(locale.rotate_left)
    PopScaleformMovieFunctionVoid()

    PushScaleformMovieFunction(scaleform, 'SET_DATA_SLOT')
    PushScaleformMovieFunctionParameterInt(3)
    N_0xe83a3e3557a56640(GetControlInstructionalButton(2, 38, true))
    buttonMessage(locale.rotate_right)
    PopScaleformMovieFunctionVoid()

    PushScaleformMovieFunction(scaleform, 'DRAW_INSTRUCTIONAL_BUTTONS')
    PopScaleformMovieFunctionVoid()

    PushScaleformMovieFunction(scaleform, 'SET_BACKGROUND_COLOUR')
    PushScaleformMovieFunctionParameterInt(0)
    PushScaleformMovieFunctionParameterInt(0)
    PushScaleformMovieFunctionParameterInt(0)
    PushScaleformMovieFunctionParameterInt(80)
    PopScaleformMovieFunctionVoid()

    return scaleform
end

local function selectPosition(model)
	local promise = promise.new()
	local canProcess = true
	local ped = PlayerPedId()
	local prop = spawnObject(model, GetEntityCoords(ped) - vector3(0.0, 0.0, 1.0))

	SetEntityHeading(prop, GetEntityHeading(ped))
    SetEntityCollision(prop, false, false)
    SetEntityAlpha(prop, 180, false)
	SetEntityDrawOutline(prop, true)
	SetEntityDrawOutlineShader(1)

	local form = setupScaleform('instructional_buttons')
	
    while true do
		DrawScaleformMovieFullscreen(form, 255, 255, 255, 255, 0)

        local hit, coords, entity = rayCastGamePlayCamera(1000.0)

		SetEntityCoords(prop, coords)

        if IsControlPressed(0, 38) then
			SetEntityHeading(prop, GetEntityHeading(prop) - 0.5)
        end
        if IsControlPressed(0, 44) then
			SetEntityHeading(prop, GetEntityHeading(prop) + 0.5)
        end
        if IsControlPressed(0, 47) then
			promise:reject()
			DeleteEntity(prop)
			break
        end
        if IsControlPressed(0, 191) then
			if canProcess then
				promise:resolve(vector4(coords.xyz, GetEntityHeading(prop)))
				DeleteEntity(prop)
				break
			end
        end

		if canProcess then
			SetEntityDrawOutlineColor(table.unpack(config.outlineColors[1]))
		else
			SetEntityDrawOutlineColor(table.unpack(config.outlineColors[2]))
		end

		canProcess = config.placeDistance >= #(GetEntityCoords(ped) - coords)

        Wait(3)
    end

    return Citizen.Await(promise)
end

RegisterNetEvent('nuxt-crafting:client:createStation', function(type)
    local ped = PlayerPedId()
	local data = config.stations[type]
	local model = GetHashKey(data.model)
	local position = selectPosition(model)

	if position then
        if data.offset then
            data.offset = vector4(data.offset.x, data.offset.y, data.offset.z, data.offset.w or 0.0)
    
            position += data.offset
        end

  		local prop = spawnObject(model, position)

		TaskTurnPedToFaceEntity(PlayerPedId(), prop, 3.0)
		Wait(1000)
		progressBar('create_craft_station', locale.station_planting, data.setupTime, false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true
		}, config.plantAnimation, {}, {}, function()
            ClearPedTasks(ped)
			DeleteEntity(prop)
			TriggerServerEvent('nuxt-crafting:server:removeItem', type, 1)
			TriggerServerEvent('nuxt-crafting:server:createStation', model, position, data.offset)
		end, function()
            ClearPedTasks(ped)
			DeleteEntity(prop)
			notify(locale.process_canceled, 'error')
		end)
	else
		notify(locale.process_canceled, 'error')
	end
end)

RegisterNetEvent('nuxt-crafting:client:openStation', function(name, data)
    TriggerScreenblurFadeIn(300)
    SetNuiFocus(true, true)
    SendNuiMessage(name, data)
end)

CreateThread(function()
	TriggerServerEvent('nuxt-crafting:server:spawnProps')
    Wait(5000)
    SendNuiMessage('locale', {
        locale = locale
    })
    triggerCallback('nuxt-crafting:server:getStations', function(result)
        stations = result
    end)
end)

RegisterNetEvent('nuxt-crafting:client:addStation', addStation)
