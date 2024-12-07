fx_version 'cerulean'
game 'gta5'

lua54 'yes'

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
