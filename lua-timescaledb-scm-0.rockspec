package = 'lua-timescaledb'
version = 'scm-0'
source = {
	url = 'git+https://codeberg.org/leso-kn/lua-timescaledb'
}
description = {
	homepage = 'https://codeberg.org/leso-kn/lua-timescaledb',
	summary = 'A Lua library for interacting with timescaledb',
	license = 'MIT'
}
build = {
	type = 'builtin',
	modules = {
		['timescaledb'] = 'timescaledb.lua'
	}
}
dependencies = {
	'luasql-postgres ~> 2'
}
