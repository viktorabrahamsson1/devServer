fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name "testtemplate"
description "test"
author "viktor"
version "1"


ui_page 'web/build/index.html'

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua',
	'@oxmysql/lib/MySQL.lua'
}

shared_scripts {
	'@ox_lib/init.lua',
}


files {
	'web/build/index.html',
	'web/build/**/*'
}
