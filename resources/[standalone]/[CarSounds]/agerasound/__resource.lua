resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

files {
	'audioconfig/agerasound_game.dat151.rel',
	'audioconfig/agerasound_sounds.dat54.rel',
	'sfx/dlc_agerasound/agerasound.awc',
	'sfx/dlc_agerasound/agerasound_npc.awc'
}

data_file 'AUDIO_GAMEDATA' 'audioconfig/agerasound_game.dat'
data_file 'AUDIO_SOUNDDATA' 'audioconfig/agerasound_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'sfx/dlc_agerasound'

client_script {
    'vehicle_names.lua'
}