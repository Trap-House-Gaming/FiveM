resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

files {
	'audioconfig/sl65amgv12_game.dat151.rel',
	'audioconfig/sl65amgv12_sounds.dat54.rel',
	'sfx/dlc_sl65amgv12/sl65amgv12.awc',
	'sfx/dlc_sl65amgv12/sl65amgv12_npc.awc'
}

data_file 'AUDIO_GAMEDATA' 'audioconfig/sl65amgv12_game.dat'
data_file 'AUDIO_SOUNDDATA' 'audioconfig/sl65amgv12_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'sfx/dlc_sl65amgv12'

client_script {
    'vehicle_names.lua'
}