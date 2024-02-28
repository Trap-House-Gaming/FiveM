config = config or {
    savePropsInDatabase = true, -- keeps the props in the database and prevents it from being removed after a restart.
    placeDistance = 3.0, -- more than this distance prevents the player from setting or removing the table.
    plantAnimation = { -- setup animation
        task = 'WORLD_HUMAN_HAMMERING',
        flags = 16
    },
    outlineColors = {
        { 18, 124, 252, 100}, -- the outline color of the propeller when it can be put. (r, g, b, a)
        { 235, 52, 58, 100} -- the outline color of the propeller when it can't be put. (r, g, b, a)
    },
    imagePath = 'nui://qb-inventory/html/images',
    stations = {
        ['workbench_1'] = {
            label = 'Workbench 1', -- table name
            model = 'gr_prop_gr_bench_04a', -- prop model
            setupTime = 6000, -- plant time (ms)
            offset = vector3(0.0, 0.0, -1.255), -- prop offset
            coords = { -- default spawn coords
                vector4(-1049.33, -3012.24, 11.71, 148.19)
            },
            handler = function()
                TriggerEvent('nuxt-crafting:client:openStation', 'craft', {
                    tier = 1
                })
            end
        },
        ['workbench_2'] = {
            label = 'Workbench 2', -- table name
            model = 'gr_prop_gr_bench_04b', -- prop model
            setupTime = 6000, -- plant time (ms)
            coords = { -- default spawn coords
                vector4(-1004.04, -2695.73, 13.83, 246.68)
            },
            handler = function()
                TriggerEvent('nuxt-crafting:client:openStation', 'craft', {
                    tier = 2
                })
            end
        },
        ['workbench_3'] = {
            label = 'Workbench 3', -- table name
            model = 'gr_prop_gr_bench_01b', -- prop model
            setupTime = 6000, -- plant time (ms)
            coords = { -- default spawn coords
                vector4(-1000.97, -2690.91, 13.83, 242.89)
            },
            handler = function()
                TriggerEvent('nuxt-crafting:client:openStation', 'craft', {
                    tier = 3
                })
            end
        },
        ['researching_table'] = {
            label = 'Research', -- table name
            model = 'prop_tool_bench02', -- prop model
            setupTime = 6000, -- plant time (ms)
            coords = { -- default spawn coords
                vector4(-998.45, -2686.42, 13.83, 241.35)
            },
            handler = function()
                TriggerEvent('nuxt-crafting:client:openStation', 'research')
            end
        }
    },
    items = {
        {
            name = 'weapon_heavypistol', -- item name.
            amount = 1, -- amount of item.
            tier = 3, -- workbench level for item.
            researchRequired = true, -- research required.
            researchCost = { -- researching cost.
                {
                    name = 'metalscrap',
                    amount = 3
                }               
            },
            craftingCost = { -- crafting cost.
                {
                    name = 'steel',
                    amount = 5
                }
            }
        }      
    },
    lang = 'en', -- language to use.
    locales = {
        ['en'] = {
            confirm = 'Confirm',
            cancel = 'Cancel',
            rotate_left = 'Rotate Left',
            rotate_right = 'Rotate Right',
            station_planting = 'Station is being set up...',
            process_canceled = 'Process canceled.',
            no_station_nearby = 'No stations found nearby.',
            you_cant = 'You can\'t do it.',
            tier = 'TIER',
            workbench = 'WORKBENCH',
            item_crafting = 'All products you can crafting!',
            item_not_found = 'Opss.. item not found',
            item_need_crafting = 'Items Need For Crafting',
            craft = 'CRAFT',
            choose_item = 'Opss.. you have to choose an item',
            item_researching = 'All products you can research!',
            item_need_researching = 'Items Need For Researching',
            already_researched ='This item has already been researched.',
            research = 'RESEARCH',
            research_items = 'ESEARCH ITEMS',
        }
    }
}
