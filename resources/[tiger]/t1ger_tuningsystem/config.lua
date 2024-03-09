Config = {
	Debug = false, -- set  to false to disable debug
	SyncToDatabase = 1,  -- time in minutes to data from server file to database
	
	Items = {
		['mods'] = {
			[1] = {name = 'mod_respray', label = 'Respray', id = 'respray', price = 500, icon = 'https://i.ibb.co/T0q9bgj/mod-respray.png'}, -- respray (primary, secondary, pealesceant), wheel color, interior color, dashboard color
			[2] = {name = 'mod_bodyworks', label = 'Body Works', id = 'bodyworks', price = 1250, icon = 'https://i.ibb.co/YZkqQRj/mod-bodyworks.png'}, -- spoiler, bumpers (front + rear), skirts, exhaust, hood, fenders, roof
			[3] = {name = 'mod_chassis', label = 'Chassis Upgrades', id = 'chassis', price = 700, icon = 'https://i.ibb.co/1XGXthM/mod-chassis.png'}, -- roll cage, arch cover, aerials, trim b, fuel tank
			[4] = {name = 'mod_enginebay', label = 'Engine Bay Upgrades', id = 'enginebay', price = 500, icon = 'https://i.ibb.co/ngv65rV/mod-enginebay.png'}, -- engine block, air filters, strut brace
			[5] = {name = 'mod_exterior', label = 'Exterior Cosmetics', id = 'exterior', price = 600, icon = 'https://i.ibb.co/wz2s9mG/mod-exterior.png'}, -- grill, horn, plate holder, vanity plate, hydro, left door, right door, lightbar, license plate, window tints
			[6] = {name = 'mod_interior', label = 'Interior Cosmetics', id = 'interior', price = 500, icon = 'https://i.ibb.co/ZKZS3mP/mod-interior.png'}, -- trim a, ornaments, dashboard, gauges, door speakers, seats, steering wheel, shifter leaver, plague, speaker, trunk
			[7] = {name = 'mod_lights', label = 'Vehicle Lights', id = 'lights', price = 300, icon = 'https://i.ibb.co/P56HBBg/mod-lights.png'}, -- xenon kit, neon kit
			[8] = {name = 'mod_wheels', label = 'Wheels', id = 'wheels', price = 900, icon = 'https://i.ibb.co/8BbyF7y/mod-wheels.png'}, -- wheels, wheel rear, wheel front, wheel color, tyre smoke
			[9] = {name = 'mod_engine', label = 'Engine Upg. Kit', id = 'performance', modName = 'modEngine', price = 2000, icon = 'https://i.ibb.co/MgPCg06/mod-engine.png'}, -- engine upgrades
			[10] = {name = 'mod_brakes', label = 'Brakes Upg. Kit', id = 'performance', modName = 'modBrakes', price = 1300, icon = 'https://i.ibb.co/wKxczkS/mod-brakes.png'}, -- brakes upgrades
			[11] = {name = 'mod_transmission', label = 'Transmission Upg. Kit', id = 'performance', modName = 'modTransmission', price = 1800, icon = 'https://i.ibb.co/P1NvFBf/mod-transmission.png'}, -- transmission upgrades
			[12] = {name = 'mod_suspension', label = 'Suspension Upg. Kit', id = 'performance', modName = 'modSuspension', price = 1500, icon = 'https://i.ibb.co/FYwfm4y/mod-suspension.png'}, -- suspension upgrades
			[13] = {name = 'mod_armor', label = 'Armor Upg. Kit', id = 'performance', modName = 'modArmor', price = 3600, icon = 'https://i.ibb.co/Fby20CQ/mod-armor.png'}, -- armor upgrades
			[14] = {name = 'mod_turbo', label = 'Turbo Upg. Kit', id = 'performance', modName = 'modTurbo', price = 1400, icon = 'https://i.ibb.co/12BpDZY/mod-turbo.png'}, -- turbo upgrades
		},
		['materials'] = {
			[1] = {name = 'scrap_metal', label = 'Scrap Metal'},
			[2] = {name = 'steel', label = 'Steel'},
			[3] = {name = 'aluminium', label = 'Aluminium'},
			[4] = {name = 'plastic', label = 'Plastic'},
			[5] = {name = 'rubber', label = 'Rubber'},
			[6] = {name = 'electric_scrap', label = 'Electric Scrap'},
			[7] = {name = 'glass', label = 'Glass'},
			[8] = {name = 'copper', label = 'Copper'},
			[9] = {name = 'carbon_fiber', label = 'Carbon Fiber'},
			[10] = {name = 'brass', label = 'Brass'},
			[11] = {name = 'synthetic_oil', label = 'Synthetic Oil'},
			[12] = {name = 'acid', label = 'Acid'},
		},
	},
	
	Menu = { -- settings for admin & tuning menu
		['admin'] = {
			command = {enable = true, string = 'admintuner'}, -- enable/disable command, set command string.
			keybind = {enable = true, defaultMapping = 'F10'} -- enable/disable keybind, set default mapping (players edit button in-game inside GTA Settings)
		},
		['tuner'] = {
			command = {enable = true, string = 'tunermenu'}, -- enable/disable command, set command string.
			keybind = {enable = true, defaultMapping = 'F7'} -- enable/disable keybind, set default mapping (players edit button in-game inside GTA Settings)
		},
	},

	Shops = {
		[1] = {
			pos = vector3(717.73, -1088.68, 21.36), -- LA MESA (GABZ)
			name = 'LS Customs (LA MESA)',
			blip = {enable = true, name = 'LS Customs', sprite = 72, display = 4, scale = 0.65, color = 5},
			job = {name = 'lscustoms1', label = 'LS Customs'},
			categories = {'performance', 'respray', 'bodyworks', 'chassis', 'enginebay', 'exterior', 'interior', 'lights', 'wheels'}, -- enable/disable different types of categories for each shop
			duty = {pos = vector3(725.38, -1078.55, 22.17)},
			boss = {pos = vector3(727.8, -1067.56, 28.31)},
			storage = {pos = vector3(737.79, -1072.8, 22.17), id = 'tunerStorage1', label = 'Tuner Storage 1', slots = 50, weight = 100000},
			garage = {pos = vector4(717.91, -1080.57, 22.28, 87.35), id = 'tunerGarage1'},
			workbench = {pos = vector3(731.82, -1064.11, 22.17)},
			modshop = {pos = vector3(731.94, -1088.82, 22.17)}, -- comment out / remove entire line if u dont want to use this marker in this shop.
			laptop = {pos = vector3(726.06, -1073.86, 28.30)}
		},
		[2] = {
			pos = vector3(-361.49, -132.94, 37.68), -- BURTON
			name = 'LS Customs (BURTON)',
			blip = {enable = true, name = 'LS Customs', sprite = 72, display = 4, scale = 0.65, color = 5},
			job = {name = 'lscustoms2', label = 'LS Customs'},
			categories = {'performance', 'respray', 'bodyworks', 'chassis', 'enginebay', 'exterior', 'interior', 'lights', 'wheels'}, -- enable/disable different types of categories for each shop
			duty = {pos = vector3(-345.24, -123.07, 39.01)},
			boss = {pos = vector3(-347.44, -133.36, 39.01)},
			storage = {pos = vector3(-333.99, -126.03, 39.01), id = 'tunerStorage2', label = 'Tuner Storage 2', slots = 50, weight = 100000},
			garage = {pos = vector4(-360.82, -127.22, 38.7, 70.57), id = 'tunerGarage2'},
			workbench = {pos = vector3(-322.99, -129.66, 39.01)},
			--modshop = {pos = vector3(-338.47, -137.57, 39.01)},
			laptop = {pos = vector3(-339.17, -141.70, 39.00)}
		},
		[3] = {
			pos = vector3(-233.99, -1326.91, 30.3), -- STRAWBERRY (GABZ)
			name = 'Benny Motorworks',
			blip = {enable = true, name = 'Benny Motorworks', sprite = 446, display = 4, scale = 0.65, color = 5},
			job = {name = 'bennymotorwork', label = 'Benny Motorworks'},
			categories = {'performance', 'respray', 'bodyworks', 'chassis', 'enginebay', 'exterior', 'interior', 'lights', 'wheels'}, -- enable/disable different types of categories for each shop
			duty = {pos = vector3(-192.43, -1337.49, 31.3)},
			boss = {pos = vector3(-193.78, -1316.83, 31.3)},
			storage = {pos = vector3(-224.9, -1316.68, 31.3), id = 'tunerStorage3', label = 'Tuner Storage 3', slots = 50, weight = 100000},
			garage = {pos = vector4(-238.03, -1338.47, 31.3, 357.73), id = 'tunerGarage3'},
			workbench = {pos = vector3(-206.14, -1336.42, 31.3)},
			modshop = {pos = vector3(-212.07, -1327.96, 31.3)},
			laptop = {pos = vector3(-227.41, -1319.44, 31.28)}
		},
		[4] = {
			pos = vector3(75.41, 6516.76, 31.26), -- Paleto
			name = 'Paleto Auto Repair',
			blip = {enable = true, name = 'Paleto Auto Repair', sprite = 446, display = 4, scale = 0.65, color = 5},
			job = {name = 'paletoauto', label = 'Paleto Auto Repair'},
			categories = {'performance', 'respray', 'bodyworks', 'chassis', 'enginebay', 'exterior', 'interior', 'lights', 'wheels'}, -- enable/disable different types of categories for each shop
			duty = {pos = vector3(93.4, 6517.63, 31.26)},
			boss = {pos = vector3(85.87, 6529.04, 35.55)},
			storage = {pos = vector3(88.1, 6521.73, 31.26), id = 'tunerStorage3', label = 'Tuner Storage 3', slots = 50, weight = 100000},
			garage = {pos = vector4(90.83, 6530.20, 31.26, 133.71), id = 'tunerGarage3'},
			workbench = {pos = vector3(87.51, 6539.95, 31.26)},
			modshop = {pos = vector3(82.32, 6542.12, 31.26)},
			laptop = {pos = vector3(69.15, 6503.37, 31.26)}
		},
	},

	JobGrades = { -- default job grades that are added to each tuner shop jobs
		['0'] = {name = 'recruit', label = 'Recruit', grade = 0, salary = 50},
		['1'] = {name = 'employee', label = 'Employee', grade = 1, salary = 75},
		['2'] = {name = 'boss', label = 'Boss', grade = 2, salary = 100, isboss = true}
		-- make sure boss grade is the very last one and has the 'isboss = true' as the only one!
	},

	RecruitMember = {
		ShowFullName = true, -- set to false to only show player server id (prevent meta-gaming)
		Distance = 10.0 -- distance to players in area to include.
	},

	Markers = {
		['duty'] = {
			enable = true,
			interact = {keybind = 38, dist = 1.2, textUi = '[E] - Toggle Duty', icon = 'toggle-on', position = 'right-center', style = {borderRadius = 0, backgroundColor = '#48BB78', color = 'white'}},
			marker = {enable = true, dist = 5.0, type = 20, scale = {0.35, 0.35, 0.35}, rgba = {255, 99, 71, 100}},
		},
		['boss'] = {
			enable = true,
			interact = {keybind = 38, dist = 1.2, textUi = '[E] - Boss Menu', icon = 'crown', position = 'right-center', style = {borderRadius = 0, backgroundColor = '#48BB78', color = 'white'}},
			marker = {enable = true, dist = 5.0, type = 20, scale = {0.35, 0.35, 0.35}, rgba = {255, 99, 71, 100}},
		},
		['garage'] = {
			enable = true,
			interact = {keybind = 38, dist = 1.2, textUi = '[E] - Garage', icon = 'square-parking', position = 'right-center', style = {borderRadius = 0, backgroundColor = '#48BB78', color = 'white'}},
			marker = {enable = true, dist = 10.0, type = 20, scale = {0.35, 0.35, 0.35}, rgba = {255, 99, 71, 100}},
			useBuiltInGarage = true,
		},
		['storage'] = {
			enable = true,
			interact = {keybind = 38, dist = 1.2, textUi = '[E] - Storage', icon = 'box', position = 'right-center', style = {borderRadius = 0, backgroundColor = '#48BB78', color = 'white'}},
			marker = {enable = true, dist = 5.0, type = 20, scale = {0.35, 0.35, 0.35}, rgba = {255, 99, 71, 100}},
		},
		['workbench'] = {
			enable = true,
			interact = {keybind = 38, dist = 1.2, textUi = '[E] - Workbench', icon = 'screwdriver-wrench', position = 'right-center', style = {borderRadius = 0, backgroundColor = '#48BB78', color = 'white'}},
			marker = {enable = true, dist = 5.0, type = 20, scale = {0.35, 0.35, 0.35}, rgba = {255, 99, 71, 100}},
			useBuiltInCrafting = true
		},
		['laptop'] = { -- marker to order parts etc.
			enable = true,
			interact = {keybind = 38, dist = 1.2, textUi = '[E] - Laptop', icon = 'laptop', position = 'right-center', style = {borderRadius = 0, backgroundColor = '#48BB78', color = 'white'}},
			marker = {enable = true, dist = 5.0, type = 20, scale = {0.35, 0.35, 0.35}, rgba = {255, 99, 71, 100}},
		},
		['modshop'] = { -- marker to customize/upgrade vehicles
			enable = true, -- set to false to completely disable modshop markers.
			interact = {keybind = 38, dist = 1.2, textUi = '[E] - Mod Shop', icon = 'spray-can', position = 'right-center', style = {borderRadius = 0, backgroundColor = '#48BB78', color = 'white'}},
			marker = {enable = true, dist = 5.0, type = 20, scale = {0.35, 0.35, 0.35}, rgba = {255, 99, 71, 100}},
		},
	},

	ModCategories = { -- used for item based mods
		['respray'] = {id = 'mod_respray', title = 'Respray', position = 'top-left'},
		['bodyworks'] = {id = 'mod_bodyworks', title = 'Body Works', position = 'top-left'},
		['chassis'] = {id = 'mod_chassis', title = 'Chassis', position = 'top-left'},
		['enginebay'] = {id = 'mod_enginebay', title = 'Engine Bay', position = 'top-left'},
		['exterior'] = {id = 'mod_exterior', title = 'Exterior', position = 'top-left'},
		['interior'] = {id = 'mod_interior', title = 'Interior', position = 'top-left'},
		['lights'] = {id = 'mod_lights', title = 'Lights', position = 'top-left'},
		['wheels'] = {id = 'mod_wheels', title = 'Wheels', position = 'top-left'},
		['performance'] = {id = 'mod_performance', title = 'Performance', position = 'top-left'}
	},

	ModShop = { -- Mod Shop
		Menu = { -- mod shop menu categories
			['main'] = {id = 'modshop_main', title = 'Mod Shop', position = 'top-left'},
			['performance'] = {id = 'modshop_performance', title = 'Performance', position = 'top-left'},
			['bodyworks'] = {id = 'modshop_bodyworks', title = 'Body Works', position = 'top-left'},
			['chassis'] = {id = 'modshop_chassis', title = 'Chassis', position = 'top-left'},
			['enginebay'] = {id = 'modshop_enginebay', title = 'Engine Bay', position = 'top-left'},
			['exterior'] = {id = 'modshop_exterior', title = 'Exterior', position = 'top-left'},
			['interior'] = {id = 'modshop_interior', title = 'Interior', position = 'top-left'},
			['lights'] = {id = 'modshop_lights', title = 'Lights', position = 'top-left'},
			['wheels'] = {id = 'modshop_wheels', title = 'Wheels', position = 'top-left'},
			['respray'] = {id = 'modshop_respray', title = 'Respray', position = 'top-left'}
		},
		MainMenu = {id = 'modshop_main', title = 'Mod Shop', position = 'top-left'},
		AccountPercentage = 20.0, -- 0.0-100.0 decimal percentage of installed mod price that goes into modshop account.
		IncreasePrice = 30, -- percent 0-100 to increase listed mod prices in modshop marker menu
	},

	Currency = '$', -- string for currency
	Installed = 'Installed', -- string for installed mod
	ToInstall = 'Install', -- string to install
	DefaultVehiclePrice = 500000, -- if current vehicle price is not registered anywhere, it uses this amount to calculate 
	RepairPrice = 1000, -- 1000$ to repair vehicle, before installing mods.
	IncreaseModPrice = true, -- increase each mod variant price, so bumper1 cheaper than bumper 2, and bumper2 is cheaper than bumper 3 and so on. Set to false to have equal mod variant prices.
	IncreaseDecimalValue = 2.0, -- 0.0-100.0 decimal percentage to increase each mod variant.
	DefaultModVariantLabel = 'Default', -- if no GTA label exist for the default mod variant, this label will be used as prefix for Config.Mods['modName'].label, fx. Default Front Bumper, Default Exhaust.
	LaborFee = { Default = 100 --[[default labor fee for item based mod installation]], Min = 10, --[[min labor fee set by boss]] Max = 1000 --[[max labor fee set by boss]]},
	CancelInteraction = {Button = 252, String = '[X] Cancel Install'},

	PreviewControls = {
		Hood = 108, -- NUMPAD 4 // Opens hood during preview with item based mod installations
		Trunk = 110, -- NUMPAD 5 // Opens trunk during preview with item based mod installations
		Doors = 109, -- NUMPAD 6 // Opens all doors (except hood & trunk) during preview with item based mod installations
		Close = 118 -- NUMPAD 9 // Shuts all doors during preview with item based mod installations
	},
	
	ModInstallTarget = {Label = 'Install Mod', Icon = 'fa-solid fa-car'},
	ModInstallSkillcheck = {Enable = true, Difficulty = {'easy', 'easy', 'easy'}, Inputs = {'w', 'a', 's', 'd'}},

	Performance = {
		Target = {label = 'Examine Performance Mods', icon = 'fa-solid fa-clipboard-list'},
		Skillcheck = {enable = true, difficulty = {'easy', 'easy', 'easy'}, inputs = {'w', 'a', 's', 'd'}},
		Mods = {'modEngine', 'modBrakes', 'modTransmission', 'modSuspension', 'modArmor', 'modTurbo'}
	},

	PayModWithShopAccount = true, -- set to true to pay item based mods from shop account, set to false to pay from tuner player's own bank account.
	LaptopItemsToStash = true, -- set to true to send ordered mod items to stash directly.

	LaptopSoundFrontend = {AudioName = 'ROBBERY_MONEY_TOTAL', AudioRef = 'HUD_FRONTEND_CUSTOM_SOUNDSET'},
	MenuSoundFrontend = {AudioName = 'NAV_UP_DOWN', AudioRef = 'HUD_FRONTEND_DEFAULT_SOUNDSET'},

	Workbench = {
		Enable = true, -- set to false to disable
		Duration = 2500, -- duration in ms for crafting
		ProgressLabel = 'Crafting %sx %s',
		Anim = {dict = 'mini@repair', name = 'fixing_a_player', blendIn = 8.0, blendOut = -8.0, flag = 49},
		SkillCheck = {difficulty = {'easy', 'easy'}, inputs = {'w', 'a', 's', 'd'}},
		Categories = {
			['mods'] = { -- MODS
				label = 'Mods',
				description = 'Mods are used to customize or upgrade vehicles.',
				icon = 'car',
				recipe = {
					[1] = {
						menuTitle = 'Respray',
						icon = 'https://i.ibb.co/T0q9bgj/mod-respray.png',
						itemId = 1,
						materials = {
							['plastic'] = 2,
							['acid'] = 3,
							['synthetic_oil'] = 1,
							['rubber'] = 4
						}
					},
					[2] = {
						menuTitle = 'Body Works',
						icon = 'https://i.ibb.co/YZkqQRj/mod-bodyworks.png',
						itemId = 2,
						materials = {
							['plastic'] = 5,
							['carbon_fiber'] = 2,
							['rubber'] = 1,
							['copper'] = 3
						}
					},
					[3] = {
						menuTitle = 'Chassis Upgrades',
						icon = 'https://i.ibb.co/1XGXthM/mod-chassis.png',
						itemId = 3,
						materials = {
							['steel'] = 3,
							['aluminium'] = 2,
							['rubber'] = 1,
							['copper'] = 4,
							['brass'] = 1
						}
					},
					[4] = {
						menuTitle = 'Engine Bay Upgrades',
						icon = 'https://i.ibb.co/ngv65rV/mod-enginebay.png',
						itemId = 4,
						materials = {
							['steel'] = 2,
							['copper'] = 1,
							['brass'] = 3,
							['scrap_metal'] = 2
						}
					},
					[5] = {
						menuTitle = 'Exterior Cosmetics',
						icon = 'https://i.ibb.co/wz2s9mG/mod-exterior.png',
						itemId = 5,
						materials = {
							['plastic'] = 2,
							['carbon_fiber'] = 1,
							['rubber'] = 3,
							['glass'] = 4,
							['brass'] = 2
						}
					},
					[6] = {
						menuTitle = 'Interior Cosmetics',
						icon = 'https://i.ibb.co/ZKZS3mP/mod-interior.png',
						itemId = 6,
						materials = {
							['plastic'] = 4,
							['carbon_fiber'] = 1,
							['rubber'] = 2,
							['glass'] = 3,
							['brass'] = 1
						}
					},
					[7] = {
						menuTitle = 'Vehicle Lights',
						icon = 'https://i.ibb.co/P56HBBg/mod-lights.png',
						itemId = 7,
						materials = {
							['steel'] = 2,
							['aluminium'] = 1,
							['rubber'] = 3,
							['glass'] = 4,
							['electric_scrap'] = 2
						}
					},
					[8] = {
						menuTitle = 'Wheels',
						icon = 'https://i.ibb.co/8BbyF7y/mod-wheels.png',
						itemId = 8,
						materials = {
							['steel'] = 3,
							['rubber'] = 2,
							['copper'] = 1,
							['aluminium'] = 4,
							['brass'] = 1
						}
					},
					[9] = {
						menuTitle = 'Engine Upg. Kit',
						icon = 'https://i.ibb.co/MgPCg06/mod-engine.png',
						itemId = 9,
						materials = {
							['steel'] = 2,
							['copper'] = 3,
							['carbon_fiber'] = 1,
							['synthetic_oil'] = 4,
							['electric_scrap'] = 2,
							['brass'] = 1
						}
					},
					[10] = {
						menuTitle = 'Brakes Upg. Kit',
						icon = 'https://i.ibb.co/wKxczkS/mod-brakes.png',
						itemId = 10,
						materials = {
							['steel'] = 3,
							['rubber'] = 2,
							['copper'] = 1,
							['brass'] = 4
						}
					},
					[11] = {
						menuTitle = 'Transmission Upg. Kit',
						icon = 'https://i.ibb.co/P1NvFBf/mod-transmission.png',
						itemId = 11,
						materials = {
							['steel'] = 1,
							['aluminium'] = 2,
							['rubber'] = 3,
							['copper'] = 4,
						}
					},
					[12] = {
						menuTitle = 'Suspension Upg. Kit',
						icon = 'https://i.ibb.co/FYwfm4y/mod-suspension.png',
						itemId = 12,
						materials = {
							['steel'] = 3,
							['aluminium'] = 2,
							['rubber'] = 1,
							['brass'] = 4
						}
					},
					[13] = {
						menuTitle = 'Armor Upg. Kit',
						icon = 'https://i.ibb.co/Fby20CQ/mod-armor.png',
						itemId = 13,
						materials = {
							['scrap_metal'] = 4,
							['steel'] = 2,
							['aluminium'] = 1,
							['rubber'] = 3,
							['brass'] = 1
						}
					},
					[14] = {
						menuTitle = 'Turbo Upg. Kit',
						icon = 'https://i.ibb.co/12BpDZY/mod-turbo.png',
						itemId = 14,
						materials = {
							['steel'] = 1,
							['rubber'] = 2,
							['copper'] = 3,
							['scrap_metal'] = 4
						}
					},
				}
			},
		}
	}
}

Config.EngineUpgrades = {
	{label = 'Stock', index = -1, price = 5},
	{label = 'Level 1', index = 0, price = 20},
	{label = 'Level 2', index = 1, price = 30},
	{label = 'Level 3', index = 2, price = 40},
	{label = 'Level 4', index = 3, price = 50},
	{label = 'Level 5', index = 4, price = 60}
}

Config.BrakeUpgrades = {
	{label = 'Stock', index = -1, price = 5},
	{label = 'Street', index = 0, price = 20},
	{label = 'Sports', index = 1, price = 30},
	{label = 'Race', index = 2, price = 40},
	{label = 'Custom', index = 3, price = 50}
}

Config.TransmissionUpgrades = {
	{label = 'Stock', index = -1, price = 5},
	{label = 'Street', index = 0, price = 20},
	{label = 'Sports', index = 1, price = 30},
	{label = 'Race', index = 2, price = 40},
	{label = 'Custom', index = 3, price = 50}
}

Config.SuspensionUpgrades = {
	{label = 'Stock', index = -1, price = 5},
	{label = 'Lowered', index = 0, price = 20},
	{label = 'Street', index = 1, price = 30},
	{label = 'Sports', index = 2, price = 40},
	{label = 'Competition', index = 3, price = 50}
}

Config.ArmorUpgrades = {
	{label = 'Stock', index = -1, price = 5},
	{label = '20%', index = 0, price = 30},
	{label = '40%', index = 1, price = 40},
	{label = '60%', index = 2, price = 50},
	{label = '80%', index = 3, price = 60},
	{label = '100%', index = 4, price = 70}
}

Config.TurboUpgrades = {
	{label = 'Stock', index = 0, price = 1.35}, -- 1.35% percent of vehicle price
	{label = 'Custom', index = 1, price = 25.0} -- 25% percent of vehicle price
}

Config.TyreSmokeKit = {
	Description = 'Click to install or uninstall tyre smoke kit',
	Options = {
		{label = 'Stock', price = 1.15}, -- 1.15% of vehicle price
		{label = 'Tyre Smoke', price = 2.45}, -- 2.45% of vehicle price
	}
}

Config.TyreSmokeColors = {
	Description = 'Click to install the selected tyre smoke color',
	Options = {
		{label = 'White Smoke', 		rgb = {254, 254, 254}, 		price = 0.80},
		{label = 'Black Smoke', 		rgb = {1, 1, 1}, 			price = 1.85},
		{label = 'Blue Smoke',  		rgb = {0, 150, 255}, 		price = 1.85},
		{label = 'Yellow Smoke',		rgb = {255, 255, 50}, 		price = 1.85},
		{label = 'Purple Smoke',		rgb = {153, 10, 153}, 		price = 1.85},
		{label = 'Orange Smoke',		rgb = {255, 153, 51}, 		price = 1.85},
		{label = 'Green Smoke', 		rgb = {10, 255, 10}, 		price = 1.85},
		{label = 'Red Smoke',   		rgb = {255, 10, 10}, 		price = 1.85},
		{label = 'Pink Smoke',  		rgb = {255, 102, 178}, 		price = 1.85},
		{label = 'Gray Smoke',  		rgb = {128, 128, 128}, 		price = 1.85}
	}
}

Config.XenonKit = {
	Description = 'Click to install or uninstall xenon kit',
	Options = {
		{label = 'Stock',		index = 0,		price = 1.25}, -- price is percentage (0-100%) of vehicle price
		{label = 'Xenon',		index = 1,		price = 6.50}, -- price is percentage (0-100%) of vehicle price
	}
}

Config.XenonColors = {
	Description = 'Click to install the selected xenon kit color',
	Options = {
		{label = 'Default',				index = -1, 				price = 0.50},
		{label = 'White', 				index = 0,					price = 1.10},
		{label = 'Blue', 				index = 1,					price = 1.10},
		{label = 'Electric Blue',		index = 2,					price = 1.10},
		{label = 'Mint Green', 			index = 3,					price = 1.10},
		{label = 'Lime Green', 			index = 4,					price = 1.10},
		{label = 'Yellow', 				index = 5,					price = 1.10},
		{label = 'Golden Shower', 		index = 6,					price = 1.10},
		{label = 'Orange', 				index = 7,					price = 1.10},
		{label = 'Red', 				index = 8,					price = 1.10},
		{label = 'Pony Pink', 			index = 9,					price = 1.10},
		{label = 'Hot Pink', 			index = 10, 				price = 1.10},
		{label = 'Purple', 				index = 11, 				price = 1.10},
		{label = 'Blacklight', 			index = 12, 				price = 1.10}
	}
}		

Config.Neons = {
	Description = 'Click to buy and apply the selected neon kit',
	Options = {
		{label = 'Left Light',			index = 0,		values = {{label = 'Stock', price = 1.15}, {label = 'Neon Left Kit', price = 6.75}}},
		{label = 'Right Light',			index = 1,		values = {{label = 'Stock', price = 1.15}, {label = 'Neon Right Kit', price = 6.75}}},
		{label = 'Front Light',			index = 2,		values = {{label = 'Stock', price = 1.15}, {label = 'Neon Front Kit', price = 6.75}}},
		{label = 'Rear Light',			index = 3,		values = {{label = 'Stock', price = 1.15}, {label = 'Neon Rear Kit', price = 6.75}}},
	}
}

Config.NeonColors = {
	Description = 'Click to install the selected neon kit color',
	Options = {
		{label = 'Default', 			rgb = {0, 0, 0},			price = 0.50},
		{label = 'White', 				rgb = {222, 222, 255},		price = 1.25},
		{label = 'Blue', 				rgb = {2, 21, 255}, 		price = 1.25},
		{label = 'Electric Blue', 		rgb = {3, 83, 255}, 		price = 1.25},
		{label = 'Mint Green', 			rgb = {0, 255, 140},		price = 1.25},
		{label = 'Lime Green', 			rgb = {94, 222, 1}, 		price = 1.25},
		{label = 'Yellow', 				rgb = {255, 255, 0},		price = 1.25},
		{label = 'Golden Shower',		rgb = {255, 150, 0},		price = 1.25},
		{label = 'Orange', 				rgb = {255, 62, 0}, 		price = 1.25},
		{label = 'Red', 				rgb = {255, 1, 1}, 			price = 1.25},
		{label = 'Pony Pink', 			rgb = {255, 50, 100}, 		price = 1.25},
		{label = 'Hot Pink', 			rgb = {255, 5, 190}, 		price = 1.25},
		{label = 'Purple', 				rgb = {35, 1, 255}, 		price = 1.25},
		{label = 'Blacklight', 			rgb = {15, 3, 255}, 		price = 1.25}
	}
}		

Config.LicensePlates = {
    {label = 'Blue on White 1', 	index = 0,					price = 1.10},
    {label = 'Yellow on Black', 	index = 1,					price = 1.50},
    {label = 'Yellow on Blue', 		index = 2,					price = 1.65},
    {label = 'Blue on White 2', 	index = 3,					price = 1.80},
    {label = 'Blue on White 3', 	index = 4,					price = 1.95},
    {label = 'Yankton', 			index = 5,					price = 2.25}
}

Config.WindowTints = {
    {label = 'None',				index = 0,					price = 0.50},
    {label = 'Pure black',			index = 1,					price = 4.35},
    {label = 'Dark Smoke',			index = 2,					price = 2.95},
    {label = 'Light Smoke',			index = 3,					price = 1.55},
    {label = 'Stock',				index = 4,					price = 0.50},
    {label = 'Green',				index = 5,					price = 3.65}
}

Config.WheelTypes = {
    {label = 'Sport',				index = 0,					price = 2.25},
    {label = 'Muscle',				index = 1,					price = 2.10},
    {label = 'Lowrider',			index = 2,					price = 2.95},
    {label = 'SUV',					index = 3,					price = 3.10},
    {label = 'Offroad',				index = 4,					price = 2.75},
    {label = 'Tuner',				index = 5,					price = 4.25},
    {label = 'Bike Front',			index = 6,					price = 4.05},
    {label = 'High End',			index = 7,					price = 6.85},
    {label = 'Benny\'s Original',	index = 8,					price = 5.10},
    {label = 'Benny\'s Bespoke',	index = 9,					price = 5.75},
    {label = 'Open Wheel',			index = 10,					price = 7.15},
    {label = 'Street',				index = 11,					price = 7.60},
    {label = 'Track',				index = 12,					price = 8.25}
}
Config.WheelRearLabel = 'Bike Rear'

Config.Horns = {
    {label = 'Default',				index = -1,					price = 1.1},
    {label = 'Truck Horn',			index = 0,					price = 1.25},
    {label = 'Cop Horn',			index = 1,					price = 1.25},
    {label = 'Clown Horn',			index = 2,					price = 1.25},
    {label = 'Musical Horn 1',		index = 3,					price = 1.28},
    {label = 'Musical Horn 2',		index = 4,					price = 1.28},
    {label = 'Musical Horn 3',		index = 5,					price = 1.28},
    {label = 'Musical Horn 4',		index = 6,					price = 1.28},
    {label = 'Musical Horn 5',		index = 7,					price = 1.28},
    {label = 'Sad Trombone',		index = 8,					price = 1.30},
    {label = 'Classical Horn 1',	index = 9,					price = 1.32},
    {label = 'Classical Horn 2'	,	index = 10,					price = 1.32},
    {label = 'Classical Horn 3',	index = 11,					price = 1.32},
    {label = 'Classical Horn 4',	index = 12,					price = 1.32},
    {label = 'Classical Horn 5',	index = 13,					price = 1.32},
    {label = 'Classical Horn 6',	index = 14,					price = 1.32},
    {label = 'Classical Horn 7',	index = 15,					price = 1.32},
    {label = 'Scale - Do',			index = 16,					price = 1.34},
    {label = 'Scale - Re',			index = 17,					price = 1.34},
    {label = 'Scale - Mi',			index = 18,					price = 1.34},
    {label = 'Scale - Fa',			index = 19,					price = 1.34},
    {label = 'Scale - Sol',			index = 20,					price = 1.34},
    {label = 'Scale - La',			index = 21,					price = 1.34},
    {label = 'Scale - Ti',			index = 22,					price = 1.34},
    {label = 'Scale - Do',			index = 23,					price = 1.34},
    {label = 'Jazz Horn 1',			index = 24,					price = 1.36},
    {label = 'Jazz Horn 2',			index = 25,					price = 1.36},
    {label = 'Jazz Horn 3',			index = 26,					price = 1.36},
    {label = 'Jazz Horn Loop', 		index = 27,					price = 1.36},
    {label = 'Star Spangled Banner 1', index = 28,				price = 1.38},
    {label = 'Star Spangled Banner 2', index = 29,				price = 1.38},
    {label = 'Star Spangled Banner 3', index = 30,				price = 1.38},
    {label = 'Star Spangled Banner 4', index = 31,				price = 1.38},
    {label = 'Classical Horn 8 Loop', index = 32,				price = 1.40},
    {label = 'Classical Horn 9 Loop', index = 33,				price = 1.40},
    {label = 'Classical Horn 10 Loop', index = 34,				price = 1.40},
    {label = 'Classical Horn 8', 	index = 35,					price = 1.42},
    {label = 'Classical Horn 9', 	index = 36,					price = 1.42},
    {label = 'Classical Horn 10', 	index = 37,					price = 1.42},
    {label = 'Funeral Loop', 		index = 38,					price = 1.45},
    {label = 'Funeral', 			index = 39,					price = 1.45},
    {label = 'Spooky Loop', 		index = 40,					price = 1.45},
    {label = 'Spooky', 				index = 41,					price = 1.45},
    {label = 'San Andreas Loop', 	index = 42,					price = 1.45},
    {label = 'San Andreas', 		index = 43,					price = 1.45},
    {label = 'Liberty City Loop', 	index = 44,					price = 1.45},
    {label = 'Liberty City', 		index = 45,					price = 1.45},
    {label = 'Festive 1 Loop', 		index = 46,					price = 1.48},
    {label = 'Festive 1', 			index = 47,					price = 1.48},
    {label = 'Festive 2 Loop', 		index = 48,					price = 1.48},
    {label = 'Festive 2', 			index = 49,					price = 1.48},
    {label = 'Festive 3 Loop', 		index = 50,					price = 1.48},
    {label = 'Festive 3', 			index = 51,					price = 1.48},
    {label = 'Air Horn Low Loop', 	index = 52,					price = 1.54},
    {label = 'Air Horn Low', 		index = 53,					price = 1.54},
    {label = 'Air Horn Medium Loop', index = 54,				price = 1.54},
    {label = 'Air Horn Medium', 	index = 55,					price = 1.54},
    {label = 'Air Horn High Loop', 	index = 56,					price = 1.54},
    {label = 'Air Horn High', 		index = 57,					price = 1.54}
}

Config.ColorCategories = {
	{name = 'metallic', label = 'Metallic', price = 1.5},
	{name = 'matte', label = 'Matte', price = 1.9},
	{name = 'metals', label = 'Metals', price = 2.3},
	{name = 'util', label = 'Util', price = 2.4},
	{name = 'worn', label = 'Worn', price = 2.6},
	{name = 'chameleon', label = 'Chameleon', price = 3.65}
}

Config.RGB = {
	Price = 9.5,
}

Config.ColorToRGB = {
	['white'] = {255, 255, 255},
	['red'] =  {246, 75, 60},
	['pink'] = {253, 226, 226},
	['blue'] = {0, 168, 204},
	['yellow'] = {245, 252, 193},
	['green'] = {99, 154, 103},
	['orange'] = {255, 164, 27},
	['brown'] = {156, 85, 24},
	['purple'] =  {190, 121, 223},
	['grey'] = {50, 50, 50},
	['black'] = {0, 0, 0},
	-- you can add more like bronze etc.
}

Config.Colors = {
	['metallic'] = {
		{label = 'Black', index = 0},
		{label = 'Graphite Black', index = 1},
		{label = 'Black Steel', index = 2},
		{label = 'Dark Silver', index = 3},
		{label = 'Silver', index = 4},
		{label = 'Blue Silver', index = 5},
		{label = 'Steel Grey', index = 6},
		{label = 'Shadow Silver', index = 7},
		{label = 'Stone Silver', index = 8},
		{label = 'Midnight Silver', index = 9},
		{label = 'Gun Metal', index = 10},
		{label = 'Anthracite Grey', index = 11},
		{label = 'Red', index = 27},
		{label = 'Torino Red', index = 28},
		{label = 'Formula Red', index = 29},
		{label = 'Blaze Red', index = 30},
		{label = 'Graceful Red', index = 31},
		{label = 'Garnet Red', index = 32},
		{label = 'Desert Red', index = 33},
		{label = 'Cabernet Red', index = 34},
		{label = 'Candy Red', index = 35},
		{label = 'Sunrise Orange', index = 36},
		{label = 'Classic Gold', index = 37},
		{label = 'Orange', index = 38},
		{label = 'Dark Green', index = 49},
		{label = 'Racing Green', index = 50},
		{label = 'Sea Green', index = 51},
		{label = 'Olive Green', index = 52},
		{label = 'Green', index = 53},
		{label = 'Gasoline Blue Green', index = 54},
		{label = 'Midnight Blue', index = 61},
		{label = 'Dark Blue', index = 62},
		{label = 'Saxony Blue', index = 63},
		{label = 'Blue', index = 64},
		{label = 'Mariner Blue', index = 65},
		{label = 'Harbor Blue', index = 66},
		{label = 'Diamond Blue', index = 67},
		{label = 'Surf Blue', index = 68},
		{label = 'Nautical Blue', index = 69},
		{label = 'Bright Blue', index = 70},
		{label = 'Purple Blue', index = 71},
		{label = 'Spinnaker Blue', index = 72},
		{label = 'Ultra Blue', index = 73},
		{label = 'Light Blue', index = 74},
		{label = 'Taxi Yellow', index = 88},
		{label = 'Race Yellow', index = 89},
		{label = 'Bronze', index = 90},
		{label = 'Yellow Bird', index = 91},
		{label = 'Lime', index = 92},
		{label = 'Champagne', index = 93},
		{label = 'Pueblo Beige', index = 94},
		{label = 'Dark Ivory', index = 95},
		{label = 'Choco Brown', index = 96},
		{label = 'Golden Brown', index = 97},
		{label = 'Light Brown', index = 98},
		{label = 'Straw Beige', index = 99},
		{label = 'Moss Brown', index = 100},
		{label = 'Biston Brown', index = 101},
		{label = 'Beechwood', index = 102},
		{label = 'Dark Beechwood', index = 103},
		{label = 'Choco Orange', index = 104},
		{label = 'Beach Sand', index = 105},
		{label = 'Sun Bleeched Sand', index = 106},
		{label = 'Cream', index = 107},
		{label = 'White', index = 111},
		{label = 'Frost White', index = 112},
		{label = 'Securicor Green', index = 125},
		{label = 'Pure White', index = 134},
		{label = 'Hot Pink', index = 135},
		{label = 'Salmon pink', index = 136},
		{label = 'Vermillion Pink', index = 137},
		{label = 'Bright Orange', index = 138},
		{label = 'Bright Green', index = 139},
		{label = 'Bright Blue', index = 140},
		{label = 'Black Blue', index = 141},
		{label = 'Black Purple', index = 142},
		{label = 'Black Red', index = 143},
		{label = 'Purple', index = 145},
		{label = 'V Dark Blue', index = 146},
		{label = 'Carbon Black', index = 147},
		{label = 'Lava Red', index = 150}
	},
	['matte'] = {
		{label = 'Black', index = 12},
		{label = 'Gray', index = 13},
		{label = 'Light Grey', index = 14},
		{label = 'Red', index = 39},
		{label = 'Dark Red', index = 40},
		{label = 'Orange', index = 41},
		{label = 'Yellow', index = 42},
		{label = 'Lime Green', index = 55},
		{label = 'Dark Blue', index = 82},
		{label = 'Blue', index = 83},
		{label = 'Midnight Blue', index = 84},
		{label = 'Green', index = 128},
		{label = 'Brown', index = 129},
		{label = 'White', index = 131},
		{label = 'Purple', index = 148},
		{label = 'Dark Purple', index = 149},
		{label = 'Forest Green', index = 151},
		{label = 'Olive Drab', index = 152},
		{label = 'Desert Brown', index = 153},
		{label = 'Desert Tan', index = 154},
		{label = 'Foliage Green', index = 155}
	},
	['metals'] = {
		{label = 'Brushed Steel', index = 117},
		{label = 'Brushed Black Steel', index = 118},
		{label = 'Brushed Aluminum', index = 119},
		{label = 'Chrome', index = 120},
		{label = 'Alloy', index = 156},
		{label = 'Epsilon Blue', index = 157},
		{label = 'Pure Gold', index = 158},
		{label = 'Brushed Gold', index = 159}
	},
	['util'] = {
		{label = 'Black', index = 15},
		{label = 'Black Poly', index = 16},
		{label = 'Dark silver', index = 17},
		{label = 'Silver', index = 18},
		{label = 'Gun Metal', index = 19},
		{label = 'Shadow Silver', index = 20},
		{label = 'Red', index = 43},
		{label = 'Bright Red', index = 44},
		{label = 'Garnet Red', index = 45},
		{label = 'Dark Green', index = 56},
		{label = 'Green', index = 57},
		{label = 'Dark Blue', index = 75},
		{label = 'Midnight Blue', index = 76},
		{label = 'Blue', index = 77},
		{label = 'Sea Foam Blue', index = 78},
		{label = 'Lightning blue', index = 79},
		{label = 'Maui Blue Poly', index = 80},
		{label = 'Bright Blue', index = 81},
		{label = 'Brown', index = 108},
		{label = 'Medium Brown', index = 109},
		{label = 'Light Brown', index = 110},
		{label = 'Off White', index = 122}
	},
	['worn'] = {
		{label = 'Black', index = 21},
		{label = 'Graphite', index = 22},
		{label = 'Silver Grey', index = 23},
		{label = 'Silver', index = 24},
		{label = 'Blue Silver', index = 25},
		{label = 'Shadow Silver', index = 26},
		{label = 'Red', index = 46},
		{label = 'Golden Red', index = 47},
		{label = 'Dark Red', index = 48},
		{label = 'Dark Green', index = 58},
		{label = 'Green', index = 59},
		{label = 'Sea Wash', index = 60},
		{label = 'Dark Blue', index = 85},
		{label = 'Blue', index = 86},
		{label = 'Light Blue', index = 87},
		{label = 'Honey Beige', index = 113},
		{label = 'Brown', index = 114},
		{label = 'Dark Brown', index = 115},
		{label = 'Straw Beige', index = 116},
		{label = 'Off White', index = 121},
		{label = 'Orange', index = 123},
		{label = 'Light Orange', index = 124},
		{label = 'Taxi Yellow', index = 126},
		{label = 'Orange 2', index = 130},
		{label = 'White', index = 132},
		{label = 'Olive Army Green', index = 133}
	},
	['chameleon'] = {
        {label = 'Anodized Red Pearl', index = 161},
        {label = 'Anodized Wine Pearl', index = 162},
        {label = 'Anodized Purple Pearl', index = 163},
        {label = 'Anodized Blue Pearl', index = 164},
        {label = 'Anodized Green Pearl', index = 165},
        {label = 'Anodized Lime Pearl', index = 166},
        {label = 'Anodized Copper Pearl', index = 167},
        {label = 'Anodized Bronze Pearl', index = 168},
        {label = 'Anodized Champagne Pearl', index = 169},
        {label = 'Anodized Gold Pearl', index = 170},
        {label = 'Green/Blue Flip', index = 171},
        {label = 'Green/Red Flip', index = 172},
        {label = 'Green/Brown Flip', index = 173},
        {label = 'Green/Turquoise Flip', index = 174},
        {label = 'Green/Purple Flip', index = 175},
        {label = 'Teal/Purple Flip', index = 176},
        {label = 'Turquoise/Red Flip', index = 177},
        {label = 'Turquoise/Purple Flip', index = 178},
        {label = 'Cyan/Purple Flip', index = 179},
        {label = 'Blue/Pink Flip', index = 180},
        {label = 'Blue/Green Flip', index = 181},
        {label = 'Purple/Red Flip', index = 182},
        {label = 'Purple/Green Flip', index = 183},
        {label = 'Magenta/Green Flip', index = 184},
        {label = 'Magenta/Yellow Flip', index = 185},
        {label = 'Burgundy/Green Flip', index = 186},
        {label = 'Magenta/Cyan Flip', index = 187},
        {label = 'Copper/Purple Flip', index = 188},
        {label = 'Magenta/Orange Flip', index = 189},
        {label = 'Red/Orange Flip', index = 190},
        {label = 'Orange/Purple Flip', index = 191},
        {label = 'Orange/Blue Flip', index = 192},
        {label = 'White/Purple Flip', index = 193},
        {label = 'Red/Rainbow Flip', index = 194},
        {label = 'Blue/Rainbow Flip', index = 195},
        {label = 'Dark Green Pearl', index = 196},
        {label = 'Dark Teal Pearl', index = 197},
        {label = 'Dark Blue Pearl', index = 198},
        {label = 'Dark Purple Pearl', index = 199},
        {label = 'Oil Slick Pearl', index = 200},
        {label = 'Light Green Pearl', index = 201},
        {label = 'Light Blue Pearl', index = 202},
        {label = 'Light Purple Pearl', index = 203},
        {label = 'Light Pink Pearl', index = 204},
        {label = 'Off White Pearl', index = 205},
        {label = 'Cute Pink Pearl', index = 206},
        {label = 'Baby Yellow Pearl', index = 207},
        {label = 'Baby Green Pearl', index = 208},
        {label = 'Baby Blue Pearl', index = 209},
        {label = 'Cream Pearl', index = 210},
        {label = 'White Prismatic Pearl', index = 211},
        {label = 'Graphite Prismatic Pearl', index = 212},
        {label = 'Blue Prismatic Pearl', index = 213},
        {label = 'Purple Prismatic Pearl', index = 214},
        {label = 'Hot Pink Prismatic Pearl', index = 215},
        {label = 'Red Prismatic Pearl', index = 216},
        {label = 'Green Prismatic Pearl', index = 217},
        {label = 'Black Prismatic Pearl', index = 218},
        {label = 'Oil Spill Prismatic Pearl', index = 219},
        {label = 'Rainbow Prismatic Pearl', index = 220},
        {label = 'Black Holographic Pearl', index = 221},
        {label = 'White Holographic Pearl', index = 222},
        {label = 'Fubuki-jo Specials: Monochrome', index = 223},
        {label = 'Fubuki-jo Specials: Night & Day', index = 224},
        {label = 'Fubuki-jo Specials: The Verlierer', index = 225},
        {label = 'Fubuki-jo Specials: Sprunk Extreme', index = 226},
        {label = 'Fubuki-jo Specials: Vice City', index = 227},
        {label = 'Fubuki-jo Specials: Synthwave Night', index = 228},
        {label = 'Fubuki-jo Specials: Four Seasons', index = 229},
        {label = 'Fubuki-jo Specials: M9 Throwback', index = 230},
        {label = 'Fubuki-jo Specials: Bubblegum', index = 231},
        {label = 'Fubuki-jo Specials: Full Rainbow', index = 232},
        {label = 'Fubuki-jo Specials: Sunset', index = 233},
        {label = 'Fubuki-jo Specials: The Seven', index = 234},
        {label = 'Fubuki-jo Specials: Kamen Rider', index = 235},
        {label = 'Fubuki-jo Specials: Chromatic', index = 236},
        {label = 'Fubuki-jo Specials: It\'s Christmas!', index = 237},
        {label = 'Fubuki-jo Specials: Temperature', index = 238},
        {label = 'Fubuki-jo Specials: HSW Badge', index = 239},
        {label = 'Fubuki-jo Specials: Anod. Lightning', index = 240},
        {label = 'Fubuki-jo Specials: Emeralds', index = 241},
        {label = 'Fubuki-jo Specials: Fubuki Castle', index = 242} 
	}
}

Config.T1GER_MechanicSystem = GetResourceState('t1ger_mechanicsystem'):find('started') and true or false
print("has mechanic system: ", Config.T1GER_MechanicSystem)