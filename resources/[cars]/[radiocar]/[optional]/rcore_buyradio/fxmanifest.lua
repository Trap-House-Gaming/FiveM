fx_version 'adamant'
games { 'gta5' }

client_scripts {
	"config.lua",
	"shared.lua",
	"locales/*.lua",

	"client/menu/system/*.lua",
	"client/menu/*.lua",
	"client/menu/module/*.lua",
	"client/menu/exports/*.lua",

	"client/*.lua",
}

server_scripts {
	"config.lua",
	"shared.lua",
	"locales/*.lua",

	"server/qbcore.lua",	
	"server/server.lua",
}

files {
	"html/*.html",
	"html/scripts/*.js",
	"html/img/*.*",
	"html/css/*.css",
}

escrow_ignore {
	"config.lua",
	"locales/*.lua",

	"client/menu/system/*.lua",
	"client/menu/*.lua",
	"client/menu/module/*.lua",
	"client/menu/exports/*.lua",

	"client/*.lua",
	"config.lua",
	"server/server.lua",
	"server/qbcore.lua",
}

lua54 "yes"

ui_page "html/index.html"
dependency '/assetpacks'