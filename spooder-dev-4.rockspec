package = "spooder"
version = "dev-4"
source = {
	url = "git+https://github.com/darkwiiplayer/spooder"
}
description = {
	summary = "A cute little task runner for Lua",
	homepage = "https://github.com/darkwiiplayer/spooder",
	license = "Unlicense"
}
dependencies = {
	"lua >= 5.1, ~> 5",
	"arrr ~> 3",
	"lumber ~> 2.1"
}
build = {
	type = "builtin",
	modules = {
		spooder = "spooder/init.lua"
	},
	install = {
		bin = {
			"bin/spooder"
		}
	}
}
