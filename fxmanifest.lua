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

-- Globbing
-- Some entry types may support 'globbing' for multiple files. These take a pattern syntax as follows:

-- Example	Matches
-- *.lua	a.lua, b.lua (non-recursively)
-- This matches all files in the current directory with the .lua extension.
-- Examples: a.lua, b.lua. It does not look into subdirectories.

-- dir/*.dll	dir/a.dll, b.dll (non-recursively)
-- This matches all .dll files directly inside the dir directory.
-- Examples: dir/a.dll, dir/b.dll. Again, it only considers files inside dir, not subdirectories.

-- **/*.lua	dir1/a.lua, dir2/b.lua, dir1/dir2/f.lua
-- This matches all .lua files in the current directory and all subdirectories at any level.
-- Examples: dir1/a.lua, dir2/b.lua, dir1/dir2/f.lua.

-- **.lua	same as above
-- This is shorthand for the same as **/*.lua — matches all .lua files in the current directory and all subdirectories.

-- **/cl_*.lua	dir1/cl_hi.lua, etc.
-- This matches all .lua files with names starting with cl_ in the current directory and all subdirectories.
-- Examples: dir1/cl_hi.lua, dir2/subdir/cl_example.lua.

-- In summary:

-- * matches any file name in the current directory.
-- ** extends the match to include subdirectories at all levels.
-- Patterns like cl_* are prefixes or suffixes for more specific filtering.
