fx_version 'cerulean'
game 'gta5'

name "va_nui"
description "learning about nuis"
author "viktor"
version "1"

shared_scripts {
	'shared/*.lua'
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}

ui_page 'nui/nui.html'

files {
	'nui/nui.html',
	'nui/style.css',
	'nui/script.js',
	'nui/dist/bundle.js',
	'nui/images/*'
}
