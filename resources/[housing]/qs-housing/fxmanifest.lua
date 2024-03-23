fx_version 'bodacious'

game 'gta5'

lua54 'yes'

version '3.0.2'

ui_page 'html/index.html'

shared_scripts {
	'@ox_lib/init.lua',
	'shared/*.lua',
	'locales/*.lua'
}

client_scripts {
	'client/**/**/**/**.lua'
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'server/**/**/**/**.lua'
}

files {
	'html/**',
	'locales/**'
}

server_export {
	'hasKey'
}

dependencies {
	'ox_lib',
	'bob74_ipl',
	'meta_libs'
}

escrow_ignore {
	'shared/config.lua',
	'shared/furniture.lua',
	'locales/*.lua',
	'client/custom/**/**.lua',
	'server/custom/**/**.lua'
}

dependency '/assetpacks'