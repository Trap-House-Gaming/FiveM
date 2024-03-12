fx_version 'adamant'
game 'gta5'
description 'Ak47 Sit Chair'
author 'MenanAk47'
version '1.1'

client_scripts {
    "@ox_lib/init.lua",
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    
    "config.lua",
    "framework/client/*.lua",
    "modules/**/config.lua",

    "locales/locale.lua",
    "locales/en.lua",

    "utils/client.lua",
    "modules/**/client/*.lua",
}

server_scripts {
    "@mysql-async/lib/MySQL.lua",
    "@ox_lib/init.lua",
    "config.lua",
    "framework/server/*.lua",
    "modules/**/config.lua",

    "locales/locale.lua",
    "locales/en.lua",

    "utils/server.lua",
    "modules/**/server/*.lua",
}

escrow_ignore {
    "INSTALL ME FIRST/**/*",
    "config.lua",
    "modules/**/config.lua",
    "modules/**/customizable.lua",
    "locales/*.lua",
    "framework/**/*",
}

lua54 'yes'

dependencies {
    'PolyZone',
    'qb-core',
    'ox_lib',
    'qb-target',
}

dependency '/assetpacks'