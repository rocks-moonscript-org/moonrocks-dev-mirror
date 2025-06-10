package = 'luarocks-build-list'
version = 'scm-0'
source = {
	url = 'git+https://codeberg.org/leso-kn/luarocks-build-list'
}
description = {
	summary = 'Chain multiple luarocks build-backends together',
	homepage = 'https://codeberg.org/leso-kn/luarocks-build-list',
	license = 'MIT'
}
build = {
	type = 'builtin',
	modules = {
		['luarocks.build.list'] = 'src/luarocks/build/list.lua'
	}
}
