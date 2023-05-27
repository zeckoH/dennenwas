fx_version 'adamant'

game 'gta5'

description 'WITWAS SCRIPT'

version '1.0.0'

server_scripts {
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'config.lua',
	'client/main.lua'
}

dependencies {
	'es_extended',
	'progressBars',
	'bob74_ipl'
}

shared_script '@es_extended/imports.lua'