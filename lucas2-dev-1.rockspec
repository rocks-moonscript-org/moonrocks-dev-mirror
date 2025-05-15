package = "lucas2"
version = "dev-1"
rockspec_format = "3.0"

source = {
	url = "git+https://github.com/username/my_module",
	tag = "0.1.0",
}

description = {
	summary = "Example Lua module in Rust",
	detailed = "...",
	homepage = "https://github.com/username/my_module",
	license = "MIT",
}

dependencies = {
	"lua >= 5.1",
}

build_dependencies = {
	"luarocks-build-rust-mlua",
}

build = {
	type = "rust-mlua",
	modules = {
		"lucas2",
	},
}
