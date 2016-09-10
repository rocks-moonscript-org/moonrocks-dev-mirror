package = 'hglib'
version = 'scm-0'
source = {
	url = 'hg+https://bitbucket.org/av6/lua-hglib',
	branch = 'default'
}
description = {
	summary = 'Mercurial command server client library.',
	detailed = [[
		A pure-Lua library for interacting with Mercurial's command server.
	]],
	homepage = 'https://bitbucket.org/av6/lua-hglib',
	license = 'MIT'
}

dependencies = {
	'lpc ~> 1.0.0',
	-- lpc seems to be 5.1-only (contrary to what its rockspec says), at least
	-- until https://github.com/LuaDist/lpc/pull/1 is merged, for example.
	-- Since hglib is depending on it, it's also 5.1-only at the moment.
	'lua ~> 5.1'
}

build = {
	type = 'builtin',
	modules = {
		hglib = 'hglib.lua'
	},
	copy_directories = { 'examples', 'spec' }
}
