-- Zones for Menues
Config = Config or {}
Config.UseTarget = false
--Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.BossMenus = {
    ['police'] = {
        vector3(460.59, -985.64, 30.73),
    },
    ['ambulance'] = {
        vector3(312.82, -594.46, 43.28),
    },
    ['realestate'] = {
        vector3(-716.11, 261.21, 84.14),
    },
    ['taxi'] = {
        vector3(894.96, -179.07, 74.7),
    },
    ['cardealer'] = {
        vector3(-27.47, -1107.13, 27.27),
    },
    ['mechanic'] = {
        vector3(-339.53, -156.44, 44.59),
    },
}

Config.BossMenuZones = {
    ['police'] = {
        { coords = vector3(460.59, -985.64, 30.73), length = 1.35, width = 1.45, heading = 351.0, minZ = 30.00, maxZ = 31.73 }, },
    ['ambulance'] = {
        { coords = vector3(312.82, -594.46, 43.28), length = 1.2, width = 1.45, heading = 25.0, minZ = 43.00, maxZ = 43.88 },
    },
    ['realestate'] = {
        { coords = vector3(-716.11, 261.21, 84.14), length = 0.6, width = 1.0, heading = 25.0, minZ = 83.943, maxZ = 84.74 },
    },
    ['taxi'] = {
        { coords = vector3(894.96, -179.07, 74.7), length = 1.0, width = 3.4, heading = 327.0, minZ = 73.17, maxZ = 74.57 },
    },
    ['cardealer'] = {
        { coords = vector3(-27.47, -1107.13, 27.27), length = 2.4, width = 1.05, heading = 340.0, minZ = 27.07, maxZ = 27.67 },
    },
    ['mechanic'] = {
        { coords = vector3(-339.53, -156.44, 44.59), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },
	['chickfila'] = {
    vector3(-1035.65, -1371.11, 5.52), --place this in qb-management/client/cl_config.lua
	},
	['dominos'] = {
		vector3(541.36, 114.08, 96.57), --place this in qb-management/client/cl_config.lua
	},
	['dunkin'] = {
		vector3(-584.77, -883.61, 25.95), --place this in qb-management/client/cl_config.lua
	},
	['icebox'] = {
		vector3(-1258.61, -805.02, 17.09), --place this in qb-management/client/cl_config.lua
	},
	['mcdonalds'] = {
		vector3(84.36, 293.48, 110.21), --place this in qb-management/client/cl_config.lua
	},
	['pearls'] = {
		vector3(-1837.34, -1178.89, 19.22), --place this in qb-management/client/cl_config.lua
	},
	['popeyes'] = {
		vector3(179.1, -1456.12, 29.13), --place this in qb-management/client/cl_config.lua
	},
	['taco'] = {
		vector3(20.22, -1602.11, 29.38), --place this in qb-management/client/cl_config.lua
	},
	['wingstop'] = {
		vector3(1244.08, -352.53, 69.18), --place this in qb-management/client/cl_config.lua
	},
	['aldentes'] = {
		vector3(-586.05, -607.51, 34.68), --place this in qb-management/client/cl_config.lua
	},
	['cluckinbell'] = {
		vector3(-586.04, -597.81, 34.68), --place this in qb-management/client/cl_config.lua
	},
	['craftbar'] = {
		vector3(119.04, -1045.56, 29.31), --place this in qb-management/client/cl_config.lua
	},
}

Config.GangMenus = {
    ['lostmc'] = {
        vector3(0, 0, 0),
    },
    ['ballas'] = {
        vector3(0, 0, 0),
    },
    ['vagos'] = {
        vector3(0, 0, 0),
    },
    ['cartel'] = {
        vector3(0, 0, 0),
    },
    ['families'] = {
        vector3(0, 0, 0),
    },
}

Config.GangMenuZones = {
    --[[
    ['gangname'] = {
        { coords = vector3(0.0, 0.0, 0.0), length = 0.0, width = 0.0, heading = 0.0, minZ = 0.0, maxZ = 0.0 },
    },
    ]]
}
