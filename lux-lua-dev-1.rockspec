rockspec_format = "3.0"
package = "lux-lua"
version = "dev-1"

description = {
	summary = "The Lua API for the lux package manager",
	license = "LGPL-3.0+",
	homepage = "https://lux.lumen-labs.org/",
	issues_url = "https://github.com/lumen-oss/lux/issues",
	maintainer = "neorocks",
	labels = {
		"luarocks",
		"lux",
		"package-manager",
		"packagemanager",
		"build",
	},
}

dependencies = {
	"lua>=5.1",
}

build_dependencies = {
	"luarocks-build-rust-mlua>=0.2.5",
}

source = {
	url = "git+https://github.com/lumen-oss/lux.git",
	tag = "804f94b9a2dae350e78cd6b419209da29f99d9d0",
}

build = {
	type = "rust-mlua",
	modules = {
		lux = "lux_lua",
	},
	features = {
		"vendored",
	},
}
