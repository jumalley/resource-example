fx_version 'cerulean'
game 'gta5'

lua54 'yes' -- https://www.lua.org/manual/5.4/manual.html

author 'Ju'
description 'example description'

version '1.0.0'

shared_scripts {
	'@ox_lib/init.lua',
	'config/*.lua',
    'locales/*.lua',
	'client/utils.lua',
}

client_scripts {
	'client/utils.lua',
	'client/custom/**/*.lua',
	'client/modules/**/*.lua',
	'client/modules/*.lua',
	'client/*.lua',
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/utils.lua',
	'server/custom/**/*.lua',
	'server/modules/*.lua',
	'server/functions.lua',
}

dependencies {
	'ox_lib',
 	'/server:4752',
	'/gameBuild:3095',  
}

-- ui_page 'html/index.html'
-- file 'html/index.html'

-- this also supports absolute URLs
-- ui_page 'https://ui-frontend.cfx.example.com/b20210501/index.html'

-- this_is_a_map 'yes' -- can be any value

-- loadscreen 'html/loadscreen.html'
-- file 'html/loadscreen.html'

-- provide 'mysql-async' 
-- Marks the current resource as a replacement for the specified resource. This means it'll start instead of the specified resource, if another resource requires it, and will act as if it is said resource if started.

files {
    'audio/mywaves/stupidcar.awc',
    'myvehicles.meta',
    'metas/*_handling.meta',
}

data_file 'AUDIO_WAVEPACK' 'audio/mywaves'
data_file 'VEHICLE_METADATA_FILE' 'myvehicles.meta'
data_file 'HANDLING_FILE' 'metas/*_handling.meta'

