package = 'lua-nss'
version = 'scm-0'
source = {
	url = 'git+https://codeberg.org/leso-kn/lua-nss'
}
description = {
	homepage = 'https://codeberg.org/leso-kn/lua-nss',
	license = 'MIT'
}
build = {
	type = 'builtin',
	modules = {
		['nss.https'] = 'nss/https.lua',
		nss = {
			sources = { 'nss/lnss.c' },
			libraries = { 'nss3', 'nspr4', 'ssl3' },
			incdirs = { '/usr/include/nss', '/usr/include/nspr' }
		}
	}
}
dependencies = {
	'luasocket ~> 3'
}
