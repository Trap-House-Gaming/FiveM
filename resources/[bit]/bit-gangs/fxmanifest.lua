fx_version 'cerulean'
game 'gta5'

author 'bitc0de'
description 'BIT Gangs'

client_scripts {'config/shared.lua', 'client/callbacks.lua', 'client/constant.lua', 'client/missions.lua',
                'client/functions.lua', 'options/client/*.lua', 'client/main.lua', 'spray/client.lua'}

server_scripts {'versions.lua', 'config/shared.lua', 'config/s_config.lua', 'server/main.lua', 'spray/server.lua',
                'options/server/*.lua'}

ui_page "html/index.html"

files {'html/index.html', 'html/script.js', 'html/jscolor.min.js', 'html/jquery.rwdImageMaps.js', 'html/index.css',
       'html/style.css', 'html/public/external/*'}

exports {"hasGang"}

escrow_ignore {'config/*'}

lua54 'yes'

dependency '/assetpacks'