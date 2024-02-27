resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

files {
    'vehicles.meta',
    'carvariations.meta',
    'carcols.meta',
    'handling.meta',
    'vehiclelayouts.meta',
	'audioconfig/nisgtr35_amp.dat10.rel',
	'audioconfig/nisgtr35_game.dat151.rel',
	'audioconfig/nisgtr35_sounds.dat54.rel',
	'sfx/dlc_nisgtr35/nisgtr35.awc',
	'sfx/dlc_nisgtr35/nisgtr35_npc.awc',
}

data_file 'HANDLING_FILE' 'handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'vehicles.meta'
data_file 'CARCOLS_FILE' 'carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'vehiclelayouts.meta'
data_file 'AUDIO_SYNTHDATA' 'audioconfig/nisgtr35_amp.dat'
data_file 'AUDIO_GAMEDATA' 'audioconfig/nisgtr35_game.dat'
data_file 'AUDIO_SOUNDDATA' 'audioconfig/nisgtr35_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'sfx/dlc_nisgtr35'

client_script 'vehicle_names.lua'