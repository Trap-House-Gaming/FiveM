fx_version 'cerulean'
game 'gta5'


client_scripts {
    'config.lua',
    'jobs/*.lua',
    'job.lua',
    'app.lua',
    'client.lua',
}

server_scripts {
    'version.lua',
    'config.lua',
    'server.lua'
}

ui_page "html/index.html"

files {
    'html/index.html',
    'html/script.js',
    'html/style.css',
    'html/jobs.css',
    'html/assets/*',
    'html/assets/sounds/*'
}

escrow_ignore {
    "config.lua",
    "server.lua",
    "jobs/*.lua"
}

lua54 'yes'
dependency '/assetpacks'