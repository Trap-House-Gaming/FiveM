Config = {

BlipSprite = 237,
BlipColor = 26,
BlipText = 'Workbench',


CraftingStopWithDistance = true, -- Crafting will stop when not near workbench

ExperiancePerCraft = 10, -- The amount of experiance added per craft (100 Experiance is 1 level)

HideWhenCantCraft = false, -- Instead of lowering the opacity it hides the item that is not craftable due to low level or wrong job

Categories = {

['smgs'] = {
	Label = 'SMGs',
	Image = 'weapon_microsmg',
	Jobs = {}
},
['pistols'] = {
	Label = 'Pistols',
	Image = 'WEAPON_SR40',
	Jobs = {}
},
['pattach'] = {
	Label = 'Attachments',
	Image = 'pistol_extendedclip',
	Jobs = {}
},
['medical'] = {
	Label = 'MEDICAL',
	Image = 'bandage',
	Jobs = {}
},
['sattach'] = {
	Label = 'Attachments',
	Image = 'at_clip_drum_pistol',
	Jobs = {}
},
['extra'] = {
	Label = 'Extras',
	Image = 'handcuffs',
	Jobs = {}
}

},

PermanentItems = { -- Items that dont get removed when crafting
	['wrench'] = true
},

Recipes = { -- Enter Item name and then the speed value! The higher the value the more torque

['bandage'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'medical', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {'ambulance'}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 2, -- The amount that will be crafted
	SuccessRate = 100, -- 100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 10, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['clothe'] = 2, -- item name and count, adding items that dont exist in database will crash the script
		['wood'] = 1
	}
}, 

['WEAPON_APPISTOL'] = {
	Level = 15, -- From what level this item will be craftable
	Category = 'pistols', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, --  100% you will recieve the item
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['metalscrap'] = 550, -- item name and count, adding items that dont exist in database will crash the script
		['steel'] = 350,
		['iron'] = 450,
		['copper'] = 450,
		['diamond_ring'] = 1
		
	}
}, 

['weapon_pistol'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'pistols', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['iron'] = 150, -- item name and count, adding items that dont exist in database will crash the script
		['steel'] = 100,
		['metalscrap'] = 175
	}
},

['weapon_pistol_mk2'] = {
	Level = 1, -- From what level this item will be craftable
	Category = 'pistols', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['iron'] = 200, -- item name and count, adding items that dont exist in database will crash the script
		['steel'] = 150,
		['metalscrap'] = 225
	}
},
['weapon_combatpistol'] = {
	Level = 2, -- From what level this item will be craftable
	Category = 'pistols', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['iron'] = 250, -- item name and count, adding items that dont exist in database will crash the script
		['steel'] = 200,
		['metalscrap'] = 275
	}
},
['weapon_snspistol_mk2'] = {
	Level = 3, -- From what level this item will be craftable
	Category = 'pistols', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['iron'] = 300, -- item name and count, adding items that dont exist in database will crash the script
		['steel'] = 250,
		['metalscrap'] = 325
	}
},

['weapon_pistolxm3'] = {
	Level = 4, -- From what level this item will be craftable
	Category = 'pistols', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['iron'] = 200, -- item name and count, adding items that dont exist in database will crash the script
		['steel'] = 150,
		['metalscrap'] = 225
	}
},
['weapon_heavypistol'] = {
	Level = 6, -- From what level this item will be craftable
	Category = 'pistols', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['iron'] = 350, -- item name and count, adding items that dont exist in database will crash the script
		['steel'] = 300,
		['metalscrap'] = 375
	}
},

-- Pistol Attachments
['pistol_ammo'] = {
	Level = 0, -- From what level this item will be craftable
	Category = 'pattach', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 5, -- The amount that will be crafted
	SuccessRate = 100, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 15, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['copper'] = 100, -- item name and count, adding items that dont exist in database will crash the script
		['glass'] = 75,
		['rubber'] = 125
	}
},
['clip_attachment'] = {
	Level = 5, -- From what level this item will be craftable
	Category = 'pattach', -- The category item will be put in
	isGun = false, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['plastic'] = 150, -- item name and count, adding items that dont exist in database will crash the script
		['aluminum '] = 125,
		['rubber'] = 100
	}
},
--smgs
['weapon_microsmg'] = {
	Level = 13, -- From what level this item will be craftable
	Category = 'smgs', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['metalscrap'] = 650, 
		['steel'] = 450,
		['iron'] = 550,
		['copper'] = 550,
		['diamond_ring'] = 1,
		['goldbar'] = 2

	}
},
['weapon_machinepistol'] = {
	Level = 12, -- From what level this item will be craftable
	Category = 'smgs', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['metalscrap'] = 600, 
		['steel'] = 400,
		['iron'] = 500,
		['copper'] = 500,
		['diamond_ring'] = 1,
		['goldbar'] = 3
	}
},
['weapon_minismg'] = {
	Level = 15, -- From what level this item will be craftable
	Category = 'smgs', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['metalscrap'] = 700, 
		['steel'] = 500,
		['iron'] = 600,
		['copper'] = 600,
		['diamond_ring'] = 1,
		['goldbar'] = 4
	}
},
['weapon_smg'] = {
	Level = 16, -- From what level this item will be craftable
	Category = 'smgs', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['metalscrap'] = 750, 
		['steel'] = 550,
		['iron'] = 650,
		['copper'] = 650,
		['diamond_ring'] = 2,
		['goldbar'] = 5
	}
},
['weapon_smg_mk2'] = {
	Level = 15, -- From what level this item will be craftable
	Category = 'smgs', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['metalscrap'] = 700, 
		['steel'] = 500,
		['iron'] = 600,
		['copper'] = 600,
		['diamond_ring'] = 2,
		['goldbar'] = 4
	}
},
['weapon_assaultsmg'] = {
	Level = 16, -- From what level this item will be craftable
	Category = 'smgs', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['metalscrap'] = 700, 
		['steel'] = 500,
		['iron'] = 600,
		['copper'] = 600,
		['diamond_ring'] = 1,
	}
},
['weapon_combatpdw'] = {
	Level = 17, -- From what level this item will be craftable
	Category = 'smgs', -- The category item will be put in
	isGun = true, -- Specify if this is a gun so it will be added to the loadout
	Jobs = {}, -- What jobs can craft this item, leaving {} allows any job
	JobGrades = {}, -- What job grades can craft this item, leaving {} allows any grade
	Amount = 1, -- The amount that will be crafted
	SuccessRate = 100, -- 90% That the craft will succeed! If it does not you will lose your ingredients
	requireBlueprint = false, -- Requires a blueprint whitch you need to add in the database yourself TEMPLATE: itemname_blueprint EXAMPLE: bandage_blueprint
	Time = 20, -- Time in seconds it takes to craft this item
	Ingredients = { -- Ingredients needed to craft this item
		['metalscrap'] = 750, 
		['steel'] = 550,
		['iron'] = 650,
		['copper'] = 650,
		['diamond_ring'] = 2,
		['goldbar'] = 6
	}
},

--Smg Attachments
['smg_ammo'] = {
	Level = 5, -- 
	Category = 'sattach', 
	isGun = false, 
	Jobs = {}, 
	JobGrades = {}, 
	Amount = 5, 
	SuccessRate = 100, 
	requireBlueprint = false, 
	Time = 10, 
	Ingredients = { 
		['copper'] = 150, 
		['glass'] = 125,
		['rubber'] = 175
	}
},
['drum_attachment'] = {
	Level = 10, -- 
	Category = 'sattach', 
	isGun = false, 
	Jobs = {}, 
	JobGrades = {}, 
	Amount = 5, 
	SuccessRate = 100, 
	requireBlueprint = false, 
	Time = 15, 
	Ingredients = { 
		['plastic'] = 250,
		['aluminum '] = 225,
		['rubber'] = 200
	}
},
-- Cuff Bench
['armor'] = {
	Level = 5, -- 
	Category = 'extra', 
	isGun = false, 
	Jobs = {}, 
	JobGrades = {}, 
	Amount = 1, 
	SuccessRate = 100, 
	requireBlueprint = false, 
	Time = 5, 
	Ingredients = { 
		['steel'] = 150,
		['rubber'] = 175
	}
},
['handcuffs'] = {
	Level = 2, -- 
	Category = 'extra', 
	isGun = false, 
	Jobs = {}, 
	JobGrades = {}, 
	Amount = 1, 
	SuccessRate = 100, 
	requireBlueprint = false, 
	Time = 5, 
	Ingredients = { 
		['plastic'] = 125,
		['aluminum '] = 150
	}
},
['advancedlockpick'] = {
	Level = 0, -- 
	Category = 'extra', 
	isGun = false, 
	Jobs = {}, 
	JobGrades = {}, 
	Amount = 1, 
	SuccessRate = 100, 
	requireBlueprint = false, 
	Time = 5, 
	Ingredients = { 
		['metalscrap'] = 75,
		['iron '] = 75
	}
}
},--

Workbenches = { -- Every workbench location, leave {} for jobs if you want everybody to access

		{coords = vector3(22.85,-634.94,7.51), jobs = {}, gangs = {}, blip = false, recipes = {'weapon_pistol', 'weapon_pistol_mk2', 'weapon_combatpistol', 'weapon_snspistol_mk2','weapon_pistolxm3','weapon_heavypistol','weapon_appistol','pistol_ammo','clip_attachment'}, radius = 3.0 },
		{coords = vector3(590.12,-3281.39,6.07), jobs = {}, gangs = {}, blip = false, recipes = {'weapon_microsmg','weapon_machinepistol','weapon_minismg','weapon_smg','weapon_smg','weapon_smg_mk2','weapon_smg_mk2','weapon_combatpdw','smg_ammo','drum_attachment'}, radius = 3.0 },
		{coords = vector3(831.72,-2335.14,30.33), jobs = {}, gangs = {}, blip = false, recipes = {'armor','handcuffs','advancedlockpick'}, radius = 3.0 }

},
 

Text = {

    ['not_enough_ingredients'] = 'You dont have enough ingredients',
    ['you_cant_hold_item'] = 'You cant hold the item',
    ['item_crafted'] = 'Item crafted!',
    ['wrong_job'] = 'You cant open this workbench',
    ['workbench_hologram'] = '[~b~E~w~] Workbench',
    ['wrong_usage'] = 'Wrong usage of command',
    ['inv_limit_exceed'] = 'Inventory limit exceeded! Clean up before you lose more',
    ['crafting_failed'] = 'You failed to craft the item!'

}

}



function SendTextMessage(msg)

        SetNotificationTextEntry('STRING')
        AddTextComponentString(msg)
        DrawNotification(0,1)

        --EXAMPLE USED IN VIDEO
        --exports['mythic_notify']:SendAlert('inform', msg)

end
