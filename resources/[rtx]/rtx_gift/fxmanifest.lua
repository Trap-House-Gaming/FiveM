fx_version 'adamant'

game 'gta5'

description 'RTX GIFT SYSTEM'

version '1.0'

server_scripts {
	--'@mysql-async/lib/MySQL.lua',  -- enable this and remove oxmysql line (line 11) if you use mysql-async (only enable this for qbcore/esx framework)
	--'@oxmysql/lib/MySQL.lua', -- enable this and remove mysql async line (line 10) if you use oxmysql (only enable this for qbcore/esx framework)
	'config.lua',
	'language/main.lua',
	'server/main.lua',
	'server/other.lua'
}

client_scripts {
	'config.lua',
	'language/main.lua',
	'client/main.lua'
}

files {
	'html/ui.html',
	'html/styles.css',
	'html/scripts.js',
	'html/howler.core.js',
	'html/debounce.min.js',
	'html/BebasNeuePro-Bold.ttf',
	'html/BigBottomCarton.ttf',
	'html/img/*.png',
	'html/sounds/*.mp3'
}

ui_page 'html/ui.html'

lua54 'yes'

escrow_ignore {
  'config.lua',
  'language/main.lua',
  'server/other.lua'
}
dependency '/assetpacks'