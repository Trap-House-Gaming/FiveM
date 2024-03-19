resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

files {
	'audioconfig/kawasakih2sound_game.dat151.rel',
	'audioconfig/kawasakih2sound_sounds.dat54.rel',
	'sfx/dlc_kawasakih2sound/kawasakih2sound.awc',
	'sfx/dlc_kawasakih2sound/kawasakih2sound_npc.awc'
}

data_file 'AUDIO_GAMEDATA' 'audioconfig/kawasakih2sound_game.dat'
data_file 'AUDIO_SOUNDDATA' 'audioconfig/kawasakih2sound_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'sfx/dlc_kawasakih2sound'

client_script {
    'vehicle_names.lua'
}