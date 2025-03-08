package = 'lua-marionette'
version = 'scm-0'
source = {
	url = 'https://codeberg.org/leso-kn/lua-marionette/archive/main.zip'
}
description = {
	summary = 'A client for the marionette protocol to automate the Mozilla Firefox browser in Lua',
	homepage = 'https://codeberg.org/leso-kn/lua-marionette',
	license = 'MIT'
}
build = {
	type = 'builtin',
	modules = {
		['marionette.init'] = 'marionette/init.lua',
		['marionette.native'] = 'marionette/native.c'
	}
}
dependencies = {
	'lua-cjson ~> 2',
	'luachild ~> 0.1',
	'luasocket ~> 3'
}
