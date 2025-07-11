Crafting = {
	Nos = {
		Header = Loc[Config.Lan]["crafting"].toolheader,
		Anims = { animDict = "mini@repair", anim = "fixing_a_ped",},
		Recipes = {
			{ ["nos"] = { ["noscan"] = 1, },
				["amount"] = 1,
			},
			{ ["noscan"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["noscolour"] = { ["plastic"] = 1, },
				["amount"] = 1,
			},
		}
	},
	Repairs = {
		Header = Loc[Config.Lan]["crafting"].repairheader,
		Anims = { animDict = "mini@repair", anim = "fixing_a_ped",},
		Recipes = {
			{ ["mechanic_tools"] = { ["iron"] = 1, },
				["amount"] = 1,
			},
			{ ["ducttape"] = { ["plastic"] = 1, },
				["amount"] = 1,
			},
			{ ["newoil"] = { ["plastic"] = 1, },
				["amount"] = 1,
			},
			{ ["sparkplugs"] = { ["metalscrap"] = 1, },
				["amount"] = 1,
			},
			{ ["carbattery"] = { ["metalscrap"] = 1, ["plastic"] = 1 },
				["amount"] = 1,
			},
			{ ["axleparts"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["sparetire"] = { ["rubber"] = 1, },
				["amount"] = 1,
			},
		},
	},
	Tools = {
		Header = Loc[Config.Lan]["crafting"].toolheader,
		Anims = { animDict = "mini@repair", anim = "fixing_a_ped",},
		Recipes = {
			{ ["toolbox"] = {
				["iron"] = 3,
				["steel"] = 1,
				["plastic"] = 1,
			},
				["amount"] = 1,
			},
			{ ["paintcan"] = { ["aluminum"] = 1, },
				["amount"] = 1,
			},

			{ ["tint_supplies"] = { ["iron"] = 1, },
				["amount"] = 1,
			},
			{ ["underglow_controller"] = { ["iron"] = 1, },
				["amount"] = 1,
			},
			{ ["cleaningkit"] = { ["rubber"] = 1, },
				["amount"] = 1,
			},

					-- Example : Delete me --
			-- Support for multiple items in recipes --
			-- Support for multiple resulting items --
			-- Support to limit items to certain job roles --
			{ ["cleaningkit"] = { ["rubber"] = 5, ["engine2"] = 1, ["plastic"] = 2 },
					["amount"] = 2,
					["job"] = { ["mechanic"] = 4, ["tuner"] = 4, }
				},
					-- Example : Delete me --
		},
	},
	Perform = {
		Header = Loc[Config.Lan]["crafting"].performheader,
		Anims = { animDict = "mini@repair", anim = "fixing_a_ped",},
		Recipes = {
			{ ["turbo"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["car_armor"] = { ["plastic"] = 1, },
				["amount"] = 1,
			},
			{ ["engine1"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["engine2"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["engine3"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["engine4"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["engine5"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["transmission1"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["transmission2"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["transmission3"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["transmission4"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["brakes1"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["brakes2"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["brakes3"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["suspension1"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["suspension2"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["suspension3"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["suspension4"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["suspension5"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["bprooftires"] = { ["rubber"] = 1, },
				["amount"] = 1,
			},
			{ ["drifttires"] = { ["rubber"] = 1, },
				["amount"] = 1,
			},

			{ ["oilp1"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["oilp2"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["oilp3"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["drives1"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["drives2"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["drives3"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["cylind1"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["cylind2"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["cylind3"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["cables1"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["cables2"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["cables3"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["fueltank1"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["fueltank2"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["fueltank3"] = { ["steel"] = 1, },
				["amount"] = 1,
			},

			{ ["harness"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["antilag"] = { ["steel"] = 1, },
				["amount"] = 1,
			},

			{ ["manual"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
		},
	},
	Cosmetic = {
		Header = Loc[Config.Lan]["crafting"].cosmetheader,
		Anims = { animDict = "mini@repair", anim = "fixing_a_ped",},
		Recipes = {
			{ ["hood"] = { ["plastic"] = 1, },
				["amount"] = 1,
			},
			{ ["roof"] = { ["plastic"] = 1, },
				["amount"] = 1,
			},
			{ ["spoiler"] = { ["plastic"] = 1, },
				["amount"] = 1,
			},
			{ ["bumper"] = { ["plastic"] = 1, },
				["amount"] = 1,
			},
			{ ["skirts"] = { ["plastic"] = 1, },
				["amount"] = 1,
			},
			{ ["exhaust"] = { ["iron"] = 1, },
				["amount"] = 1,
			},
			{ ["seat"] = { ["plastic"] = 1, },
				["amount"] = 1,
			},
			{ ["livery"] = { ["plastic"] = 1 },
				["amount"] = 1,
			},
			{ ["tires"] = { ["rubber"] = 1, },
				["amount"] = 1,
			},
			{ ["horn"] = { ["plastic"] = 1, },
				["amount"] = 1,
			},
			{ ["internals"] = { ["plastic"] = 1, },
				["amount"] = 1,
			},
			{ ["externals"] = { ["plastic"] = 1, },
				["amount"] = 1,
			},
			{ ["customplate"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
			{ ["headlights"] = { ["plastic"] = 1, },
				["amount"] = 1,
			},
			{ ["rims"] = { ["iron"] = 1, },
				["amount"] = 1,
			},
			{ ["underglow"] = { ["plastic"] = 1, },
				["amount"] = 1,
			},
			{ ["rollcage"] = { ["steel"] = 1, },
				["amount"] = 1,
			},
		},
	},
}

Stores = {
	NosItems = {
		label = Loc[Config.Lan]["stores"].nos,
		items = {
			{ name = "nos", price = 50000, amount = 50, info = {}, type = "item", },
			{ name = "noscolour", price = 5000, amount = 50, info = {}, type = "item", },
		},
	},
	RepairItems = {
		label = Loc[Config.Lan]["stores"].repairs,
		items = {
			{ name = "mechanic_tools", price = 0, amount = 10, info = {}, type = "item", },
			{ name = "sparetire", price = 0, amount = 100, info = {}, type = "item", },
			{ name = "axleparts", price = 0, amount = 1000, info = {}, type = "item", },
			{ name = "carbattery", price = 0, amount = 1000, info = {}, type = "item", },
			{ name = "sparkplugs", price = 0, amount = 1000, info = {}, type = "item", },
			{ name = "newoil", price = 0, amount = 1000, info = {}, type = "item", },
		},
	},
	ToolItems = {
		label = Loc[Config.Lan]["stores"].tools,
		items = {
			{ name = "toolbox", price = 0, amount = 10, info = {}, type = "item", },
			{ name = "ducttape", price = 1000, amount = 100, info = {}, type = "item", },
			{ name = "paintcan", price = 2500, amount = 50, info = {}, type = "item", },
			{ name = "tint_supplies", price = 2500, amount = 50, info = {}, type = "item", },
			{ name = "underglow_controller", price = 5000, amount = 50, info = {}, type = "item", },
			{ name = "cleaningkit", price = 500, amount = 100, info = {}, type = "item", },
		},
	},
	PerformItems = {
		label = Loc[Config.Lan]["stores"].perform,
		items = {
			{ name = "turbo", price = 50000, amount = 50, info = {}, type = "item", },
			{ name = "engine1", price = 25000, amount = 50, info = {}, type = "item", },
			{ name = "engine2", price = 50000, amount = 50, info = {}, type = "item", },
			{ name = "engine3", price = 75000, amount = 50, info = {}, type = "item", },
			{ name = "engine4", price = 100000, amount = 50, info = {}, type = "item", },
			{ name = "engine5", price = 150000, amount = 50, info = {}, type = "item", },
			{ name = "transmission1", price = 15000, amount = 50, info = {}, type = "item", },
			{ name = "transmission2", price = 25000, amount = 50, info = {}, type = "item", },
			{ name = "transmission3", price = 35000, amount = 50, info = {}, type = "item", },
			{ name = "transmission4", price = 45000, amount = 50, info = {}, type = "item", },
			{ name = "brakes1", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "brakes2", price = 15000, amount = 50, info = {}, type = "item", },
			{ name = "brakes3", price = 25000, amount = 50, info = {}, type = "item", },
			{ name = "car_armor", price = 50000, amount = 50, info = {}, type = "item", },
			{ name = "suspension1", price = 5000, amount = 50, info = {}, type = "item", },
			{ name = "suspension2", price = 15000, amount = 50, info = {}, type = "item", },
			{ name = "suspension3", price = 25000, amount = 50, info = {}, type = "item", },
			{ name = "suspension4", price = 35000, amount = 50, info = {}, type = "item", },
			{ name = "suspension5", price = 45000, amount = 50, info = {}, type = "item", },
			{ name = "bprooftires", price = 100000, amount = 50, info = {}, type = "item", },
			{ name = "drifttires", price = 25000, amount = 50, info = {}, type = "item", },

			{ name = "oilp1", price = 5000, amount = 50, info = {}, type = "item", },
			{ name = "oilp2", price = 15000, amount = 50, info = {}, type = "item", },
			{ name = "oilp3", price = 30000, amount = 50, info = {}, type = "item", },

			{ name = "drives1", price = 5000, amount = 50, info = {}, type = "item", },
			{ name = "drives2", price = 15000, amount = 50, info = {}, type = "item", },
			{ name = "drives3", price = 30000, amount = 50, info = {}, type = "item", },

			{ name = "cylind1", price = 5000, amount = 50, info = {}, type = "item", },
			{ name = "cylind2", price = 15000, amount = 50, info = {}, type = "item", },
			{ name = "cylind3", price = 30000, amount = 50, info = {}, type = "item", },

			{ name = "cables1", price = 5000, amount = 50, info = {}, type = "item", },
			{ name = "cables2", price = 15000, amount = 50, info = {}, type = "item", },
			{ name = "cables3", price = 30000, amount = 50, info = {}, type = "item", },

			{ name = "fueltank1", price = 5000, amount = 50, info = {}, type = "item", },
			{ name = "fueltank2", price = 15000, amount = 50, info = {}, type = "item", },
			{ name = "fueltank3", price = 30000, amount = 50, info = {}, type = "item", },

			{ name = "harness", price = 25000, amount = 50, info = {}, type = "item", },
			{ name = "antilag", price = 35000, amount = 50, info = {}, type = "item", },

			{ name = "manual", price = 50000, amount = 50, info = {}, type = "item", },
		},
	},
	CosmeticItems = {
		label = Loc[Config.Lan]["stores"].cosmetic,
		items = {
			{ name = "hood", price = 5000, amount = 50, info = {}, type = "item", },
			{ name = "roof", price = 5000, amount = 50, info = {}, type = "item", },
			{ name = "spoiler", price = 5000, amount = 50, info = {}, type = "item", },
			{ name = "bumper", price = 5000, amount = 50, info = {}, type = "item", },
			{ name = "skirts", price = 5000, amount = 50, info = {}, type = "item", },
			{ name = "exhaust", price = 5000, amount = 50, info = {}, type = "item", },
			{ name = "seat", price = 5000, amount = 50, info = {}, type = "item", },
			{ name = "livery", price = 5000, amount = 50, info = {}, type = "item", },
			{ name = "tires", price = 5000, amount = 50, info = {}, type = "item", },
			{ name = "horn", price = 5000, amount = 50, info = {}, type = "item", },
			{ name = "internals", price = 5000, amount = 50, info = {}, type = "item", },
			{ name = "externals", price = 5000, amount = 50, info = {}, type = "item", },
			{ name = "customplate", price = 5000, amount = 50, info = {}, type = "item", },
			{ name = "headlights", price = 5000, amount = 50, info = {}, type = "item", },
			{ name = "rims", price = 5000, amount = 100, info = {}, type = "item", },
			{ name = "rollcage", price = 5000, amount = 50, info = {}, type = "item", },
			{ name = "underglow", price = 5000, amount = 50, info = {}, type = "item", },
		},
	},
}

MaterialRecieve = {
	turbo = {
		steel = 1,
	},
	car_armor = {
		plastic = 1,
	},
	engine1 = {
		steel = 1,
	},
	engine2 = {
		steel = 1,
	},
	engine3 = {
		steel = 1,
	},
	engine4 = {
		steel = 1,
	},
	engine5 = {
		steel = 1,
	},
	transmission1 = {
		steel = 1,
	},
	transmission2 = {
		steel = 1,
	},
	transmission3 = {
		steel = 1,
	},
	transmission4 = {
		steel = 1,
	},
	brakes1 = {
		steel = 1,
	},
	brakes2 = {
		steel = 1,
	},
	brakes3 = {
		steel = 1,
	},
	suspension1 = {
		steel = 1,
	},
	suspension2 = {
		steel = 1,
	},
	suspension3 = {
		steel = 1,
	},
	suspension4 = {
		steel = 1,
	},
	suspension5 = {
		steel = 1,
	},
	bprooftires = {
		rubber = 1,
	},
	drifttires = {
		rubber = 1,
	},
	oilp1 = {
		steel = 1,
	},
	oilp2 = {
		steel = 1,
	},
	oilp3 = {
		steel = 1,
	},
	drives1 = {
		steel = 1,
	},
	drives2 = {
		steel = 1,
	},
	drives3 = {
		steel = 1,
	},
	cylind1 = {
		steel = 1,
	},
	cylind2 = {
		steel = 1,
	},
	cylind3 = {
		steel = 1,
	},
	cables1 = {
		steel = 1,
	},
	cables2 = {
		steel = 1,
	},
	cables3 = {
		steel = 1,
	},
	fueltank1 = {
		steel = 1,
	},
	fueltank2 = {
		steel = 1,
	},
	fueltank3 = {
		steel = 1,
	},
	harness = {
		steel = 1,
	},
	antilag = {
		steel = 1,
	},
	manual = {
		steel = 1,
	},
}

-- No Touch
	-- This is corrective code to help simplify the stores for people removing the slot info
	-- Jim shops doesn"t use it but other inventories do
	-- Most people don"t even edit the slots, these lines generate the slot info autoamtically
Stores.CosmeticItems.slots = #Stores.CosmeticItems.items
for k in pairs(Stores.CosmeticItems.items) do Stores.CosmeticItems.items[k].slot = k end
Stores.PerformItems.slots = #Stores.PerformItems.items
for k in pairs(Stores.PerformItems.items) do Stores.PerformItems.items[k].slot = k end
Stores.ToolItems.slots = #Stores.ToolItems.items
for k in pairs(Stores.ToolItems.items) do Stores.ToolItems.items[k].slot = k end
Stores.RepairItems.slots = #Stores.RepairItems.items
for k in pairs(Stores.RepairItems.items) do Stores.RepairItems.items[k].slot = k end
Stores.NosItems.slots = #Stores.NosItems.items
for k in pairs(Stores.NosItems.items) do Stores.NosItems.items[k].slot = k end