resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

files {
    "data/**/*.meta"   
}


data_file "HANDLING_FILE"           "data/**/handling.meta"
data_file "VEHICLE_METADATA_FILE"   "data/**/vehicles.meta"
data_file "CARCOLS_FILE"            "data/**/carcols.meta"
data_file "VEHICLE_VARIATION_FILE"  "data/**/carvariations.meta"
data_file 'VEHICLE_LAYOUTS_FILE'    "data/**/vehiclelayouts.meta"

client_scripts {
    'cl-2Step.lua',
    'Config.lua',
	'client.lua'

}

server_script 'sv-2Step.lua'






client_scripts {
	'client.lua'
}

