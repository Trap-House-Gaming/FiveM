local locale = config.locales[config.lang]
local propSpawned = false
local props = {}

RegisterCommand('am31', function()
	print(playerTableName)
end)

RegisterNetEvent('nuxt-crafting:server:researchItem', function(item)
    for key, value in pairs(config.items) do
        if value.name == item then
            item = value
        end
    end

    if item then
        for key, value in pairs(item.researchCost) do
            removeItem(source, value.name, value.amount)
        end

        local result = json.decode(MySQL.prepare.await(databaseQuerys[1], {
			getCitizenId(source)
        }))

        table.insert(result, item.name)

        MySQL.prepare(databaseQuerys[2], {
            json.encode(result),
            getCitizenId(source)
        })
    end
end)

RegisterNetEvent('nuxt-crafting:server:craftItem', function(item)
    for key, value in pairs(config.items) do
        if value.name == item then
            item = value
        end
    end

    if item then
        for key, value in pairs(item.researchCost) do
			removeItem(source, value.name, value.amount)
        end

        addItem(source, item.name, item.amount)
    end
end)

CreateThread(function()
	createCallback('nuxt-crafting:server:getResearchedItems', function(source, callback)
		local items = {}
		local result = json.decode(MySQL.prepare.await(databaseQuerys[3], {
			getCitizenId(source)
		}))
	
		for key, value in pairs(result) do
			items[value] = true
		end
	
		callback(items)
	end)
end)

RegisterNetEvent('nuxt-crafting:server:createStation', function(model, coords, offset)
	local prop = CreateObject(model, coords.x, coords.y, coords.z, true, true, false)

	if coords.w then
		SetEntityHeading(prop, coords.w)
	end

	FreezeEntityPosition(prop, true)

	props[#props+1] = prop

	if config.savePropsInDatabase then
		MySQL.insert('INSERT INTO crafting_stations (owner, model, coords) VALUES (:owner, :model, :coords)', {
			owner = getCitizenId(source),
			model = model,
			coords = json.encode(coords)
		})
	end

	for key, value in pairs(config.stations) do
		local _model = GetHashKey(value.model)

		if offset then
            offset = vector4(offset.x, offset.y, offset.z, offset.w or 0.0)
    
            coords -= offset
        end

		if model == _model then
			TriggerClientEvent('nuxt-crafting:client:addStation', -1, {
				name = key,
				label = value.label,
				coords = coords
			})
		end
	end
end)

RegisterNetEvent('nuxt-crafting:server:spawnProps', function()
	if propSpawned then return end

	local result = MySQL.query.await('SELECT * FROM crafting_stations')

	for key, value in pairs(result) do
		local coords = json.decode(value.coords)
		local prop = CreateObject(tonumber(value.model), coords.x, coords.y, coords.z, true, true, false)
		
		if coords.w then
			SetEntityHeading(prop, coords.w)
		end

		FreezeEntityPosition(prop, true)

		props[#props+1] = prop
	end

	for key, value in pairs(config.stations) do
		for k, v in pairs(value.coords) do
			local prop = CreateObject(GetHashKey(value.model), v.x, v.y, v.z, true, true, false)
			
			if v.w then
				SetEntityHeading(prop, v.w)
			end

			FreezeEntityPosition(prop, true)

			props[#props+1] = prop
		end
	end

	propSpawned = true
end)

RegisterNetEvent('nuxt-crafting:server:removeItem', function(item, amount)
	removeItem(source, item, amount)
end)

AddEventHandler('onResourceStop', function(resourceName)
	if GetCurrentResourceName() ~= resourceName then return end

	for key, value in pairs(props) do
		DeleteEntity(value)
	end
end)

CreateThread(function()
	for key, value in pairs(config.stations) do
		createUseableItem(key, function(source, item)
			TriggerClientEvent('nuxt-crafting:client:createStation', source, item.name)
		end)
	end
end)

--[[ createUseableItem('tool_kit', function(source, item)
	local selectedProp
	local playerPos = GetEntityCoords(GetPlayerPed(source))

	for key, value in pairs(props) do
		local entityPos = GetEntityCoords(value)

		if config.placeDistance >= #(playerPos - entityPos) then
			selectedProp = value
		end
	end

	if selectedProp then
		local coords = GetEntityCoords(selectedProp)
		local result = MySQL.query.await('SELECT * FROM crafting_stations')
		
		for key, value in pairs(result) do
			local decodedCoords = json.decode(value.coords)
			local _coords = vector3(decodedCoords.x, decodedCoords.y, decodedCoords.z)

			if 3.0 >= #(coords - _coords) and GetEntityModel(selectedProp) == tonumber(value.model) then
				if config.onlyOwnerCanBeTake and QBCore.Functions.GetPlayer(source).PlayerData.citizenid ~= value.owner then
					TriggerClientEvent('QBCore:Notify', source, locale.you_cant, 'error')
					return
				end

				print(json.encode(result))
			else
				TriggerClientEvent('QBCore:Notify', source, locale.you_cant, 'error')
			end
		end
	else
		TriggerClientEvent('QBCore:Notify', source, locale.no_station_nearby, 'error')
	end
end) ]]

CreateThread(function()
	createCallback('nuxt-crafting:server:getStations', function(source, callback)
		local stations = {}
	
		for key, value in pairs(props) do
			local model = GetEntityModel(value)
			print(31, key, value, model)
	
			for k, v in pairs(config.stations) do
				local _model = GetHashKey(v.model)
	
				if model == _model then
					stations[#stations+1] = {
						name = k,
						label = v.label,
						coords = GetEntityCoords(value)
					}
				end
			end
		end
	
		callback(stations)
	end)
end)
