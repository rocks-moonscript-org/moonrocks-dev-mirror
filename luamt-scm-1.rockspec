package = "luamt"
version = "scm-1"
source = {
	url = "git+https://git.sr.ht/~olive/luamt-server",
}
description = {
	summary = "Minetest protocols",
--	detailed = [[]],
	homepage = "https://sr.ht/~olive/luamt/",
	license = "ISC",
}
dependencies = {
	"lua ~> 5",
	"struct",
	"luasocket",
}
build = {
	type = "builtin",
	modules = {
		["luamt"] = "luamt/init.lua",
		["luamt.conn"] = "luamt/conn.lua",
	},
}
