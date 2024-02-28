---@param stations { { name: string, label: string, coords: vector4 } }

CreateThread(function()
    while true do
        local inRange = false
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        
        for key, value in pairs(stations) do
            value.coords = vector3(value.coords.xyz)
            local dist = #(pos - value.coords)

            if dist < 10 then
                inRange = true
                if dist < 2.5 then
                    drawText3D(vector3(value.coords.x, value.coords.y, value.coords.z + 1.0), ('[~g~E~w~] %s'):format(value.label))
                    if IsControlJustPressed(0, 38) then -- E
                        for k, v in pairs(config.stations) do
                            if k == value.name then
                                v.handler()
                            end
                        end
                    end
                end
            end
        end
        
        if not inRange then
            Wait(1000)
        end

        Wait(3)
    end
end)

---@param data { name: string, label: string, coords: vector4 }
function addStation(data)
    stations[#stations+1] = data
end
