package = "lualink"
version = "scm-0"
source = {
	url = "git+https://github.com/adraenwan/lualink",
	branch = "luarocks",
}

description = {
	summary = "A linker for lua code.",
	detailed = "lualink puts all your dependencies inside one file, so that you can embed it easily.",
	homepage = "https://github.com/adraenwan/lualink",
	license = "MIT",
	maintainer = "Adraenwan",
}

dependencies = {
	"lua >= 5.1, < 5.4",
}

build = {
	type = "builtin",
	modules = {
		lualink = "lualink.lua",
	},
}
