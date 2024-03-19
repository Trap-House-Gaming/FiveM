resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

files {
	'audioconfig/superchargerdemonv8_game.dat151.rel',
	'audioconfig/superchargerdemonv8_sounds.dat54.rel',
	'sfx/dlc_superchargerdemonv8/superchargerdemonv8.awc',
	'sfx/dlc_superchargerdemonv8/superchargerdemonv8_npc.awc'
}

data_file 'AUDIO_GAMEDATA' 'audioconfig/superchargerdemonv8_game.dat'
data_file 'AUDIO_SOUNDDATA' 'audioconfig/superchargerdemonv8_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'sfx/dlc_superchargerdemonv8'

client_script {
    'vehicle_names.lua'
}