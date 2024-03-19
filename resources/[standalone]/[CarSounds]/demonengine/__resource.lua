resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

files {
	'audioconfig/demonengine_game.dat151.rel',
	'audioconfig/demonengine_sounds.dat54.rel',
	'sfx/dlc_demonengine/demonengine.awc',
	'sfx/dlc_demonengine/demonengine_npc.awc'
}

data_file 'AUDIO_GAMEDATA' 'audioconfig/demonengine_game.dat'
data_file 'AUDIO_SOUNDDATA' 'audioconfig/demonengine_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'sfx/dlc_demonengine'

client_script {
    'vehicle_names.lua'
}