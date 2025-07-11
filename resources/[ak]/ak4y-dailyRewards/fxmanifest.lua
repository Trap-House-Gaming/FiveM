fx_version 'cerulean'
game 'gta5'

description "ak4y scripts ~ discord.gg/ak4y"
author "ak4y#0001"

client_scripts {
	'config.lua',
	'client/main.lua',
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	-- '@mysql-async/lib/MySQL.lua',
	'config.lua',
	'server/main.lua',
}

ui_page {
	'html/ui.html'
}

files {
	'html/ui.html',
	'html/font/*.ttf',
	'html/font/*.otf',
	'html/css/*.css',
	'html/images/*.jpg',
	'html/images/*.png',
	'html/js/*.js',
}

escrow_ignore {
	'config.lua',
	
}  

lua54 'on'
dependency '/assetpacks'