fx_version 'cerulean'
game 'gta5'

name "va_greeting"
description "oxmysql test"
author "viktor"
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
