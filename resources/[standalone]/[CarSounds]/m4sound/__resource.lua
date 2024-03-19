resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

files {
	'audioconfig/m4sound_game.dat151.rel',
	'audioconfig/m4sound_sounds.dat54.rel',
	'sfx/dlc_m4sound/m4sound.awc',
	'sfx/dlc_m4sound/m4sound_npc.awc'
}

data_file 'AUDIO_GAMEDATA' 'audioconfig/m4sound_game.dat'
data_file 'AUDIO_SOUNDDATA' 'audioconfig/m4sound_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'sfx/dlc_m4sound'

client_script {
    'vehicle_names.lua'
}