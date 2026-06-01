rockspec_format = "3.0"
package = "rsjson-lua"
version = "dev-2"

description = {
	summary = "a json lua module using the serde-json rust crate",
	license = "MIT",
	homepage = "https://github.com/benniekiss/rs-mod-lua",
	issues_url = "https://github.com/benniekiss/rs-mod-lua/issues",
	maintainer = "benniekiss",
	labels = {
		"json",
		"rust",
		"bindings",
	},
}

dependencies = {
	"lua>=5.1",
}

build_dependencies = {
	"luarocks-build-rust-mlua>=0.2.6",
}

source = {
	url = "git+https://github.com/benniekiss/rs-mod-lua",
	dir = "crates/rsjson-lua",
	tag = "rsjson-lua-v0.3.0",
}

build = {
	type = "rust-mlua",
	modules = {
		rsjson = "rsjson_lua",
	},
	default_features = false,
	features = {
		"module",
	},
	include = {
		["library/rsjson.d.lua"] = "rsjson.d.lua",
	},
}
