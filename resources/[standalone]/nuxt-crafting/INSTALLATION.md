# Step 1

Put the plugin inside your resource file and add `ensure nuxt-crafting` at the bottom of your server.cfg file.

# Step 2

Run your tables.sql file inside the file and create the tables.

# Step 3

From the shared files in the client and server files delete the ones you don't use and rename the one you do use to shared.lua.

# Step 4

Add the items to your server.

```lua
	['workbench_1'] 			 	 = {['name'] = 'workbench_1', 					['label'] = 'Level 1 Workbench', 		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'workbench_1.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['workbench_2'] 			 	 = {['name'] = 'workbench_2', 					['label'] = 'Level 2 Workbench', 		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'workbench_2.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['workbench_3'] 			 	 = {['name'] = 'workbench_3', 					['label'] = 'Level 3 Workbench', 		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'workbench_3.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['researching_table'] 			 = {['name'] = 'researching_table', 			['label'] = 'Researching Table', 		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'researching_table.png', 	['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['tool_kit'] 			 		 = {['name'] = 'tool_kit', 						['label'] = 'Tool Kit', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'tool_kit.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
```

# Step 5

Open item_images folder and use images in your inventory.
