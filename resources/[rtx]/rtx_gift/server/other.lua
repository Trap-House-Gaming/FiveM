if Config.Framework == "esx" then
	RegisterCommand("givevehiclegiftid", function(source, args, raw)
		local playersource = source
		if playersource == 0 then
			if args[1] ~= nil then
				local xTarget = ESX.GetPlayerFromId(tonumber(args[1]))
				if xTarget then
					if args[2] ~= nil then		
						local vehicleplate = string.upper(GetRandomLetter(PlateLetters) .. GetRandomNumber(PlateNumbers).."D")
						MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle, type, stored) VALUES (@owner, @plate, @vehicle, @type, @stored)', {
							['@owner'] = "gift",
							['@plate'] = vehicleplate,
							['@vehicle'] = '{"plate":"'..vehicleplate..'", "model":'..GetHashKey(tostring(args[2]))..'}',
							['@type']  = "car",
							['@stored'] = 1
						}, function(changed)
							MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = @owner AND plate = @plate', {
								['@owner'] = "gift",
								['@plate'] = vehicleplate
							}, function(result)
								if result[1] ~= nil then
									local giftvehicles = {}
									table.insert(giftvehicles, {vehicleid = result[1].id, vehiclelabel = tostring(args[2]), vehicleplate = vehicleplate, vehiclemodel = GetHashKey(tostring(args[2]))})
									MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
									{
										['@receiever'] = xTarget.identifier,
										['@sender'] = "Server",
										['@gifttype'] = "vehicles",
										['@giftmessage'] = "Gift from server",
										['@giftdata'] = json.encode(giftvehicles)
									}, function(changed2)
										local receievername = GetPlayerName(tonumber(args[1]))
										TriggerClientEvent("rtx_gift:GiftNotify", tonumber(args[1]), "Server")
									end)														
								end
							end)
						end)					
					else
														
					end				
				end			
			end
		else
			local xPlayer = ESX.GetPlayerFromId(playersource)
			local playergroup = xPlayer.getGroup()
			if playergroup == "admin" or playergroup == "superadmin" then
				if args[1] ~= nil then
					local xTarget = ESX.GetPlayerFromId(tonumber(args[1]))
					if xTarget then
						if args[2] ~= nil then		
							local vehicleplate = string.upper(GetRandomLetter(PlateLetters) .. GetRandomNumber(PlateNumbers).."D")
							MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle, type, stored) VALUES (@owner, @plate, @vehicle, @type, @stored)', {
								['@owner'] = "gift",
								['@plate'] = vehicleplate,
								['@vehicle'] = '{"plate":"'..vehicleplate..'", "model":'..GetHashKey(tostring(args[2]))..'}',
								['@type']  = "car",
								['@stored'] = 1
							}, function(changed)
								MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = @owner AND plate = @plate', {
									['@owner'] = "gift",
									['@plate'] = vehicleplate
								}, function(result)
									if result[1] ~= nil then
										local giftvehicles = {}
										table.insert(giftvehicles, {vehicleid = result[1].id, vehiclelabel = tostring(args[2]), vehicleplate = vehicleplate, vehiclemodel = GetHashKey(tostring(args[2]))})
										MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
										{
											['@receiever'] = xTarget.identifier,
											['@sender'] = "Server",
											['@gifttype'] = "vehicles",
											['@giftmessage'] = "Gift from server",
											['@giftdata'] = json.encode(giftvehicles)
										}, function(changed2)
											local receievername = GetPlayerName(tonumber(args[1]))
											TriggerClientEvent("rtx_gift:Notify", playersource, "You send gift to "..receievername.."")
											TriggerClientEvent("rtx_gift:GiftNotify", tonumber(args[1]), "Server")
										end)														
									end
								end)
							end)	
						else
							TriggerClientEvent("rtx_gift:Notify", playersource, "Vehicle model not specifed")						
						end				
					else
						TriggerClientEvent("rtx_gift:Notify", playersource, "Player is not online")
					end			
				else
					TriggerClientEvent("rtx_gift:Notify", playersource, "Player ID not specifed")
				end
			end
		end
	end)

	RegisterCommand("givevehiclegiftall", function(source, args, raw)
		local playersource = source
		if playersource == 0 then
			local players = ESX.GetPlayers()
			for i, playerid in ipairs(players) do
				local xTarget = ESX.GetPlayerFromId(playerid)
				if xTarget then
					if args[1] ~= nil then		
						local vehicleplate = string.upper(GetRandomLetter(PlateLetters) .. GetRandomNumber(PlateNumbers).."D")
						MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle, type, stored) VALUES (@owner, @plate, @vehicle, @type, @stored)', {
							['@owner'] = "gift",
							['@plate'] = vehicleplate,
							['@vehicle'] = '{"plate":"'..vehicleplate..'", "model":'..GetHashKey(tostring(args[1]))..'}',
							['@type']  = "car",
							['@stored'] = 1
						}, function(changed)
							MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = @owner AND plate = @plate', {
								['@owner'] = "gift",
								['@plate'] = vehicleplate
							}, function(result)
								if result[1] ~= nil then
									local giftvehicles = {}
									table.insert(giftvehicles, {vehicleid = result[1].id, vehiclelabel = tostring(args[1]), vehicleplate = vehicleplate, vehiclemodel = GetHashKey(tostring(args[2]))})
									MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
									{
										['@receiever'] = xTarget.identifier,
										['@sender'] = "Server",
										['@gifttype'] = "vehicles",
										['@giftmessage'] = "Gift from server",
										['@giftdata'] = json.encode(giftvehicles)
									}, function(changed2)
										local receievername = GetPlayerName(xTarget.source)
										TriggerClientEvent("rtx_gift:Notify", playersource, "You send gift to "..receievername.."")
										TriggerClientEvent("rtx_gift:GiftNotify", xTarget.source, "Server")
									end)														
								end
							end)
						end)	
					else
						TriggerClientEvent("rtx_gift:Notify", playersource, "Vehicle model not specifed")	
					end		
				end
			end	
		else
			local xPlayer = ESX.GetPlayerFromId(playersource)
			local playergroup = xPlayer.getGroup()
			if playergroup == "admin" or playergroup == "superadmin" then
				local players = ESX.GetPlayers()
				for i, playerid in ipairs(players) do
					local xTarget = ESX.GetPlayerFromId(playerid)
					if xTarget then
						if args[1] ~= nil then		
							local vehicleplate = string.upper(GetRandomLetter(PlateLetters) .. GetRandomNumber(PlateNumbers).."D")
							MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle, type, stored) VALUES (@owner, @plate, @vehicle, @type, @stored)', {
								['@owner'] = "gift",
								['@plate'] = vehicleplate,
								['@vehicle'] = '{"plate":"'..vehicleplate..'", "model":'..GetHashKey(tostring(args[1]))..'}',
								['@type']  = "car",
								['@stored'] = 1
							}, function(changed)
								MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = @owner AND plate = @plate', {
									['@owner'] = "gift",
									['@plate'] = vehicleplate
								}, function(result)
									if result[1] ~= nil then
										local giftvehicles = {}
										table.insert(giftvehicles, {vehicleid = result[1].id, vehiclelabel = tostring(args[1]), vehicleplate = vehicleplate, vehiclemodel = GetHashKey(tostring(args[1]))})
										MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
										{
											['@receiever'] = xTarget.identifier,
											['@sender'] = "Server",
											['@gifttype'] = "vehicles",
											['@giftmessage'] = "Gift from server",
											['@giftdata'] = json.encode(giftvehicles)
										}, function(changed2)
											local receievername = GetPlayerName(xTarget.source)
											TriggerClientEvent("rtx_gift:Notify", playersource, "You send gift to "..receievername.."")
											TriggerClientEvent("rtx_gift:GiftNotify", xTarget.source, "Server")
										end)														
									end
								end)
							end)	
						else
							TriggerClientEvent("rtx_gift:Notify", playersource, "Vehicle model not specifed")	
						end		
					end
				end					
			end
		end
	end)

	RegisterCommand("giftnearvehicle", function(source, args, raw)
		local playersource = source
		if playersource == 0 then
			--
		else
			local xPlayer = ESX.GetPlayerFromId(playersource)
			local playergroup = xPlayer.getGroup()
			if playergroup == "admin" or playergroup == "superadmin" then
				local playerhandler = GetPlayerPed(playersource)
				local playercoords = GetEntityCoords(playerhandler)
				local players = ESX.GetPlayers()
				for i, playerid in ipairs(players) do
					local xTarget = ESX.GetPlayerFromId(playerid)
					if xTarget then
						local targethandler = GetPlayerPed(playerid)
						local targetcoords = GetEntityCoords(targethandler)	
						local distancegift = #(playercoords - targetcoords)
						if distancegift < Config.NearbyGiftDistance then
							if args[1] ~= nil then		
								local vehicleplate = string.upper(GetRandomLetter(PlateLetters) .. GetRandomNumber(PlateNumbers).."D")
								MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle, type, stored) VALUES (@owner, @plate, @vehicle, @type, @stored)', {
									['@owner'] = "gift",
									['@plate'] = vehicleplate,
									['@vehicle'] = '{"plate":"'..vehicleplate..'", "model":'..GetHashKey(tostring(args[1]))..'}',
									['@type']  = "car",
									['@stored'] = 1
								}, function(changed)
									MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = @owner AND plate = @plate', {
										['@owner'] = "gift",
										['@plate'] = vehicleplate
									}, function(result)
										if result[1] ~= nil then
											local giftvehicles = {}
											table.insert(giftvehicles, {vehicleid = result[1].id, vehiclelabel = tostring(args[1]), vehicleplate = vehicleplate, vehiclemodel = GetHashKey(tostring(args[1]))})
											MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
											{
												['@receiever'] = xTarget.identifier,
												['@sender'] = "Server",
												['@gifttype'] = "vehicles",
												['@giftmessage'] = "Gift from server",
												['@giftdata'] = json.encode(giftvehicles)
											}, function(changed2)
												local receievername = GetPlayerName(xTarget.source)
												TriggerClientEvent("rtx_gift:Notify", playersource, "You send gift to "..receievername.."")
												TriggerClientEvent("rtx_gift:GiftNotify", xTarget.source, "Server")
											end)														
										end
									end)
								end)	
							else
								TriggerClientEvent("rtx_gift:Notify", playersource, "Vehicle model not specifed")	
							end	
						end
					end
				end					
			end
		end
	end)

	RegisterCommand("givevehiclegiftidentifer", function(source, args, raw)
		local playersource = source
		if playersource == 0 then
			if args[1] ~= nil then
				if args[2] ~= nil then		
					local vehicleplate = string.upper(GetRandomLetter(PlateLetters) .. GetRandomNumber(PlateNumbers).."D")
					MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle, type, stored) VALUES (@owner, @plate, @vehicle, @type, @stored)', {
						['@owner'] = "gift",
						['@plate'] = vehicleplate,
						['@vehicle'] = '{"plate":"'..vehicleplate..'", "model":'..GetHashKey(tostring(args[2]))..'}',
						['@type']  = "car",
						['@stored'] = 1
					}, function(changed)
						MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = @owner AND plate = @plate', {
							['@owner'] = "gift",
							['@plate'] = vehicleplate
						}, function(result)
							if result[1] ~= nil then
								local giftvehicles = {}
								table.insert(giftvehicles, {vehicleid = result[1].id, vehiclelabel = tostring(args[2]), vehicleplate = vehicleplate, vehiclemodel = GetHashKey(tostring(args[2]))})
								MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
								{
									['@receiever'] = tostring(args[1]),
									['@sender'] = "Server",
									['@gifttype'] = "vehicles",
									['@giftmessage'] = "Gift from server",
									['@giftdata'] = json.encode(giftvehicles)
								}, function(changed2)
									local xTarget = ESX.GetPlayerFromIdentifier(tostring(args[1]))
									if xTarget then
										TriggerClientEvent("rtx_gift:GiftNotify", xTarget.source, "Server")
									end
								end)														
							end
						end)
					end)				
				else
														
				end					
			else
				
			end
		else
			local xPlayer = ESX.GetPlayerFromId(playersource)
			local playergroup = xPlayer.getGroup()
			if playergroup == "admin" or playergroup == "superadmin" then
				if args[1] ~= nil then
					if args[2] ~= nil then	
						local vehicleplate = string.upper(GetRandomLetter(PlateLetters) .. GetRandomNumber(PlateNumbers).."D")
						MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle, type, stored) VALUES (@owner, @plate, @vehicle, @type, @stored)', {
							['@owner'] = "gift",
							['@plate'] = vehicleplate,
							['@vehicle'] = '{"plate":"'..vehicleplate..'", "model":'..GetHashKey(tostring(args[2]))..'}',
							['@type']  = "car",
							['@stored'] = 1
						}, function(changed)
							MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = @owner AND plate = @plate', {
								['@owner'] = "gift",
								['@plate'] = vehicleplate
							}, function(result)
								if result[1] ~= nil then
									local giftvehicles = {}
									table.insert(giftvehicles, {vehicleid = result[1].id, vehiclelabel = tostring(args[2]), vehicleplate = vehicleplate, vehiclemodel = GetHashKey(tostring(args[2]))})
									MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
									{
										['@receiever'] = tostring(args[1]),
										['@sender'] = "Server",
										['@gifttype'] = "vehicles",
										['@giftmessage'] = "Gift from server",
										['@giftdata'] = json.encode(giftvehicles)
									}, function(changed2)
										TriggerClientEvent("rtx_gift:Notify", playersource, "You send gift to "..tostring(args[1]).."")
										local xTarget = ESX.GetPlayerFromIdentifier(tostring(args[1]))
										if xTarget then
											TriggerClientEvent("rtx_gift:GiftNotify", xTarget.source, "Server")
										end
									end)														
								end
							end)
						end)
					else
						TriggerClientEvent("rtx_gift:Notify", playersource, "Vehicle model not specifed")							
					end					
				else
					TriggerClientEvent("rtx_gift:Notify", playersource, "Player identifer not specifed")
				end
			end
		end
	end)

	RegisterCommand("giveitemgiftid", function(source, args, raw)
		local playersource = source
		if playersource == 0 then
			if args[1] ~= nil then
				local xTarget = ESX.GetPlayerFromId(tonumber(args[1]))
				if xTarget then
					if args[2] ~= nil then	
						if args[3] ~= nil then	
							local giftitems = {}
							table.insert(giftitems, {itemname = tostring(args[2]), itemcount = tonumber(args[3]), itemlabel = tostring(args[2])})
							MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
							{
								['@receiever'] = xTarget.identifier,
								['@sender'] = "Server",
								['@gifttype'] = "items",
								['@giftmessage'] = "Gift from server",
								['@giftdata'] = json.encode(giftitems)
							}, function(changed2)
								local receievername = GetPlayerName(tonumber(args[1]))
								TriggerClientEvent("rtx_gift:GiftNotify", tonumber(args[1]), "Server")
							end)
						end									
					end				
				end			
			end
		else
			local xPlayer = ESX.GetPlayerFromId(playersource)
			local playergroup = xPlayer.getGroup()
			if playergroup == "admin" or playergroup == "superadmin" then
				if args[1] ~= nil then
					local xTarget = ESX.GetPlayerFromId(tonumber(args[1]))
					if xTarget then
						if args[2] ~= nil then	
							if args[3] ~= nil then	
								local giftitems = {}
								table.insert(giftitems, {itemname = tostring(args[2]), itemcount = tonumber(args[3]), itemlabel = tostring(args[2])})
								MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
								{
									['@receiever'] = xTarget.identifier,
									['@sender'] = "Server",
									['@gifttype'] = "items",
									['@giftmessage'] = "Gift from server",
									['@giftdata'] = json.encode(giftitems)
								}, function(changed2)
									local receievername = GetPlayerName(tonumber(args[1]))
									TriggerClientEvent("rtx_gift:Notify", playersource, "You send gift to "..receievername.."")
									TriggerClientEvent("rtx_gift:GiftNotify", tonumber(args[1]), "Server")
								end)
							else
								TriggerClientEvent("rtx_gift:Notify", playersource, "Item count not specifed")	
							end
						else
							TriggerClientEvent("rtx_gift:Notify", playersource, "Item name not specifed")									
						end				
					else
						TriggerClientEvent("rtx_gift:Notify", playersource, "Player is not online")
					end			
				else
					TriggerClientEvent("rtx_gift:Notify", playersource, "Player ID not specifed")
				end
			end
		end
	end)

	RegisterCommand("giveitemgiftall", function(source, args, raw)
		local playersource = source
		if playersource == 0 then
			local players = ESX.GetPlayers()
			for i, playerid in ipairs(players) do
				local xTarget = ESX.GetPlayerFromId(playerid)
				if xTarget then
					if args[1] ~= nil then	
						if args[2] ~= nil then	
							local giftitems = {}
							table.insert(giftitems, {itemname = tostring(args[1]), itemcount = tonumber(args[2]), itemlabel = tostring(args[1])})
							MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
							{
								['@receiever'] = xTarget.identifier,
								['@sender'] = "Server",
								['@gifttype'] = "items",
								['@giftmessage'] = "Gift from server",
								['@giftdata'] = json.encode(giftitems)
							}, function(changed2)
								local receievername = GetPlayerName(xTarget.source)
								TriggerClientEvent("rtx_gift:GiftNotify", xTarget.source, "Server")
							end)
						end							
					end				
				end
			end
		else
			local xPlayer = ESX.GetPlayerFromId(playersource)
			local playergroup = xPlayer.getGroup()
			if playergroup == "admin" or playergroup == "superadmin" then
				local players = ESX.GetPlayers()
				for i, playerid in ipairs(players) do
					local xTarget = ESX.GetPlayerFromId(playerid)
					if xTarget then
						if args[1] ~= nil then	
							if args[2] ~= nil then	
								local giftitems = {}
								table.insert(giftitems, {itemname = tostring(args[1]), itemcount = tonumber(args[2]), itemlabel = tostring(args[1])})
								MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
								{
									['@receiever'] = xTarget.identifier,
									['@sender'] = "Server",
									['@gifttype'] = "items",
									['@giftmessage'] = "Gift from server",
									['@giftdata'] = json.encode(giftitems)
								}, function(changed2)
									local receievername = GetPlayerName(xTarget.source)
									TriggerClientEvent("rtx_gift:Notify", playersource, "You send gift to "..receievername.."")
									TriggerClientEvent("rtx_gift:GiftNotify", xTarget.source, "Server")
								end)
							else
								TriggerClientEvent("rtx_gift:Notify", playersource, "Item count not specifed")	
							end
						else
							TriggerClientEvent("rtx_gift:Notify", playersource, "Item name not specifed")									
						end				
					end
				end
			end
		end
	end)

	RegisterCommand("giftnearitem", function(source, args, raw)
		local playersource = source
		if playersource == 0 then
			--
		else
			local xPlayer = ESX.GetPlayerFromId(playersource)
			local playergroup = xPlayer.getGroup()
			if playergroup == "admin" or playergroup == "superadmin" then
				local playerhandler = GetPlayerPed(playersource)
				local playercoords = GetEntityCoords(playerhandler)
				local players = ESX.GetPlayers()
				for i, playerid in ipairs(players) do
					local xTarget = ESX.GetPlayerFromId(playerid)
					if xTarget then
						local targethandler = GetPlayerPed(playerid)
						local targetcoords = GetEntityCoords(targethandler)	
						local distancegift = #(playercoords - targetcoords)
						if distancegift < Config.NearbyGiftDistance then				
							if args[1] ~= nil then	
								if args[2] ~= nil then	
									local giftitems = {}
									table.insert(giftitems, {itemname = tostring(args[1]), itemcount = tonumber(args[2]), itemlabel = tostring(args[1])})
									MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
									{
										['@receiever'] = xTarget.identifier,
										['@sender'] = "Server",
										['@gifttype'] = "items",
										['@giftmessage'] = "Gift from server",
										['@giftdata'] = json.encode(giftitems)
									}, function(changed2)
										local receievername = GetPlayerName(xTarget.source)
										TriggerClientEvent("rtx_gift:Notify", playersource, "You send gift to "..receievername.."")
										TriggerClientEvent("rtx_gift:GiftNotify", xTarget.source, "Server")
									end)
								else
									TriggerClientEvent("rtx_gift:Notify", playersource, "Item count not specifed")	
								end
							else
								TriggerClientEvent("rtx_gift:Notify", playersource, "Item name not specifed")									
							end	
						end
					end
				end								
			end
		end
	end)

	RegisterCommand("giveitemgiftidentifer", function(source, args, raw)
		local playersource = source
		if playersource == 0 then
			if args[1] ~= nil then
				if args[2] ~= nil then	
					if args[3] ~= nil then	
						local giftitems = {}
						table.insert(giftitems, {itemname = tostring(args[2]), itemcount = tonumber(args[3]), itemlabel = tostring(args[1])})
						MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
						{
							['@receiever'] = tostring(args[1]),
							['@sender'] = "Server",
							['@gifttype'] = "items",
							['@giftmessage'] = "Gift from server",
							['@giftdata'] = json.encode(giftitems)
						}, function(changed2)
							local xTarget = ESX.GetPlayerFromIdentifier(tostring(args[1]))
							if xTarget then
								TriggerClientEvent("rtx_gift:GiftNotify", xTarget.source, "Server")
							end
						end)
					end								
				end					
			end
		else
			local xPlayer = ESX.GetPlayerFromId(playersource)
			local playergroup = xPlayer.getGroup()
			if playergroup == "admin" or playergroup == "superadmin" then
				if args[1] ~= nil then
					if args[2] ~= nil then	
						if args[3] ~= nil then	
							local giftitems = {}
							table.insert(giftitems, {itemname = tostring(args[2]), itemcount = tonumber(args[3]), itemlabel = tostring(args[2])})
							MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
							{
								['@receiever'] = tostring(args[1]),
								['@sender'] = "Server",
								['@gifttype'] = "items",
								['@giftmessage'] = "Gift from server",
								['@giftdata'] = json.encode(giftitems)
							}, function(changed2)
								TriggerClientEvent("rtx_gift:Notify", playersource, "You send gift to "..tostring(args[1]).."")
								local xTarget = ESX.GetPlayerFromIdentifier(tostring(args[1]))
								if xTarget then
									TriggerClientEvent("rtx_gift:GiftNotify", xTarget.source, "Server")
								end
							end)
						else
							TriggerClientEvent("rtx_gift:Notify", playersource, "Item count not specifed")	
						end
					else
						TriggerClientEvent("rtx_gift:Notify", playersource, "Item name not specifed")									
					end					
				else
					TriggerClientEvent("rtx_gift:Notify", playersource, "Player identifer not specifed")
				end
			end
		end
	end)
end

if Config.Framework == "qbcore" then
	local function GeneratePlate()
		local plate = QBCore.Shared.RandomInt(1) .. QBCore.Shared.RandomStr(2) .. QBCore.Shared.RandomInt(3) .. QBCore.Shared.RandomStr(2)
		local result = MySQL.scalar.await('SELECT plate FROM player_vehicles WHERE plate = ?', {plate})
		if result then
			return GeneratePlate()
		else
			return plate:upper()
		end
	end
	
	RegisterCommand("givevehiclegiftid", function(source, args, raw)
		local playersource = source
		if playersource == 0 then
			if args[1] ~= nil then
				local xTarget = QBCore.Functions.GetPlayer(tonumber(args[1]))
				if xTarget then
					if args[2] ~= nil then		
						local vehicleplate = GeneratePlate()
						MySQL.insert('INSERT INTO player_vehicles (license, citizenid, vehicle, hash, mods, plate, garage, state) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', {
							"gift",
							"gift",
							tostring(args[2]),
							GetHashKey(tostring(args[2])),
							'{}',
							vehicleplate,
							'pillboxgarage',
							1
						})								
						Wait(1000)
						MySQL.Async.fetchAll('SELECT * FROM player_vehicles WHERE citizenid = @citizenid AND plate = @plate', {
							['@citizenid'] = "gift",
							['@plate'] = vehicleplate
						}, function(result)
							if result[1] ~= nil then
								local giftvehicles = {}
								table.insert(giftvehicles, {vehicleid = result[1].id, vehiclelabel = tostring(args[2]), vehicleplate = vehicleplate, vehiclemodel = GetHashKey(tostring(args[2]))})
								MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
								{
									['@receiever'] = xTarget.PlayerData.citizenid,
									['@sender'] = "Server",
									['@gifttype'] = "vehicles",
									['@giftmessage'] = "Gift from server",
									['@giftdata'] = json.encode(giftvehicles)
								}, function(changed2)
									local receievername = GetPlayerName(tonumber(args[1]))
									TriggerClientEvent("rtx_gift:GiftNotify", tonumber(args[1]), "Server")
								end)														
							end
						end)					
					else
														
					end				
				end			
			end
		else
			local xPlayer = QBCore.Functions.GetPlayer(playersource)
			if QBCore.Functions.HasPermission(playersource, 'admin') or QBCore.Functions.HasPermission(playersource, 'god') then
				if args[1] ~= nil then
					local xTarget = QBCore.Functions.GetPlayer(tonumber(args[1]))
					if xTarget then
						if args[2] ~= nil then		
							local vehicleplate = GeneratePlate()
							MySQL.insert('INSERT INTO player_vehicles (license, citizenid, vehicle, hash, mods, plate, garage, state) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', {
								"gift",
								"gift",
								tostring(args[2]),
								GetHashKey(tostring(args[2])),
								'{}',
								vehicleplate,
								'pillboxgarage',
								1
							})
							Wait(1000)
							MySQL.Async.fetchAll('SELECT * FROM player_vehicles WHERE citizenid = @citizenid AND plate = @plate', {
								['@citizenid'] = "gift",
								['@plate'] = vehicleplate
							}, function(result)
								if result[1] ~= nil then
									local giftvehicles = {}
									table.insert(giftvehicles, {vehicleid = result[1].id, vehiclelabel = tostring(args[2]), vehicleplate = vehicleplate, vehiclemodel = GetHashKey(tostring(args[2]))})
									MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
									{
										['@receiever'] = xTarget.PlayerData.citizenid,
										['@sender'] = "Server",
										['@gifttype'] = "vehicles",
										['@giftmessage'] = "Gift from server",
										['@giftdata'] = json.encode(giftvehicles)
									}, function(changed2)
										local receievername = GetPlayerName(tonumber(args[1]))
										TriggerClientEvent("rtx_gift:Notify", playersource, "You send gift to "..receievername.."")
										TriggerClientEvent("rtx_gift:GiftNotify", tonumber(args[1]), "Server")
									end)														
								end
							end)	
						else
							TriggerClientEvent("rtx_gift:Notify", playersource, "Vehicle model not specifed")						
						end				
					else
						TriggerClientEvent("rtx_gift:Notify", playersource, "Player is not online")
					end			
				else
					TriggerClientEvent("rtx_gift:Notify", playersource, "Player ID not specifed")
				end
			end
		end
	end)

	RegisterCommand("givevehiclegiftall", function(source, args, raw)
		local playersource = source
		if playersource == 0 then
			local players = QBCore.Functions.GetPlayers()
			for i, playerid in ipairs(players) do
				local xTarget = QBCore.Functions.GetPlayer(playerid)
				if xTarget then
					if args[1] ~= nil then		
						local vehicleplate = GeneratePlate()
						MySQL.insert('INSERT INTO player_vehicles (license, citizenid, vehicle, hash, mods, plate, garage, state) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', {
							"gift",
							"gift",
							tostring(args[2]),
							GetHashKey(tostring(args[2])),
							'{}',
							vehicleplate,
							'pillboxgarage',
							1
						})								
						Wait(1000)
						MySQL.Async.fetchAll('SELECT * FROM player_vehicles WHERE citizenid = @citizenid AND plate = @plate', {
							['@citizenid'] = "gift",
							['@plate'] = vehicleplate
						}, function(result)
							if result[1] ~= nil then
								local giftvehicles = {}
								table.insert(giftvehicles, {vehicleid = result[1].id, vehiclelabel = tostring(args[1]), vehicleplate = vehicleplate, vehiclemodel = GetHashKey(tostring(args[2]))})
								MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
								{
									['@receiever'] = xTarget.PlayerData.citizenid,
									['@sender'] = "Server",
									['@gifttype'] = "vehicles",
									['@giftmessage'] = "Gift from server",
									['@giftdata'] = json.encode(giftvehicles)
								}, function(changed2)
									local receievername = GetPlayerName(xTarget.PlayerData.source)
									TriggerClientEvent("rtx_gift:Notify", playersource, "You send gift to "..receievername.."")
									TriggerClientEvent("rtx_gift:GiftNotify", xTarget.PlayerData.source, "Server")
								end)														
							end
						end)
					else
						TriggerClientEvent("rtx_gift:Notify", playersource, "Vehicle model not specifed")	
					end		
				end
			end	
		else
			local xPlayer = QBCore.Functions.GetPlayer(playersource)
			if QBCore.Functions.HasPermission(playersource, 'admin') or QBCore.Functions.HasPermission(playersource, 'god') then
				local players = QBCore.Functions.GetPlayers()
				for i, playerid in ipairs(players) do
					local xTarget = QBCore.Functions.GetPlayer(playerid)
					if xTarget then
						if args[1] ~= nil then		
							local vehicleplate = GeneratePlate()
							MySQL.insert('INSERT INTO player_vehicles (license, citizenid, vehicle, hash, mods, plate, garage, state) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', {
								"gift",
								"gift",
								tostring(args[2]),
								GetHashKey(tostring(args[2])),
								'{}',
								vehicleplate,
								'pillboxgarage',
								1
							})									
							Wait(1000)
							MySQL.Async.fetchAll('SELECT * FROM player_vehicles WHERE citizenid = @citizenid AND plate = @plate', {
								['@citizenid'] = "gift",
								['@plate'] = vehicleplate
							}, function(result)
								if result[1] ~= nil then
									local giftvehicles = {}
									table.insert(giftvehicles, {vehicleid = result[1].id, vehiclelabel = tostring(args[1]), vehicleplate = vehicleplate, vehiclemodel = GetHashKey(tostring(args[1]))})
									MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
									{
										['@receiever'] = xTarget.PlayerData.citizenid,
										['@sender'] = "Server",
										['@gifttype'] = "vehicles",
										['@giftmessage'] = "Gift from server",
										['@giftdata'] = json.encode(giftvehicles)
									}, function(changed2)
										local receievername = GetPlayerName(xTarget.PlayerData.source)
										TriggerClientEvent("rtx_gift:Notify", playersource, "You send gift to "..receievername.."")
										TriggerClientEvent("rtx_gift:GiftNotify", xTarget.PlayerData.source, "Server")
									end)														
								end
							end)
						else
							TriggerClientEvent("rtx_gift:Notify", playersource, "Vehicle model not specifed")	
						end		
					end
				end					
			end
		end
	end)

	RegisterCommand("giftnearvehicle", function(source, args, raw)
		local playersource = source
		if playersource == 0 then
			--
		else
			local xPlayer = QBCore.Functions.GetPlayer(playersource)
			if QBCore.Functions.HasPermission(playersource, 'admin') or QBCore.Functions.HasPermission(playersource, 'god') then
				local playerhandler = GetPlayerPed(playersource)
				local playercoords = GetEntityCoords(playerhandler)
				local players = QBCore.Functions.GetPlayers()
				for i, playerid in ipairs(players) do
					local xTarget = QBCore.Functions.GetPlayer(playerid)
					if xTarget then
						local targethandler = GetPlayerPed(playerid)
						local targetcoords = GetEntityCoords(targethandler)	
						local distancegift = #(playercoords - targetcoords)
						if distancegift < Config.NearbyGiftDistance then
							if args[1] ~= nil then		
								local vehicleplate = GeneratePlate()
								MySQL.insert('INSERT INTO player_vehicles (license, citizenid, vehicle, hash, mods, plate, garage, state) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', {
									"gift",
									"gift",
									tostring(args[2]),
									GetHashKey(tostring(args[2])),
									'{}',
									vehicleplate,
									'pillboxgarage',
									1
								})										
								Wait(1000)
								MySQL.Async.fetchAll('SELECT * FROM player_vehicles WHERE citizenid = @citizenid AND plate = @plate', {
									['@citizenid'] = "gift",
									['@plate'] = vehicleplate
								}, function(result)
									if result[1] ~= nil then
										local giftvehicles = {}
										table.insert(giftvehicles, {vehicleid = result[1].id, vehiclelabel = tostring(args[1]), vehicleplate = vehicleplate, vehiclemodel = GetHashKey(tostring(args[1]))})
										MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
										{
											['@receiever'] = xTarget.PlayerData.citizenid,
											['@sender'] = "Server",
											['@gifttype'] = "vehicles",
											['@giftmessage'] = "Gift from server",
											['@giftdata'] = json.encode(giftvehicles)
										}, function(changed2)
											local receievername = GetPlayerName(xTarget.PlayerData.source)
											TriggerClientEvent("rtx_gift:Notify", playersource, "You send gift to "..receievername.."")
											TriggerClientEvent("rtx_gift:GiftNotify", xTarget.PlayerData.source, "Server")
										end)														
									end
								end)
							else
								TriggerClientEvent("rtx_gift:Notify", playersource, "Vehicle model not specifed")	
							end	
						end
					end
				end					
			end
		end
	end)

	RegisterCommand("givevehiclegiftcitizenid", function(source, args, raw)
		local playersource = source
		if playersource == 0 then
			if args[1] ~= nil then
				if args[2] ~= nil then		
					local vehicleplate = GeneratePlate()
					MySQL.insert('INSERT INTO player_vehicles (license, citizenid, vehicle, hash, mods, plate, garage, state) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', {
						"gift",
						"gift",
						tostring(args[2]),
						GetHashKey(tostring(args[2])),
						'{}',
						vehicleplate,
						'pillboxgarage',
						1
					})							
					Wait(1000)
					MySQL.Async.fetchAll('SELECT * FROM player_vehicles WHERE citizenid = @citizenid AND plate = @plate', {
						['@citizenid'] = "gift",
						['@plate'] = vehicleplate
					}, function(result)
						if result[1] ~= nil then
							local giftvehicles = {}
							table.insert(giftvehicles, {vehicleid = result[1].id, vehiclelabel = tostring(args[2]), vehicleplate = vehicleplate, vehiclemodel = GetHashKey(tostring(args[2]))})
							MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
							{
								['@receiever'] = tostring(args[1]),
								['@sender'] = "Server",
								['@gifttype'] = "vehicles",
								['@giftmessage'] = "Gift from server",
								['@giftdata'] = json.encode(giftvehicles)
							}, function(changed2)
								local xTarget = QBCore.Functions.GetPlayerByCitizenId(tostring(args[1]))
								if xTarget then
									TriggerClientEvent("rtx_gift:GiftNotify", xTarget.PlayerData.source, "Server")
								end
							end)														
						end
					end)			
				else
														
				end					
			else
				
			end
		else
			local xPlayer = QBCore.Functions.GetPlayer(playersource)
			if QBCore.Functions.HasPermission(playersource, 'admin') or QBCore.Functions.HasPermission(playersource, 'god') then
				if args[1] ~= nil then
					if args[2] ~= nil then	
						local vehicleplate = GeneratePlate()
						MySQL.insert('INSERT INTO player_vehicles (license, citizenid, vehicle, hash, mods, plate, garage, state) VALUES (?, ?, ?, ?, ?, ?, ?, ?)', {
							"gift",
							"gift",
							tostring(args[2]),
							GetHashKey(tostring(args[2])),
							'{}',
							vehicleplate,
							'pillboxgarage',
							1
						})								
						Wait(1000)
						MySQL.Async.fetchAll('SELECT * FROM player_vehicles WHERE citizenid = @citizenid AND plate = @plate', {
							['@citizenid'] = "gift",
							['@plate'] = vehicleplate
						}, function(result)
							if result[1] ~= nil then
								local giftvehicles = {}
								table.insert(giftvehicles, {vehicleid = result[1].id, vehiclelabel = tostring(args[2]), vehicleplate = vehicleplate, vehiclemodel = GetHashKey(tostring(args[2]))})
								MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
								{
									['@receiever'] = tostring(args[1]),
									['@sender'] = "Server",
									['@gifttype'] = "vehicles",
									['@giftmessage'] = "Gift from server",
									['@giftdata'] = json.encode(giftvehicles)
								}, function(changed2)
									TriggerClientEvent("rtx_gift:Notify", playersource, "You send gift to "..tostring(args[1]).."")
									local xTarget = QBCore.Functions.GetPlayerByCitizenId(tostring(args[1]))
									if xTarget then
										TriggerClientEvent("rtx_gift:GiftNotify", xTarget.PlayerData.source, "Server")
									end
								end)														
							end
						end)
					else
						TriggerClientEvent("rtx_gift:Notify", playersource, "Vehicle model not specifed")							
					end					
				else
					TriggerClientEvent("rtx_gift:Notify", playersource, "Player identifer not specifed")
				end
			end
		end
	end)

	RegisterCommand("giveitemgiftid", function(source, args, raw)
		local playersource = source
		if playersource == 0 then
			if args[1] ~= nil then
				local xTarget = QBCore.Functions.GetPlayer(tonumber(args[1]))
				if xTarget then
					if args[2] ~= nil then	
						if args[3] ~= nil then	
							local giftitems = {}
							table.insert(giftitems, {itemname = tostring(args[2]), itemcount = tonumber(args[3]), itemlabel = QBCore.Shared.Items[tostring(args[2])]["label"]})
							MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
							{
								['@receiever'] = xTarget.PlayerData.citizenid,
								['@sender'] = "Server",
								['@gifttype'] = "items",
								['@giftmessage'] = "Gift from server",
								['@giftdata'] = json.encode(giftitems)
							}, function(changed2)
								local receievername = GetPlayerName(tonumber(args[1]))
								TriggerClientEvent("rtx_gift:GiftNotify", tonumber(args[1]), "Server")
							end)
						end									
					end				
				end			
			end
		else
			local xPlayer = QBCore.Functions.GetPlayer(playersource)
			if QBCore.Functions.HasPermission(playersource, 'admin') or QBCore.Functions.HasPermission(playersource, 'god') then
				if args[1] ~= nil then
					local xTarget = QBCore.Functions.GetPlayer(tonumber(args[1]))
					if xTarget then
						if args[2] ~= nil then	
							if args[3] ~= nil then	
								local giftitems = {}
								table.insert(giftitems, {itemname = tostring(args[2]), itemcount = tonumber(args[3]), itemlabel = QBCore.Shared.Items[tostring(args[2])]["label"]})
								MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
								{
									['@receiever'] = xTarget.PlayerData.citizenid,
									['@sender'] = "Server",
									['@gifttype'] = "items",
									['@giftmessage'] = "Gift from server",
									['@giftdata'] = json.encode(giftitems)
								}, function(changed2)
									local receievername = GetPlayerName(tonumber(args[1]))
									TriggerClientEvent("rtx_gift:Notify", playersource, "You send gift to "..receievername.."")
									TriggerClientEvent("rtx_gift:GiftNotify", tonumber(args[1]), "Server")
								end)
							else
								TriggerClientEvent("rtx_gift:Notify", playersource, "Item count not specifed")	
							end
						else
							TriggerClientEvent("rtx_gift:Notify", playersource, "Item name not specifed")									
						end				
					else
						TriggerClientEvent("rtx_gift:Notify", playersource, "Player is not online")
					end			
				else
					TriggerClientEvent("rtx_gift:Notify", playersource, "Player ID not specifed")
				end
			end
		end
	end)

	RegisterCommand("giveitemgiftall", function(source, args, raw)
		local playersource = source
		if playersource == 0 then
			local players = QBCore.Functions.GetPlayers()
			for i, playerid in ipairs(players) do
				local xTarget = QBCore.Functions.GetPlayer(playerid)
				if xTarget then
					if args[1] ~= nil then	
						if args[2] ~= nil then	
							local giftitems = {}
							table.insert(giftitems, {itemname = tostring(args[1]), itemcount = tonumber(args[2]), itemlabel = QBCore.Shared.Items[tostring(args[1])]["label"]})
							MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
							{
								['@receiever'] = xTarget.PlayerData.citizenid,
								['@sender'] = "Server",
								['@gifttype'] = "items",
								['@giftmessage'] = "Gift from server",
								['@giftdata'] = json.encode(giftitems)
							}, function(changed2)
								local receievername = GetPlayerName(xTarget.PlayerData.source)
								TriggerClientEvent("rtx_gift:GiftNotify", xTarget.PlayerData.source, "Server")
							end)
						end							
					end				
				end
			end
		else
			local xPlayer = QBCore.Functions.GetPlayer(playersource)
			if QBCore.Functions.HasPermission(playersource, 'admin') or QBCore.Functions.HasPermission(playersource, 'god') then
				local players = QBCore.Functions.GetPlayers()
				for i, playerid in ipairs(players) do
					local xTarget = QBCore.Functions.GetPlayer(playerid)
					if xTarget then
						if args[1] ~= nil then	
							if args[2] ~= nil then	
								local giftitems = {}
								table.insert(giftitems, {itemname = tostring(args[1]), itemcount = tonumber(args[2]), itemlabel = QBCore.Shared.Items[tostring(args[1])]["label"]})
								MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
								{
									['@receiever'] = xTarget.PlayerData.citizenid,
									['@sender'] = "Server",
									['@gifttype'] = "items",
									['@giftmessage'] = "Gift from server",
									['@giftdata'] = json.encode(giftitems)
								}, function(changed2)
									local receievername = GetPlayerName(xTarget.PlayerData.source)
									TriggerClientEvent("rtx_gift:Notify", playersource, "You send gift to "..receievername.."")
									TriggerClientEvent("rtx_gift:GiftNotify", xTarget.PlayerData.source, "Server")
								end)
							else
								TriggerClientEvent("rtx_gift:Notify", playersource, "Item count not specifed")	
							end
						else
							TriggerClientEvent("rtx_gift:Notify", playersource, "Item name not specifed")									
						end				
					end
				end
			end
		end
	end)

	RegisterCommand("giftnearitem", function(source, args, raw)
		local playersource = source
		if playersource == 0 then
			--
		else
			local xPlayer = QBCore.Functions.GetPlayer(playersource)
			if QBCore.Functions.HasPermission(playersource, 'admin') or QBCore.Functions.HasPermission(playersource, 'god') then
				local playerhandler = GetPlayerPed(playersource)
				local playercoords = GetEntityCoords(playerhandler)
				local players = QBCore.Functions.GetPlayers()
				for i, playerid in ipairs(players) do
					local xTarget = QBCore.Functions.GetPlayer(playerid)
					if xTarget then
						local targethandler = GetPlayerPed(playerid)
						local targetcoords = GetEntityCoords(targethandler)	
						local distancegift = #(playercoords - targetcoords)
						if distancegift < Config.NearbyGiftDistance then				
							if args[1] ~= nil then	
								if args[2] ~= nil then	
									local giftitems = {}
									table.insert(giftitems, {itemname = tostring(args[1]), itemcount = tonumber(args[2]), itemlabel = QBCore.Shared.Items[tostring(args[1])]["label"]})
									MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
									{
										['@receiever'] = xTarget.PlayerData.citizenid,
										['@sender'] = "Server",
										['@gifttype'] = "items",
										['@giftmessage'] = "Gift from server",
										['@giftdata'] = json.encode(giftitems)
									}, function(changed2)
										local receievername = GetPlayerName(xTarget.PlayerData.source)
										TriggerClientEvent("rtx_gift:Notify", playersource, "You send gift to "..receievername.."")
										TriggerClientEvent("rtx_gift:GiftNotify", xTarget.PlayerData.source, "Server")
									end)
								else
									TriggerClientEvent("rtx_gift:Notify", playersource, "Item count not specifed")	
								end
							else
								TriggerClientEvent("rtx_gift:Notify", playersource, "Item name not specifed")									
							end	
						end
					end
				end								
			end
		end
	end)

	RegisterCommand("giveitemgiftcitizenid", function(source, args, raw)
		local playersource = source
		if playersource == 0 then
			if args[1] ~= nil then
				if args[2] ~= nil then	
					if args[3] ~= nil then	
						local giftitems = {}
						table.insert(giftitems, {itemname = tostring(args[2]), itemcount = tonumber(args[3]), itemlabel = QBCore.Shared.Items[tostring(args[2])]["label"]})
						MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
						{
							['@receiever'] = tostring(args[1]),
							['@sender'] = "Server",
							['@gifttype'] = "items",
							['@giftmessage'] = "Gift from server",
							['@giftdata'] = json.encode(giftitems)
						}, function(changed2)
							local xTarget = QBCore.Functions.GetPlayerByCitizenId(tostring(args[1]))
							if xTarget then
								TriggerClientEvent("rtx_gift:GiftNotify", xTarget.PlayerData.source, "Server")
							end
						end)
					end								
				end					
			end
		else
			local xPlayer = QBCore.Functions.GetPlayer(playersource)
			if QBCore.Functions.HasPermission(playersource, 'admin') or QBCore.Functions.HasPermission(playersource, 'god') then
				if args[1] ~= nil then
					if args[2] ~= nil then	
						if args[3] ~= nil then	
							local giftitems = {}
							table.insert(giftitems, {itemname = tostring(args[2]), itemcount = tonumber(args[3]), itemlabel = QBCore.Shared.Items[tostring(args[2])]["label"]})
							MySQL.Async.execute('INSERT INTO gifts (receiever, sender, gifttype, giftmessage, giftdata) VALUES (@receiever,@sender,@gifttype,@giftmessage,@giftdata)',
							{
								['@receiever'] = tostring(args[1]),
								['@sender'] = "Server",
								['@gifttype'] = "items",
								['@giftmessage'] = "Gift from server",
								['@giftdata'] = json.encode(giftitems)
							}, function(changed2)
								TriggerClientEvent("rtx_gift:Notify", playersource, "You send gift to "..tostring(args[1]).."")
								local xTarget = QBCore.Functions.GetPlayerByCitizenId(tostring(args[1]))
								if xTarget then
									TriggerClientEvent("rtx_gift:GiftNotify", xTarget.PlayerData.source, "Server")
								end
							end)
						else
							TriggerClientEvent("rtx_gift:Notify", playersource, "Item count not specifed")	
						end
					else
						TriggerClientEvent("rtx_gift:Notify", playersource, "Item name not specifed")									
					end					
				else
					TriggerClientEvent("rtx_gift:Notify", playersource, "Player identifer not specifed")
				end
			end
		end
	end)
end