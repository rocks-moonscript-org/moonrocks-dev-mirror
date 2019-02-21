package = "lhex"
version = "scm-1"
source = {
	url = "git://github.com/ers35/lhex"
}
description = {
	summary = "Browse a file as hex in the terminal.",
	homepage = "https://github.com/ers35/lhex",
	license = "CC0",
}
dependencies = {
	"lua >= 5.1",
	"termfx >= 0.7.1",
}
build = {
	type = "builtin",
	modules = {},
	install = {
		bin = {
			["lhex"] = "lhex.lua",
		},
	},
}
