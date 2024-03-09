fx_version 'adamant'
game 'gta5'
description 'ak47 qb clothing'
author "MenanAk47 (MenanAk47#3129)"
version "4.6"

ui_page 'html/index.html'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'config.lua',
	'config-*.lua',
	'server/utils.lua',
	'server/skin.lua',
	'server/billing.lua',
	'server/job.lua',
	'server/main.lua',

	'locales/locale.lua',
    'locales/en.lua',
}

client_scripts {
	'@menuv/menuv.lua',
	'@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/ComboZone.lua',
	'config.lua',
	'config-*.lua',
	'client/utils.lua',
	'client/convert.lua',
	'client/skin.lua',
	'client/billing.lua',
	'client/job.lua',
	'client/core.lua',
	'client/menu.lua',
	'client/datastore.lua',
	'client/cam.lua',

	'locales/locale.lua',
    'locales/en.lua',
}

files {
	'html/index.html',
	'html/style.css',
	'html/screen.css',
	'html/reset.css',
	'html/script.js',
	'html/icons/*.png'
}

dependencies {
	'menuv',
	'skinchanger',
	'qb-core',
	'qb-management',
	'qb-input',
	'qb-target',
}

provide 'qb-clothing'

escrow_ignore {
	'INSTALL ME FIRST/**/*',
	'locales/*.lua',
    'config.lua',
    'config-*.lua',
    'server/utils.lua',
    'server/skin.lua',
    'client/utils.lua',
    'client/skin.lua',
}

lua54 'yes'

dependency '/assetpacks'