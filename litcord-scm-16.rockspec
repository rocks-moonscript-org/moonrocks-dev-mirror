package = 'litcord'
version = 'scm-16'
source = {
	url = 'git://github.com/satom99/litcord',
	tag = 'indev',
}
description = {
	license = 'MIT',
	summary = 'Yet another unofficial Lua client API for Discord.',
	homepage = 'http://github.com/satom99/litcord',
	maintainer = 'AdamJames <satom99@github>',
}
dependencies = {
	'lua >= 5.1',
	'luasec',
	'lunajson',
	'lua-websockets',
}
build = {
	type = 'builtin',
	modules = {
		litcord = {
			sources = {},
			libdirs = {
				'litcord',
			},
		},
	},
}