package = "nozzle"
version = "git-1"
description = {
	summary = "Filters and pipes to be used with Orbit applications (and more)",
	detailed = [[
Nozzle is a Lua library that allows to write filters and chain them together into pipelines.
]],
	license = "MIT/X11"
}
dependencies = {
	"lua >= 5.1"
}
source = {
	url = "git://git.inconcert/inconcert-6/nozzle.git",
	dir = "nozzle"
}
external_dependencies = {

}
build = {
	type = "none",
	install = {
		lua = {
			nozzle = "src/nozzle.lua",
			["nozzle.generic"] = "src/nozzle/generic.lua",
			["nozzle.helpers"] = "src/nozzle/helpers.lua",
			["nozzle.stock"] = "src/nozzle/stock.lua"
		}
	}
}
