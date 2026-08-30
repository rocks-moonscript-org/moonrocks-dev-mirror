package = 'lua-hob64'
version = 'scm-0'
source = {
	url = 'git+https://codeberg.org/leso-kn/lua-hob64'
}
description = {
	homepage = 'https://codeberg.org/leso-kn/lua-hob64',
	license = 'MIT',
	summary = 'Header-only Base64 library for Lua written in portable ANSI C'
}
build = {
	type = 'builtin',
	modules = {
		hob64 = {
			sources = 'lhob64.c'
		}
	}
}
