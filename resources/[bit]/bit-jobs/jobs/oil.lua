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
local jobName = "OIL"
local emoji = "🛢️"
local jobID = 4 -- Enter the matching number in the Jobs list in config.lua

ConfigJob[jobID] = {
    name = jobName,
    requireItem = false,
    requiredItem = "wrench",
    wardrobe = {
        coord = vector3(596.85, 2929.43, 40.92),
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
        vehCoords = vector3(601.08, 2940.48, 40.56),
        vehHeading = 262.54,
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
            coord = vector3(567.42, 2908.94, 39.98),
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
            dict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
            animation = "machinic_loop_mechandplayer",
            prop = "",
            propBone = nil,
            propPlacement = {},
            propRotation = {},
            processTime = 30000,
            processLabel = "Handling machinery",
            cameraDistance = 3.2,
            cameraRotation = 360,
            giveItem = "crudeoil",
            giveItemAmount = 5
        },
        [2] = { -- PROCESS
            coord = vector3(220.99, 2774.26, 45.66),
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
            dict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
            animation = "machinic_loop_mechandplayer",
            prop = "",
            propBone = nil,
            propPlacement = {},
            propRotation = {},
            cameraDistance = -3.2,
            cameraRotation = 180,
            removeItem = "crudeoil",
            removeItemsAmount = 5,
            processTime = 30000,
            processLabel = "Processing crude oil",
            giveItem = "gasoline",
            giveItemAmount = 2,
            useProp = false,
            propCoord = nil,
            propName = "",
            propHeading = 0.0
        },
        [3] = { -- PROCESS2
            coord = vector3(0.0, 0.0, 0.0),
            blipSprite = nil,
            blipColor = nil,
            blipScale = nil,
            blipText = "",
            markerType = nil,
            markerRGB = {
                r = nil,
                g = nil,
                b = nil
            },
            dict = "",
            animation = "",
            prop = "",
            propBone = nil,
            propPlacement = {},
            propRotation = {},
            cameraDistance = nil,
            cameraRotation = nil,
            processTime = nil,
            removeItem = "",
            removeItemsAmount = nil,
            processLabel = "",
            giveItem = "",
            giveItemAmount = nil,
            useProp = false
        },
        [4] = { -- SELL
            coord = {vector4(1689.08, 6438.85, 31.52, 147.37)},
            blipSprite = 280,
            blipColor = 5,
            blipScale = 0.9,
            blipText = emoji .. jobName .. " - Buyer",
            NPCModel = "s_m_m_cntrybar_01",
            dict = "mp_ped_interaction",
            animation = "handshake_guy_a",
            NPCHeading = 163.22,
            removeItem = "gasoline",
            itemMinium = 1,
            giveMoney = true,
            moneyEarned = 2000,
            giveItem = false,
            itemEarned = "",
            itemAmount = 0,
            teleportToWardrobe = false
        }
    },
    ActionPoints = {
        [1] = vector3(586.62, 2924.43, 40.91),
        [2] = vector3(544.23, 2882.61, 42.89),
        [3] = vector3(615.29, 2853.86, 39.96),
        [4] = vector3(497.23, 2951.4, 42.41),
        [5] = vector3(601.93, 3024.4, 42.01),
        [6] = vector3(645.54, 3011.02, 43.28)
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
