fx_version 'cerulean'
games {'gta5'}
lua54 'yes'
use_experimental_fxv2_oal 'yes'

author 'T1GER#9080'
discord 'https://discord.gg/FdHkq5q'
description 'T1GER Tuning System'
version '1.0.2'

dependency 't1ger_lib'

client_scripts {
	'language.lua',
	'config.lua',
	'mods.lua',
	'client/main.lua',
	'escrow/client.lua'
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'language.lua',
	'config.lua',
	'mods.lua',
	'server/main.lua',
	'escrow/server.lua'
}

shared_scripts {
    '@ox_lib/init.lua'
}

files {
    'carcols_gen9.meta',
    'carmodcols_gen9.meta'
}

data_file 'CARCOLS_GEN9_FILE' 'carcols_gen9.meta'
data_file 'CARMODCOLS_GEN9_FILE' 'carmodcols_gen9.meta'

escrow_ignore {
    'config.lua',
    'language.lua',
    'client/*.lua',
    'server/*.lua',
	'mods.lua'
}

exports {}

server_exports {}

dependency '/assetpacks'