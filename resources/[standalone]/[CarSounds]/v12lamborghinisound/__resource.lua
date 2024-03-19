resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

files {
	'audioconfig/v12lamborghinisound_game.dat151.rel',
	'audioconfig/v12lamborghinisound_sounds.dat54.rel',
	'sfx/dlc_v12lamborghinisound/v12lamborghinisound.awc',
	'sfx/dlc_v12lamborghinisound/v12lamborghinisound_npc.awc'
}

data_file 'AUDIO_GAMEDATA' 'audioconfig/v12lamborghinisound_game.dat'
data_file 'AUDIO_SOUNDDATA' 'audioconfig/v12lamborghinisound_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'sfx/dlc_v12lamborghinisound'

client_script {
    'vehicle_names.lua'
}