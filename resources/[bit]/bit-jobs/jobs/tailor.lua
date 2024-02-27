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
local jobName = "TAILOR"
local emoji = "👕"
local jobID = 8 -- Enter the matching number in the Jobs list in config.lua

ConfigJob[jobID] = {
    name = jobName,
    requireItem = false,
    requiredItem = "sewingneedle",
    wardrobe = {
        coord = vector3(705.98, -960.86, 30.4),
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
        vehCoords = vector3(706.85, -979.95, 23.72),
        vehHeading = 48.56,
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
            coord = vector3(262.04, 6611.8, 29.92),
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
            dict = "creatures@rottweiler@tricks@",
            animation = "petting_franklin",
            prop = "",
            propBone = nil,
            propPlacement = {},
            propRotation = {},
            processTime = 5000,
            processLabel = "Picking cotton",
            cameraDistance = 3.2,
            cameraRotation = 360,
            giveItem = "cotton",
            giveItemAmount = 5
        },
        [2] = { -- PROCESS
            coord = vector3(711.47, -969.7, 30.4),
            blipSprite = 536,
            blipColor = 5,
            blipScale = 0.9,
            blipText = emoji .. jobName .. " - Fabric",
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
            cameraDistance = -3.2,
            cameraRotation = 180,
            removeItem = "cotton",
            removeItemsAmount = 5,
            processTime = 30000,
            processLabel = "Creating fabric",
            giveItem = "fabric",
            giveItemAmount = 5,
            useProp = false,
            propCoord = nil,
            propName = "",
            propHeading = 0.0
        },
        [3] = { -- PROCESS2
            coord = vector3(1150.28, -1642.36, 36.33),
            blipSprite = 537,
            blipColor = 5,
            blipScale = 0.9,
            blipText = emoji .. jobName .. " - Shirts",
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
            removeItem = "fabric",
            removeItemsAmount = 5,
            processLabel = "Creating shirts",
            giveItem = "shirts",
            giveItemAmount = 1,
            useProp = true,
            propCoord = vector3(1150.28, -1642.36, 35.33),
            propName = "gr_prop_gr_bench_03b",
            propHeading = 300.04
        },
        [4] = { -- SELL
            coord = {vector4(2030.18, 4980.34, 41.1, 312.25)},
            blipSprite = 280,
            blipColor = 5,
            blipScale = 0.9,
            blipText = emoji .. jobName .. " - Buyer",
            NPCModel = "s_m_m_cntrybar_01",
            dict = "mp_ped_interaction",
            animation = "handshake_guy_a",
            NPCHeading = 292.64,
            removeItem = "shirts",
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
        [1] = vector3(280.81, 6619.29, 29.79),
        [2] = vector3(284.97, 6609.26, 30.24),
        [3] = vector3(273.54, 6599.49, 30.24),
        [4] = vector3(250.81, 6600.2, 30.11),
        [5] = vector3(239.8, 6612.69, 29.81),
        [6] = vector3(258.53, 6614.82, 29.71)
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
