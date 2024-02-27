fx_version 'adamant'
game 'gta5'

--shared_script '@es_extended/imports.lua'
shared_script 'config.lua'
shared_script 'locales.lua'

 client_scripts {
     '@PolyZone/client.lua',
     '@PolyZone/BoxZone.lua',
     '@PolyZone/ComboZone.lua',
     "client/client.lua",
     "client/atm.lua",
     "client/functions.lua",
     "client/PostAPI.lua",
     "client/GetAPI.lua",
 }

 server_scripts {
     "@oxmysql/lib/MySQL.lua",
     "server/server.lua",
     "server/atm.lua",
     "server/functions.lua",
     "server/PostAPI.lua",
     "server/GetAPI.lua",
     "server/open.lua"
 }

ui_page 'dist/index.html'

files {
    'dist/images/*',
    'dist/index.html',
    'dist/*.js',
    'dist/styles.css',
}

escrow_ignore {
    'config.lua',
    'locales.lua',
    'server/open.lua'
}

lua54 'yes'
dependency '/assetpacks'