fx_version 'cerulean'
game 'gta5'

client_scripts {'config.lua', 'client/util.lua', 'client/constants.lua', 'client/client.lua', 'm-clotheslist.json',
                'f-clotheslist.json'}

server_scripts {"@mysql-async/lib/MySQL.lua",'config.lua', 'version.lua', 'server/server.lua', 'server/open_server.lua'}

ui_page "html/index.html"

files {'html/index.html', 'html/clothes/*.jpg', 'html/script.js', 'html/style.css', 'html/bitclothingshop.css',
       'html/public/playground_assets/*'}

dependencies {'screenshot-basic'}

escrow_ignore {'config.lua', 'server/open_server.lua'}

lua54 'yes'

dependency '/assetpacks'