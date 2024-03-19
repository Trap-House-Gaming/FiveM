resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

files {
	'audioconfig/novitecsvj_game.dat151.rel',
	'audioconfig/novitecsvj_sounds.dat54.rel',
	'sfx/dlc_novitecsvj/novitecsvj.awc',
	'sfx/dlc_novitecsvj/novitecsvj_npc.awc'
}

data_file 'AUDIO_GAMEDATA' 'audioconfig/novitecsvj_game.dat'
data_file 'AUDIO_SOUNDDATA' 'audioconfig/novitecsvj_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'sfx/dlc_novitecsvj'

client_script {
    'vehicle_names.lua'
}