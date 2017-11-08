package = "blitz-extensions"
version = "scm-0"

source = {
	url = "git://github.com/FernandoBatels/blitz-extensions-lua.git",
}

description = {
	summary = "Simple and Small extensions for lua",
	detailed = [[
		Simple and Small extensions for lua
	]],
	homepage = "https://github.com/FernandoBatels/blitz-extensions-lua",
	license = "MIT/X11",
}

dependencies = {
	"lua >= 5.1"
}

build = {
	type = "none",
	install = {
		lua = {
			extensions = "extensions.lua",
		},
	},
	copy_directories = {},
}
