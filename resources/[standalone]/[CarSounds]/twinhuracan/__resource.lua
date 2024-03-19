resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

files {
	'audioconfig/twinhuracan_game.dat151.rel',
	'audioconfig/twinhuracan_sounds.dat54.rel',
	'sfx/dlc_twinhuracan/twinhuracan.awc',
	'sfx/dlc_twinhuracan/twinhuracan_npc.awc'
}

data_file 'AUDIO_GAMEDATA' 'audioconfig/twinhuracan_game.dat'
data_file 'AUDIO_SOUNDDATA' 'audioconfig/twinhuracan_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'sfx/dlc_twinhuracan'

client_script {
    'vehicle_names.lua'
}