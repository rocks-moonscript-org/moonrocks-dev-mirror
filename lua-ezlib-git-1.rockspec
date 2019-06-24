package = 'lua-ezlib'
version = 'git-1'
source = {
	url = 'git://github.com/neoxic/lua-ezlib.git',
}
description = {
	summary = 'Easy ZLib module for Lua',
	license = 'MIT',
	homepage = 'https://github.com/neoxic/lua-ezlib',
	maintainer = 'Arseny Vakhrushev <arseny.vakhrushev@gmail.com>',
}
dependencies = {
	'lua >= 5.1',
}
external_dependencies = {
	ZLIB = {
		header = 'zlib.h',
		library = 'z',
	},
}
build = {
	type = 'builtin',
	modules = {
		ezlib = {
			sources = 'ezlib.c',
			incdirs = '$(ZLIB_INCDIR)',
			libdirs = '$(ZLIB_LIBDIR)',
			libraries = 'z',
		},
	},
}
