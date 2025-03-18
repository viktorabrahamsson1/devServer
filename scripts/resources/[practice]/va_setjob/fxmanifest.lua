fx_version 'cerulean'
game 'gta5'

lua54 'yes'

name "va_setjob"
description "setting the job of the player"
author "va"
version "1"

shared_scripts {
	'shared/*.lua'
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua',
	'@oxmysql/lib/MySQL.lua'
}
