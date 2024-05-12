resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

files {

	'data/**/carcols.meta',
	'data/**/carvariations.meta',
	'data/**/handling.meta',
	'data/**/vehiclelayouts.meta',
	'data/**/vehicles.meta',

 

	
	'audioconfig/lgcy01chargerv8_game.dat151.rel',
	'audioconfig/lgcy01chargerv8_sounds.dat54.rel',
	
	'sfx/dlc_lgcy01chargerv8/lgcy01chargerv8.awc',
	'sfx/dlc_lgcy01chargerv8/lgcy01chargerv8.awc',
	


}

	data_file 'VEHICLE_LAYOUTS_FILE'	'data/**/vehiclelayouts.meta'
	data_file 'HANDLING_FILE'			'data/**/handling.meta'
	data_file 'VEHICLE_METADATA_FILE'	'data/**/vehicles.meta'
	data_file 'CARCOLS_FILE'			'data/**/carcols.meta'
	data_file 'VEHICLE_VARIATION_FILE'	'data/**/carvariations.meta'


	
	data_file 'AUDIO_GAMEDATA' 'audioconfig/lgcy01chargerv8_game.dat151'
	data_file 'AUDIO_SOUNDDATA' 'audioconfig/lgcy01chargerv8_sounds.dat54'
	data_file 'AUDIO_WAVEPACK' 'sfx/dlc_lgcy01chargerv8'
	


	client_script 'veh_label.lua'
