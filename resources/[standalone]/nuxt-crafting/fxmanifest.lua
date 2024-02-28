fx_version 'cerulean'
game 'gta5'

author 'Nuxt Development'
description 'Crafting system by Nuxt Development.'
version '0.0.1'

ui_page 'build/index.html'
files {
    'build/*',
	'build/**/*'
}
shared_script 'config.lua'
server_script {
    '@oxmysql/lib/MySQL.lua',
    'server/*.lua'
}
client_script 'client/*.lua'

escrow_ignore {
    '*.lua',
    '**/*.lua'
}

lua54 'yes'

dependency '/assetpacks'
dependency '/assetpacks'