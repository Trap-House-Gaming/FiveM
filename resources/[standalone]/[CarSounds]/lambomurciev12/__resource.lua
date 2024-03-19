resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

files {
	'audioconfig/lambomurciev12_game.dat151.rel',
	'audioconfig/lambomurciev12_sounds.dat54.rel',
	'sfx/dlc_lambomurciev12/lambomurciev12.awc',
	'sfx/dlc_lambomurciev12/lambomurciev12_npc.awc'
}

data_file 'AUDIO_GAMEDATA' 'audioconfig/lambomurciev12_game.dat'
data_file 'AUDIO_SOUNDDATA' 'audioconfig/lambomurciev12_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'sfx/dlc_lambomurciev12'

client_script {
    'vehicle_names.lua'
}