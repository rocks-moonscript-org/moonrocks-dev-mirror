package = "lua-acme"
version = "scm-1"
source = {
	url = "hg+http://code.zash.se/lua-acme",
	tag = "tip"
}
description = {
	homepage = "http://code.zash.se/lua-acme",
	license = "MIT"
}
dependencies = {
	"lua-jwc",
	"luasocket",
	"luaossl",
	"lua-cjson",
	"luafilesystem",
}
build = {
	type = "builtin",
	modules = {
		["acme.account"] = "account.lua",
		["acme.challenge.http-01"] = "challenge.http-01.lua",
		["acme.challenge.dns-01"] = "challenge.dns-01.lua",
		["acme.datautil"] = "datautil.lua",
		["acme.error"] = "error.lua",
	},
	install = {
		bin = {
			"luacme"
		}
	},
}
