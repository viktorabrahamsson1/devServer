fx_version 'cerulean'
game 'gta5'

name "va_spawn"
description "test"
author "test"
version "1"

shared_scripts {
	'shared/*.lua'
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/*.lua'
}
