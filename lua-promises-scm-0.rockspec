package = "lua-promises"
version = "scm-0"

source = {
	url = "git://github.com/zserge/lua-promises.git",
}

description = {
	summary = "A+ promises in Lua",
	detailed = [[
		A very minimal promises implementation, mostly compliant with
		A+ promises specs (https://promisesaplus.com/).
	]],
	homepage = "http://github.com/zserge/lua-promises",
	license = "MIT/X11",
}

dependencies = {
	"lua >= 5.1"
}

build = {
	type = "none",
	install = {
		lua = {
			deferred = "deferred.lua",
		},
	},
	copy_directories = {},
}
