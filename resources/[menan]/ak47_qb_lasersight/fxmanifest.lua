fx_version 'cerulean'
game 'gta5'
version '2.0'
author 'MenanAk47'

client_scripts {
    'config.lua',
    'client/utils.lua',
    'client/main.lua',
}

server_scripts {
    'server/main.lua',
}

escrow_ignore {
    'config.lua',
    'client/utils.lua',
}

lua54 'yes'

dependencies {
    'qb-core',
    '/onesync',
}
dependency '/assetpacks'