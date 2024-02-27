-- $$$$$$\   $$$$$$\  $$\   $$\ $$$$$$$$\ $$$$$$\  $$$$$$\  $$\   $$\ $$$$$$$\   $$$$$$\ $$$$$$$$\ $$$$$$\  $$$$$$\  $$\   $$\ 
-- $$  __$$\ $$  __$$\ $$$\  $$ |$$  _____|\_$$  _|$$  __$$\ $$ |  $$ |$$  __$$\ $$  __$$\\__$$  __|\_$$  _|$$  __$$\ $$$\  $$ |
-- $$ /  \__|$$ /  $$ |$$$$\ $$ |$$ |        $$ |  $$ /  \__|$$ |  $$ |$$ |  $$ |$$ /  $$ |  $$ |     $$ |  $$ /  $$ |$$$$\ $$ |
-- $$ |      $$ |  $$ |$$ $$\$$ |$$$$$\      $$ |  $$ |$$$$\ $$ |  $$ |$$$$$$$  |$$$$$$$$ |  $$ |     $$ |  $$ |  $$ |$$ $$\$$ |
-- $$ |      $$ |  $$ |$$ \$$$$ |$$  __|     $$ |  $$ |\_$$ |$$ |  $$ |$$  __$$< $$  __$$ |  $$ |     $$ |  $$ |  $$ |$$ \$$$$ |
-- $$ |  $$\ $$ |  $$ |$$ |\$$$ |$$ |        $$ |  $$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |  $$ |     $$ |  $$ |  $$ |$$ |\$$$ |
-- \$$$$$$  | $$$$$$  |$$ | \$$ |$$ |      $$$$$$\ \$$$$$$  |\$$$$$$  |$$ |  $$ |$$ |  $$ |  $$ |   $$$$$$\  $$$$$$  |$$ | \$$ |
-- \______/  \______/ \__|  \__|\__|      \______| \______/  \______/ \__|  \__|\__|  \__|  \__|   \______| \______/ \__|  \__|
-- ANIMATIONS LIST: https://github.com/andristum/dpemotes/blob/master/Client/AnimationList.lua
-- PROPS: https://forge.plebmasters.de
-- PEDS: https://docs.fivem.net/docs/game-references/ped-models
-- VEHICLES: https://wiki.rage.mp/index.php?title=Vehicles
-- BLIPS & COLORS: https://docs.fivem.net/docs/game-references/blips/
-- MARKERS: https://docs.fivem.net/docs/game-references/markers/
-- EMOJIS: https://emojipedia.org/
local jobName = "MINER"
local emoji = "⛏️"
local jobID = 1 -- Enter the matching number in the Jobs list in config.lua

ConfigJob[jobID] = {
    name = jobName,
    requireItem = false,
    requiredItem = "pickaxe",
    wardrobe = {
        coord = vector3(2569.44, 2720.13, 42.94),
        wardrobeName = emoji .. jobName .. " - Wardrobe",
        wardrobeBlipSprite = 73,
        wardrobeBlipColor = 5,
        wardrobeBlipScale = 0.9,
        wardrobeMarkerRGB = {
            r = 73,
            g = 196,
            b = 137
        },
        wardrobeMarkerType = 23,
        wardrobeMarkerText = "🦺\n " .. jobName .. " Wardrobe"
    },
    vehicle = {
        useVehicle = true,
        vehModel = "rebel",
        vehCoords = vector3(2569.51, 2733.42, 43.18),
        vehHeading = 26.46,
        vehBlipSprite = 67,
        vehBlipText = "Job Vehicle",
        vehBlipColor = 5,
        vehBlipScale = 0.9
    },
    actionsProps = {
        use = false,
        propName = ""
    },
    jobSteps = {
        [1] = { -- MISSION
            coord = vector3(2947.09, 2797.07, 40.81),
            blipSprite = 535,
            blipColor = 5,
            blipScale = 0.9,
            blipText = emoji .. jobName .. " - Job",
            markerType = 23,
            markerRGB = {
                r = 73,
                g = 196,
                b = 137
            },
            actionIcon = emoji,
            dict = "melee@large_wpn@streamed_core",
            animation = "ground_attack_on_spot",
            prop = "prop_tool_pickaxe",
            propBone = 57005,
            propPlacement = {
                x = 0.1,
                y = -0.1,
                z = -0.02
            },
            propRotation = {
                x = 80.0,
                y = 0.0,
                z = 170.0
            },
            processTime = 5000,
            processLabel = "Chopping rocks",
            cameraDistance = 3.2,
            cameraRotation = 360,
            giveItem = "stones",
            giveItemAmount = 5
        },
        [2] = { -- PROCESS1
            coord = vector3(2189.96, 3874.06, 29.73),
            blipSprite = 536,
            blipColor = 5,
            blipScale = 0.9,
            blipText = emoji .. jobName .. " - Clean",
            markerType = 23,
            markerRGB = {
                r = 73,
                g = 196,
                b = 137
            },
            dict = "anim@amb@drug_field_workers@rake@male_a@base",
            animation = "base",
            prop = "prop_tool_shovel006",
            propBone = 28422,
            propPlacement = {
                x = 0.0,
                y = 0.1,
                z = -0.6
            },
            propRotation = {
                x = 0.0,
                y = 0.0,
                z = 180.0
            },
            cameraDistance = -3.2,
            cameraRotation = 180,
            removeItem = "stones",
            removeItemsAmount = 5,
            processTime = 30000,
            processLabel = "Cleaning stones",
            giveItem = "cleanstones",
            giveItemAmount = 5,
            useProp = false,
            propCoord = nil,
            propName = "",
            propHeading = 0.0
        },
        [3] = { -- PROCESS2
            coord = vector3(2754.94, 2800.7, 33.97),
            blipSprite = 537,
            blipColor = 5,
            blipScale = 0.9,
            blipText = emoji .. jobName .. " - Extract",
            markerType = 23,
            markerRGB = {
                r = 73,
                g = 196,
                b = 137
            },
            dict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
            animation = "machinic_loop_mechandplayer",
            prop = "",
            propBone = nil,
            propPlacement = {},
            propRotation = {},
            cameraDistance = -4.2,
            cameraRotation = 180,
            processTime = 30000,
            removeItem = "cleanstones",
            removeItemsAmount = 5,
            processLabel = "Extracting ore",
            giveItem = "topaz",
            giveItemAmount = 1,
            useProp = false,
            propCoord = nil,
            propName = "",
            propHeading = 0.0
        },
        [4] = { -- SELL
            coord = {vector4(335.53, -874.81, 28.29, 2.64), vector4(-536.69, 30.22, 43.57, 139.84),
                     vector4(66.61, -137.43, 54.04, 188.7), vector4(-389.91, 6050.95, 30.5, 90.98)},
            blipSprite = 280,
            blipColor = 5,
            blipScale = 0.9,
            blipText = emoji .. jobName .. " - Buyer",
            NPCModel = "s_m_m_bouncer_01",
            dict = "mp_ped_interaction",
            animation = "handshake_guy_a",
            removeItem = "topaz",
            itemMinium = 1,
            giveMoney = true,
            moneyEarned = 5000,
            giveItem = false,
            itemEarned = "",
            itemAmount = 0,
            teleportToWardrobe = false
        }
    },
    ActionPoints = {
        [1] = vector3(2938.21, 2812.96, 43.43),
        [2] = vector3(2921.57, 2798.52, 42.3),
        [3] = vector3(2926.3, 2791.97, 41.19),
        [4] = vector3(2937.43, 2771.88, 39.89),
        [5] = vector3(2934.63, 2784.51, 40.25),
        [6] = vector3(2926.26, 2813.36, 45.66),
        [7] = vector3(2947.65, 2768.27, 38.95),
        [8] = vector3(2951.99, 2768.28, 39.87),
        [9] = vector3(2968.0, 2775.59, 39.02),
        [10] = vector3(2950.94, 2816.27, 42.84)
    }
}

-- $$$$$$\  $$\       $$$$$$\ $$$$$$$$\ $$\   $$\ $$$$$$$$\  $$$$$$\  
-- $$  __$$\ $$ |     $$  __$$\\__$$  __|$$ |  $$ |$$  _____|$$  __$$\ 
-- $$ /  \__|$$ |     $$ /  $$ |  $$ |   $$ |  $$ |$$ |      $$ /  \__|
-- $$ |      $$ |     $$ |  $$ |  $$ |   $$$$$$$$ |$$$$$\    \$$$$$$\  
-- $$ |      $$ |     $$ |  $$ |  $$ |   $$  __$$ |$$  __|    \____$$\ 
-- $$ |  $$\ $$ |     $$ |  $$ |  $$ |   $$ |  $$ |$$ |      $$\   $$ |
-- \$$$$$$  |$$$$$$$$\ $$$$$$  |  $$ |   $$ |  $$ |$$$$$$$$\ \$$$$$$  |
-- \______/ \________|\______/   \__|   \__|  \__|\________| \______/

if Config.Framework == "esx" then
    Clothes[jobID] = {
        male = {
            ['tshirt_1'] = 59,
            ['tshirt_2'] = 0,
            ['torso_1'] = 56,
            ['torso_2'] = 0,
            ['decals_1'] = 0,
            ['decals_2'] = 0,
            ['arms'] = 41,
            ['pants_1'] = 9,
            ['pants_2'] = 7,
            ['shoes_1'] = 27,
            ['shoes_2'] = 0,
            ['helmet_1'] = 0,
            ['helmet_2'] = 0,
            ['chain_1'] = 0,
            ['chain_2'] = 0,
            ['ears_1'] = 0,
            ['ears_2'] = 0
        },
        female = {
            ['tshirt_1'] = 36,
            ['tshirt_2'] = 1,
            ['torso_1'] = 48,
            ['torso_2'] = 0,
            ['decals_1'] = 0,
            ['decals_2'] = 0,
            ['arms'] = 44,
            ['pants_1'] = 34,
            ['pants_2'] = 0,
            ['shoes_1'] = 27,
            ['shoes_2'] = 0,
            ['helmet_1'] = 45,
            ['helmet_2'] = 0,
            ['chain_1'] = 0,
            ['chain_2'] = 0,
            ['ears_1'] = 2,
            ['ears_2'] = 0
        }
    }
elseif Config.Framework == "qb" then
    ClothesMale[jobID] = {
        outfitData = {
            ['pants'] = {
                item = 9,
                texture = 0
            },
            ['arms'] = {
                item = 41,
                texture = 0
            },
            ['t-shirt'] = {
                item = 59,
                texture = 0
            },
            ['vest'] = {
                item = 0,
                texture = 0
            },
            ['torso2'] = {
                item = 56,
                texture = 0
            },
            ['shoes'] = {
                item = 27,
                texture = 0
            },
            ['accessory'] = {
                item = 0,
                texture = 0
            },
            ['bag'] = {
                item = 0,
                texture = 0
            },
            ['hat'] = {
                item = 0,
                texture = 0
            },
            ['glass'] = {
                item = 0,
                texture = 0
            },
            ['mask'] = {
                item = 0,
                texture = 0
            }
        }
    }
    ClothesFemale[jobID] = {
        outfitData = {
            ['pants'] = {
                item = 45,
                texture = 0
            },
            ['arms'] = {
                item = 2,
                texture = 0
            },
            ['t-shirt'] = {
                item = 36,
                texture = 0
            },
            ['vest'] = {
                item = 0,
                texture = 0
            },
            ['torso2'] = {
                item = 30,
                texture = 1
            },
            ['shoes'] = {
                item = 25,
                texture = 0
            },
            ['accessory'] = {
                item = 0,
                texture = 0
            },
            ['bag'] = {
                item = 0,
                texture = 0
            },
            ['hat'] = {
                item = 0,
                texture = 0
            },
            ['glass'] = {
                item = 0,
                texture = 0
            },
            ['mask'] = {
                item = 0,
                texture = 0
            }
        }
    }

end
