--[[
    Welcome to the qb-houses configuration!
    To start configuring your new asset, please read carefully
    each step in the documentation that we will attach at the end of this message.

    Each important part of the configuration will be highlighted with a box.
    like this one you are reading now, where I will explain step by step each
    configuration available within this file.

    This is not all, most of the settings, you are free to modify it
    as you wish and adapt it to your framework in the most comfortable way possible.
    The configurable files you will find all inside client/custom/*
    or inside server/custom/*.

    Direct link to the resource documentation, read it before you start:
    https://docs.quasar-store.com/information/welcome
]]

Config = {}
Locales = {}

--[[
    The first thing will be to choose our main language, here you can choose
    between the default languages that you will find within locales/*,
    if yours is not there, feel free to create it!
]]

Config.Language = 'en'

--[[
    The current system will detect if you use qb-core or es_extended,
    but if you rename it, you can remove the value from Config.Framework
    and add it yourself after you have modified the framework files inside
    this script.

    Please keep in mind that this code is automatic, do not edit if
    you do not know how to do it.
]]

local esxHas = GetResourceState('es_extended') == 'started'
local qbHas = GetResourceState('qb-core') == 'started'

Config.Framework = esxHas and 'esx' or qbHas and 'qb' or 'standalone'

--[[
	The inventory system will help us add a personalized stash to each housing of this asset.
	With this function we can automatically detect what inventory do you use.

	If not on this list, you can configure it directly in the client/custom/inventory/*.lua,
	if you have questions, contact the seller of your asset.
]]

local function getInventory()
	local qsInvHas = GetResourceState('qs-inventory') == 'started'
	local qbInvHas = GetResourceState('qb-inventory') == 'started'
	local l2sInvHas = GetResourceState('l2s-inventory') == 'started'
	local psInvHas = GetResourceState('ps-inventory') == 'started'
	local oxInvHas = GetResourceState('ox_inventory') == 'started'
	local coreInvHas = GetResourceState('core_inventory') == 'started'
	local codemInvHas = GetResourceState('codem-inventory') == 'started'
	local chezzaInvHas = GetResourceState('inventory') == 'started'
	if qsInvHas or qbInvHas or l2sInvHas or psInvHas then
		return 'qs-inventory'
	elseif oxInvHas then
		return 'ox_inventory'
	elseif coreInvHas then
		return 'core_inventory'
	elseif codemInvHas then
		return 'codem-inventory'
	elseif chezzaInvHas then
		return 'inventory'
	else
		return 'default'
	end
end

Config.Inventory = getInventory()

--[[
	The phone system is not the most important thing, but it is a system that will allow
	Put the phone number on the sales board of the home, this way
	We will be able to communicate with the seller of the property before making a certain purchase.

	If you don't use qb-phone or qs-smartphone, you can configure it directly in the
	server/custom/phone/*.lua, if you have questions, contact the seller of your asset.
]]

Config.UseTarget = true -- Set true/false (only qb-target or ox_target)
Config.TargetLength = 5.0
Config.TargetWidth = 5.0

local function getPhone()
	local proHas = GetResourceState('qs-smartphone-pro') == 'started'
	local qsHas = GetResourceState('qs-smartphone') == 'started'
	local lbHas = GetResourceState('lb-phone') == 'started'
	local gksHas = GetResourceState('gksphone') == 'started'
	if proHas then
		return 'qs-smartphone-pro'
	elseif qsHas then
		return 'qs-smartphone'
	elseif lbHas then
		return 'lb-phone'
	elseif gksHas then
		return 'gksphone'
	else
		return 'default'
	end
end

Config.Phone = getPhone()

--[[
	Automated configuration of the wardrobe system, here we will detect the wardrobe system
	and it will set yours automatically.

	If not on this list, you can configure it directly in the client/custom/wardrobe/*.lua,
	if you have questions, contact the seller of your asset.
]]

local function getWardrobe()
	local qbcHas = GetResourceState('qb-clothing') == 'started'
	local codemcHas = GetResourceState('mAppearance') == 'started'
	local ak47cHas = GetResourceState('ak47_clothing') == 'started'
	local appearanceHas = GetResourceState('fivem-appearance') == 'started'
	local illeniumHas = GetResourceState('illenium-appearance') == 'started'
	local raidHas = GetResourceState('raid_clothes') == 'started'
	local rcorecHas = GetResourceState('rcore_clothes') == 'started'
	if qbcHas then
		return 'qb-clothing'
	elseif codemcHas then
		return 'mAppearance'
	elseif ak47cHas then
		return 'ak47_clothing'
	elseif appearanceHas then
		return 'fivem-appearance'
	elseif illeniumHas then
		return 'illenium-appearance'
	elseif raidHas then
		return 'raid_clothes'
	elseif rcorecHas then
		return 'rcore_clothes'
	else
		return 'default'
	end
end

Config.Wardrobe = getWardrobe()

--[[
	Automatic garage configuration, if you do not use any compatible garage
	or have not created a compatible garage in the custom files, there will
	automatically be no option to use garages.
]]

local function getGarages()
    local qbgHas = GetResourceState('qb-garages') == 'started'
    local qsHas = GetResourceState('qs-advancedgarages') == 'started'
    local jgHas = GetResourceState('jg-advancedgarages') == 'started'
    local cdHas = GetResourceState('cd_garage') == 'started'
    if qbgHas then
        return 'qb-garages'
    elseif qsHas then
        return 'qs-advancedgarages'
    elseif jgHas then
        return 'jg-advancedgarages'
    elseif cdHas then
        return 'cd-garage'
    else
        return 'standalone'
    end
end

Config.Garage = getGarages()

--[[
	General configurations of the asset, read each section to understand each configuration.
	Here we can choose the basic and advanced configuration of the asset.
]]

Config.CreatorJobs = { -- Choose the jobs suitable for creating houses
	'realestate',
	'police',
	'realestatejob'
}

Config.TestRemTime = 1      -- Visiting time inside the house (1 = 1 minute)
Config.MinZOffset = 30      -- Minimum shell spawn offset
Config.CreatorAlpha = 200   -- Ignore this if you don't want to edit the Alpha

Config.OpenHouseMenu = 'F3' -- Key to open the internal menu of the home
Config.OpenJobMenu = 'F7'   -- Key to open the house creation menu

--[[
	Illegal system configuration of the asset, make sure you have this controlled so as not to break the economy or the system of each player.
	Please make use of the mini-game scripts that you will see in the documentation > dependencies.
]]

Config.RequiredCop = 5 -- Number of police required (only for lockpicking)
Config.PoliceJobs = {  -- Jobs that will be considered police
	'realestate',
	'police',
	'realestatejob'
}

--[[
	Here we will configure the entire rental system for homes and
	even the credit times when purchasing through mortgages.
]]

Config.CreditEq = 0.3 -- Collection percentage for bank loans (default 0.3)
Config.CreditTime = 5 -- Time interval to collect bank credit (5 = 5 minutes)
Config.RentTime = 5   -- Time interval to collect rent (5 = 5 minutes)

--[[
	General configuration of decorations and stash of the house, configure
	if you can decorate anyone with keys or only the owner. Also the basic stash of each home.
]]

Config.DecorateOnlyAccessForOwner = true -- Can anyone with a key decorate or only the owner?
Config.HideRadarInDecorate = true        -- Disable radar in decorations?

Config.DefaultStashData = {
	maxweight = 1000000,
	slots = 30,
}

Config.Music = 'building' -- You can set false if you don't want music
Config.MusicVolume = 0.01 -- Choose a volume for the songs

--[[
	Shell configuration and 3D models for house creations, configure the props
	you want below or shell them in the first configuration, you can add infinity to this list.

	If you don't know how to get more shells, we recommend visiting the store of our trusted
	supplier and partner https://www.k4mb1maps.com, the best FiveM shells.
]]

Config.Shells = {
	[1] = { -- Tier 1
		model = 'standardmotel_shell',
		stash = {
			maxweight = 1000000,
			slots = 5,
		},
		imgs = {
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101712181017460736/motel.webp',
				label = 'Motel',
			},
		}

	},
	[2] = { -- Tier 2
		model = 'modernhotel_shell',
		stash = {
			maxweight = 1000000,
			slots = 5,
		},
		imgs = {
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101712459691208704/angle_1.webp',
				label = 'Angle 1',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101712460110643210/angle_2.webp',
				label = 'Angle 2',
			},
		}

	},
	[3] = { -- Tier 3
		model = 'modernhotel_shell',
		stash = {
			maxweight = 1000000,
			slots = 5,
		},
		imgs = {
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101712598019354684/bathroom.webp',
				label = 'Bathroom',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101712598409420850/Bedroom.webp',
				label = 'Bedroom',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101712598807887942/entry.webp',
				label = 'Entrance',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101712599185371146/Kitchen_and_Dining.webp',
				label = 'Kitchen and Dining',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101712599629963366/living_room_1.webp',
				label = 'Living Room Angle 1',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101712599982293022/living_room_2.webp',
				label = 'Living Room Angle 2',
			},
		},

	},
	[4] = { -- Tier 4
		model = 'furnitured_midapart',
		stash = {
			maxweight = 1000000,
			slots = 5,
		},
		imgs = {
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101712919412088955/bathroom.webp',
				label = 'Bathroom',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101712919735054417/bedroom.webp',
				label = 'Bedroom',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101712920083189770/entry.webp',
				label = 'Entrance',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101712920464859257/kitchen.webp',
				label = 'Kitchen',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101712920846544907/livingroom.webp',
				label = 'Living Room',
			},
		},

	},
	[5] = { -- Tier 5
		model = 'shell_garagem',
		stash = {
			maxweight = 1000000,
			slots = 5,
		},
		imgs = {
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713104288612384/entry.webp',
				label = 'Entrance',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713104926154853/kitchen.webp',
				label = 'Kitchen',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713105333006357/livingroom.webp',
				label = 'Living Room',
			},
		},

	},
	[6] = { -- Tier 6
		model = 'shell_office1',
		stash = {
			maxweight = 1000000,
			slots = 5,
		},
		imgs = {
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713104288612384/entry.webp',
				label = 'Entrance',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713104926154853/kitchen.webp',
				label = 'Kitchen',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713105333006357/livingroom.webp',
				label = 'Living Room',
			},
		},

	},
	[7] = { -- Tier 7
		model = 'shell_store1',
		stash = {
			maxweight = 1000000,
			slots = 5,
		},
		imgs = {
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713104288612384/entry.webp',
				label = 'Entrance',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713104926154853/kitchen.webp',
				label = 'Kitchen',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713105333006357/livingroom.webp',
				label = 'Living Room',
			},
		},

	},
	[8] = { -- Tier 8
		model = 'shell_warehouse1',
		stash = {
			maxweight = 1000000,
			slots = 5,
		},
		imgs = {
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713285117648976/entry.webp',
				label = 'Entance',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713285449007196/office.webp',
				label = 'Office',
			},
		},
	},
	[9] = { -- Tier 9
		model = 'container_shell',
		stash = {
			maxweight = 1000000,
			slots = 5,
		},
		imgs = {
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713526319497267/container.webp',
				label = 'Container',
			},
		},

	},
	[10] = { -- Tier 10
		model = 'shell_michael',
		stash = {
			maxweight = 1000000,
			slots = 5,
		},
		imgs = {
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713596683145267/bathroom.webp',
				label = 'Bathroom',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713597232586777/entry.webp',
				label = 'Entrance',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713597698166844/floor2.webp',
				label = 'Floor 2',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713598201471106/kitchen.webp',
				label = 'Kitchen',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713598734159962/livingroom.webp',
				label = 'Living Room',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713599178752020/room1.webp',
				label = 'Room 1',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713599690448956/room2.webp',
				label = 'Room 2',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713600176996394/room3.webp',
				label = 'Room 3',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713596179816499/room3dresser.webp',
				label = 'Room 3 Dresser',
			},
		},

	},
	[11] = { -- Tier 11
		model = 'shell_frankaunt',
		stash = {
			maxweight = 1000000,
			slots = 5,
		},
		imgs = {
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713596683145267/bathroom.webp',
				label = 'Bathroom',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713597232586777/entry.webp',
				label = 'Entrance',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713597698166844/floor2.webp',
				label = 'Floor 2',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713598201471106/kitchen.webp',
				label = 'Kitchen',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713598734159962/livingroom.webp',
				label = 'Living Room',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713599178752020/room1.webp',
				label = 'Room 1',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713599690448956/room2.webp',
				label = 'Room 2',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713600176996394/room3.webp',
				label = 'Room 3',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713596179816499/room3dresser.webp',
				label = 'Room 3 Dresser',
			},
		},

	},
	[12] = { -- Tier 12
		model = 'shell_ranch',
		stash = {
			maxweight = 1000000,
			slots = 5,
		},
		imgs = {
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713596683145267/bathroom.webp',
				label = 'Bathroom',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713597232586777/entry.webp',
				label = 'Entrance',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713597698166844/floor2.webp',
				label = 'Floor 2',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713598201471106/kitchen.webp',
				label = 'Kitchen',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713598734159962/livingroom.webp',
				label = 'Living Room',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713599178752020/room1.webp',
				label = 'Room 1',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713599690448956/room2.webp',
				label = 'Room 2',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713600176996394/room3.webp',
				label = 'Room 3',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713596179816499/room3dresser.webp',
				label = 'Room 3 Dresser',
			},
		},

	},
	[13] = { -- Tier 13
		model = 'shell_trailer',
		stash = {
			maxweight = 1000000,
			slots = 5,
		},
		imgs = {
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713596683145267/bathroom.webp',
				label = 'Bathroom',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713597232586777/entry.webp',
				label = 'Entrance',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713597698166844/floor2.webp',
				label = 'Floor 2',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713598201471106/kitchen.webp',
				label = 'Kitchen',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713598734159962/livingroom.webp',
				label = 'Living Room',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713599178752020/room1.webp',
				label = 'Room 1',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713599690448956/room2.webp',
				label = 'Room 2',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713600176996394/room3.webp',
				label = 'Room 3',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713596179816499/room3dresser.webp',
				label = 'Room 3 Dresser',
			},
		},

	},
	[14] = { -- Tier 14
		model = 'shell_lester',
		stash = {
			maxweight = 1000000,
			slots = 5,
		},
		imgs = {
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713596683145267/bathroom.webp',
				label = 'Bathroom',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713597232586777/entry.webp',
				label = 'Entrance',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713597698166844/floor2.webp',
				label = 'Floor 2',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713598201471106/kitchen.webp',
				label = 'Kitchen',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713598734159962/livingroom.webp',
				label = 'Living Room',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713599178752020/room1.webp',
				label = 'Room 1',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713599690448956/room2.webp',
				label = 'Room 2',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713600176996394/room3.webp',
				label = 'Room 3',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713596179816499/room3dresser.webp',
				label = 'Room 3 Dresser',
			},
		},

	},
	[15] = { -- Tier 15
		model = 'shell_v16mid',
		stash = {
			maxweight = 1000000,
			slots = 5,
		},
		imgs = {
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713596683145267/bathroom.webp',
				label = 'Bathroom',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713597232586777/entry.webp',
				label = 'Entrance',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713597698166844/floor2.webp',
				label = 'Floor 2',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713598201471106/kitchen.webp',
				label = 'Kitchen',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713598734159962/livingroom.webp',
				label = 'Living Room',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713599178752020/room1.webp',
				label = 'Room 1',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713599690448956/room2.webp',
				label = 'Room 2',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713600176996394/room3.webp',
				label = 'Room 3',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713596179816499/room3dresser.webp',
				label = 'Room 3 Dresser',
			},
		},

	},
	[16] = { -- Tier 16
		model = 'shell_trevor',
		stash = {
			maxweight = 1000000,
			slots = 5,
		},
		imgs = {
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713596683145267/bathroom.webp',
				label = 'Bathroom',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713597232586777/entry.webp',
				label = 'Entrance',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713597698166844/floor2.webp',
				label = 'Floor 2',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713598201471106/kitchen.webp',
				label = 'Kitchen',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713598734159962/livingroom.webp',
				label = 'Living Room',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713599178752020/room1.webp',
				label = 'Room 1',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713599690448956/room2.webp',
				label = 'Room 2',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713600176996394/room3.webp',
				label = 'Room 3',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713596179816499/room3dresser.webp',
				label = 'Room 3 Dresser',
			},
		},

	},
	[17] = { -- Tier 17
		model = 'shell_v16low',
		stash = {
			maxweight = 1000000,
			slots = 5,
		},
		imgs = {
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713596683145267/bathroom.webp',
				label = 'Bathroom',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713597232586777/entry.webp',
				label = 'Entrance',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713597698166844/floor2.webp',
				label = 'Floor 2',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713598201471106/kitchen.webp',
				label = 'Kitchen',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713598734159962/livingroom.webp',
				label = 'Living Room',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713599178752020/room1.webp',
				label = 'Room 1',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713599690448956/room2.webp',
				label = 'Room 2',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713600176996394/room3.webp',
				label = 'Room 3',
			},
			{
				url = 'https://cdn.discordapp.com/attachments/1101313033684394084/1101713596179816499/room3dresser.webp',
				label = 'Room 3 Dresser',
			},
		},

	},
}

exports('getShells', function()
	return Config.Shells
end)

Config.HouseObjects = {
	[1] = { -- House 1
		model = 'lf_house_04_',
	},
	[2] = { -- House 2
		model = 'lf_house_05_',
	},
	[3] = { -- House 3
		model = 'lf_house_07_',
	},
	[4] = { -- House 4
		model = 'lf_house_08_',
	},
	[5] = { -- House 5
		model = 'lf_house_09_',
	},
	[6] = { -- House 6
		model = 'lf_house_10_',
	},
	[7] = { -- House 7
		model = 'lf_house_11_',
	},
	[8] = { -- House 8
		model = 'lf_house_13_',
	},
	[9] = { -- House 9
		model = 'lf_house_15_',
	},
	[10] = { -- House 10
		model = 'lf_house_16_',
	},
	[11] = { -- House 11
		model = 'lf_house_17_',
	},
	[12] = { -- House 12
		model = 'lf_house_18_',
	},
	[13] = { -- House 13
		model = 'lf_house_19_',
	},
	[14] = { -- House 14
		model = 'lf_house_20_',
	},
}

Config.Islands = {
	[1] = { -- Island 1
		model = 'qs_pineisland_01',
	},
	[2] = { -- Island 2
		model = 'qs_pineisland_02',
	},
	[3] = { -- Island 3
		model = 'qs_pineisland_03',
	},
	[4] = { -- Island 4
		model = 'qs_treeisland_01',
	},
	[5] = { -- Island 5
		model = 'qs_treeisland_02',
	},
	[6] = { -- Island 6
		model = 'qs_treeisland_03',
	},
	[7] = { -- Island 7
		model = 'qs_tropiisland_01',
	},
	[8] = { -- Island 8
		model = 'qs_tropiisland_02',
	},
	[9] = { -- Island 9
		model = 'qs_tropiisland_03',
	},
}

Config.IplData = {
	{
		export = function()
			return exports['bob74_ipl']:GetExecApartment1Object()
		end,
		exitCoords = vec3(-787.44, 315.81, 217.64),
		iplCoords = vec3(-787.78050000, 334.92320000, 215.83840000),
		defaultTheme = 'sharp',
		themes = {
			{ label = 'Modern',     value = 'modern',     price = 500 },
			{ label = 'Moody',      value = 'moody',      price = 500 },
			{ label = 'Vibrant',    value = 'vibrant',    price = 500 },
			{ label = 'Sharp',      value = 'sharp',      price = 500 },
			{ label = 'Monochrome', value = 'monochrome', price = 500 },
			{ label = 'Seductive',  value = 'seductive',  price = 500 },
			{ label = 'Regal',      value = 'regal',      price = 500 },
			{ label = 'Aqua',       value = 'aqua',       price = 500 }
		},
		-- if will you change stash data, you need to wipe all stashes in database
		stash = {
			maxweight = 1000000,
			slots = 5,
		},
	},
	{
		export = function()
			return exports['bob74_ipl']:GetExecApartment2Object()
		end,
		exitCoords = vec3(-773.62, 342.06, 196.69),
		iplCoords = vec3(-773.22580000, 322.82520000, 194.88620000),
		defaultTheme = 'modern',
		themes = {
			{ label = 'Modern',     value = 'modern',     price = 500 },
			{ label = 'Moody',      value = 'moody',      price = 500 },
			{ label = 'Vibrant',    value = 'vibrant',    price = 500 },
			{ label = 'Sharp',      value = 'sharp',      price = 500 },
			{ label = 'Monochrome', value = 'monochrome', price = 500 },
			{ label = 'Seductive',  value = 'seductive',  price = 500 },
			{ label = 'Regal',      value = 'regal',      price = 500 },
			{ label = 'Aqua',       value = 'aqua',       price = 500 }
		},
		stash = {
			maxweight = 1000000,
			slots = 70,
		},
	},
	{
		export = function()
			return exports['bob74_ipl']:GetExecApartment3Object()
		end,
		exitCoords = vec3(-787.38, 315.76, 187.91),
		iplCoords = vec3(-787.78050000, 334.92320000, 186.11340000),
		defaultTheme = 'aqua',
		themes = {
			{ label = 'Modern',     value = 'modern',     price = 500 },
			{ label = 'Moody',      value = 'moody',      price = 500 },
			{ label = 'Vibrant',    value = 'vibrant',    price = 500 },
			{ label = 'Sharp',      value = 'sharp',      price = 500 },
			{ label = 'Monochrome', value = 'monochrome', price = 500 },
			{ label = 'Seductive',  value = 'seductive',  price = 500 },
			{ label = 'Regal',      value = 'regal',      price = 500 },
			{ label = 'Aqua',       value = 'aqua',       price = 500 }
		},
		stash = {
			maxweight = 1000000,
			slots = 100,
		},
	},
	{
		export = function()
			return exports['bob74_ipl']:GetFinanceOffice1Object()
		end,
		defaultTheme = 'warm',
		themes = {
			{ label = 'Warm',         value = 'warm',         price = 500 },
			{ label = 'Classical',    value = 'classical',    price = 500 },
			{ label = 'Cintage',      value = 'vintage',      price = 500 },
			{ label = 'Contrash',     value = 'contrast',     price = 500 },
			{ label = 'Rich',         value = 'rich',         price = 500 },
			{ label = 'Cool',         value = 'cool',         price = 500 },
			{ label = 'Ice',          value = 'ice',          price = 500 },
			{ label = 'Conservative', value = 'conservative', price = 500 },
			{ label = 'Polished',     value = 'polished',     price = 500 }
		},
		exitCoords = vec3(-141.99, -617.78, 168.82),
		iplCoords = vec3(-141.1987, -620.913, 168.8205),
		stash = {
			maxweight = 1000000,
			slots = 5,
		},
	},
}

--[[
	General controls when modifying or creating shells/ipl/mlo, configure the language and controls.
]]

ActionControls = {
	forward = {
		label = 'Forward +/-',
		codes = { 33, 32 }
	},
	right = {
		label = 'Right +/-',
		codes = { 35, 34 }
	},
	up = {
		label = 'Up +/-',
		codes = { 52, 51 }
	},
	add_point = {
		label = 'Add Point',
		codes = { 24 }
	},
	set_any = {
		label = 'Set',
		codes = { 24 }
	},
	undo_point = {
		label = 'Undo Last',
		codes = { 25 }
	},
	set_position = {
		label = 'Set Position',
		codes = { 24 }
	},
	add_garage = {
		label = 'Add Garage',
		codes = { 24 }
	},
	rotate_z = {
		label = 'RotateZ +/-',
		codes = { 20, 73 }
	},
	rotate_z_scroll = {
		label = 'RotateZ +/-',
		codes = { 17, 16 }
	},
	increase_z = {
		label = 'Z Boundary +/-',
		codes = { 180, 181 }
	},
	decrease_z = {
		label = 'Z Boundary +/-',
		codes = { 21, 180, 181 }
	},
	done = {
		label = 'Done',
		codes = { 191 }
	},
	change_player = {
		label = 'Player +/-',
		codes = { 82, 81 }
	},
	change_shell = {
		label = 'Change Shell +/-',
		codes = { 189, 190 }
	},
	select_player = {
		label = 'Select Player',
		codes = { 191 }
	},
	cancel = {
		label = 'Cancel',
		codes = { 194 }
	},
	change_outfit = {
		label = 'Outfit +/-',
		codes = { 82, 81 }
	},
	delete_outfit = {
		label = 'Delete Outfit',
		codes = { 178 }
	},
	select_vehicle = {
		label = 'Vehicle +/-',
		codes = { 82, 81 }
	},
	spawn_vehicle = {
		label = 'Spawn Vehicle',
		codes = { 191 }
	},
	leftApt = {
		label = 'Previous Apartment',
		codes = { 174 }
	},
	rightApt = {
		label = 'Next Apartment',
		codes = { 175 }
	},
	testPos = {
		label = 'Test Pos',
		codes = { 47 }
	},
}


Config.DynamicDoors = true -- Enable dynamic doors? needs `setr game_enableDynamicDoorCreation "true"`

CameraOptions = {
	lookSpeedX = 500.0,
	lookSpeedY = 500.0,
	moveSpeed = 10.0,
	climbSpeed = 10.0,
	rotateSpeed = 50.0,
}

--[[
	In this configuration we can create custom houses from the same configuration, without using
	the in-game system. We do not recommend this option unless you are an experienced developer.

	Otherwise, use the F7 menu and the corresponding work.
]]

CreatingHouse = {}

Config.Houses = {
	-- 	['test-house'] = {
	-- 		coords = {
	-- 			cam = {
	-- 				x = -236.2,
	-- 				y = -989.01,
	-- 				z = 29.16,
	-- 				h = 161.51,
	-- 				yaw = 1,
	-- 			},
	-- 			enter = {
	-- 				x = -236.2,
	-- 				y = -989.01,
	-- 				z = 29.16,
	-- 				h = 161.51,
	-- 			}
	-- 		},
	-- 		owned = 0,
	-- 		price = 0,
	-- 		locked = true,
	-- 		address = 'Test House',
	-- 		tier = 1,
	-- 		garage = {
	-- 			max = 4, -- Maximum spawn point [max slot]
	-- 			access = {},
	-- 			slots = {
	-- 				[1] = { -- Spawn Points
	-- 					x = -125.64788055419922,
	-- 					y = -1297.646728515625,
	-- 					z = 29.44520378112793,
	-- 					h = 93.55599975585938,
	-- 				},
	-- 			},
	-- 			coords = {
	-- 				-- Garage location
	-- 				x = -228.8,
	-- 				y = -990.41,
	-- 				z = 29.34,
	-- 				h = 267.02,
	-- 			}
	-- 		},
	-- 		decorations = {},
	-- 	}
}

--[[
    Debug mode, this mode is to receive constant prints and information
    from the system, we do not recommend enabling it if you are not a
    developer, but it will help to understand how the resource works.
]]

Debug = true
Config.ZoneDebug = false
