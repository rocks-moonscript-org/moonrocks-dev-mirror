package = "spooder"
version = "dev-1"
source = {
	url = "git+https://github.com/darkwiiplayer/spooder"
}
description = {
	summary = "A cute little task runner for Lua",
	homepage = "https://github.com/darkwiiplayer/spooder",
	license = "Unlicense"
}
dependencies = {
	"lua >= 5.1, < 5.5",
	"arrr ~> 2.0",
	"lumber ~> 2.0",
}
build = {
	type = "builtin",
	modules = {
		["spooder.helper"] = "spooder/helper.lua",
		["spooder"] = "spooder/init.lua",
	},
	install = {
		bin = {
			"bin/spooder"
		}
	}
}
