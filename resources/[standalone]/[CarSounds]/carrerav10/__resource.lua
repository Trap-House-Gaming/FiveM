resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

files {
	'audioconfig/carrerav10_game.dat151.rel',
	'audioconfig/carrerav10_sounds.dat54.rel',
	'sfx/dlc_carrerav10/carrerav10.awc',
	'sfx/dlc_carrerav10/carrerav10_npc.awc'
}

data_file 'AUDIO_GAMEDATA' 'audioconfig/carrerav10_game.dat'
data_file 'AUDIO_SOUNDDATA' 'audioconfig/carrerav10_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'sfx/dlc_carrerav10'

client_script {
    'vehicle_names.lua'
}