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
local jobName = "LUMBERJACK"
local emoji = "🪓"
local jobID = 2 -- Enter the matching number in the Jobs list in config.lua

ConfigJob[jobID] = {
    name = jobName,
    requireItem = false,
    requiredItem = "axe",
    wardrobe = {
        coord = vector3(-568.09, 5253.01, 70.49),
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
        vehCoords = vector3(-550.72, 5266.5, 73.59),
        vehHeading = 158.1,
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
            coord = vector3(-600.3, 5505.27, 51.24),
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
            prop = "prop_tool_fireaxe",
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
            processLabel = "Cutting down the tree",
            cameraDistance = -3.2,
            cameraRotation = 180,
            giveItem = "wood",
            giveItemAmount = 5
        },
        [2] = { -- PROCESS1
            coord = vector3(-476.88, 5316.3, 80.61),
            blipSprite = 536,
            blipColor = 5,
            blipScale = 0.9,
            blipText = emoji .. jobName .. " - Process",
            markerType = 23,
            markerRGB = {
                r = 73,
                g = 196,
                b = 137
            },
            dict = "missheistdockssetup1ig_10@base",
            animation = "talk_pipe_base_worker1",
            prop = "",
            propBone = nil,
            propPlacement = {},
            propRotation = {},
            cameraDistance = -3.2,
            cameraRotation = 180,
            removeItem = "wood",
            removeItemsAmount = 5,
            processTime = 30000,
            processLabel = "Processing wood",
            giveItem = "processedwood",
            giveItemAmount = 5,
            useProp = true,
            propCoord = vector3(-476.88, 5316.3, 80.61),
            propName = "prop_tablesaw_01",
            propHeading = 66.94
        },
        [3] = { -- PROCESS2
            coord = vector3(-494.39, 5264.28, 79.62),
            blipSprite = 537,
            blipColor = 5,
            blipScale = 0.9,
            blipText = emoji .. jobName .. " - Cutting process",
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
            removeItem = "processedwood",
            removeItemsAmount = 5,
            processLabel = "Cutting processed wood",
            giveItem = "woodenplanks",
            giveItemAmount = 1,
            useProp = true,
            propCoord = vector3(-494.39, 5264.28, 79.62),
            propName = "prop_bandsaw_01",
            propHeading = 66.94
        },
        [4] = { -- SELL
            coord = {vector4(2704.49, 3454.12, 54.66, 147.37)},
            blipSprite = 280,
            blipColor = 5,
            blipScale = 0.9,
            blipText = emoji .. jobName .. " - Buyer",
            NPCModel = "s_m_m_cntrybar_01",
            dict = "mp_ped_interaction",
            animation = "handshake_guy_a",
            NPCHeading = 157.91,
            removeItem = "woodenplanks",
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
        [1] = vector3(-590.87, 5494.18, 54.11),
        [2] = vector3(-585.39, 5490.9, 55.44),
        [3] = vector3(-572.92, 5507.82, 55.71),
        [4] = vector3(-568.02, 5503.06, 57.34),
        [5] = vector3(-617.76, 5489.57, 51.62),
        [6] = vector3(-619.49, 5498.4, 51.27),
        [7] = vector3(-615.77, 5511.68, 50.8),
        [8] = vector3(-611.91, 5515.78, 50.33),
        [9] = vector3(-606.49, 5521.33, 50.28),
        [10] = vector3(-577.17, 5526.5, 52.65)
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
