package = "lundler"
version = "dev-2"
source = {
   url = "https://github.com/Romaboy/lundler"
}
description = {
   summary = "Resolve lua rocks with Rockfile",
   homepage = "https://github.com/Romaboy/lundler",
   license = "MIT",
   maintainer = "Roman Kushin <romadzao@gmail.com>"
}
dependencies = {
   "luafilesystem", "moonscript", "lua-cjson", "luasec"
}
build = {
	type = "builtin",
	modules = {
		lundler = "lua/lundler.lua"
	},
	install = {
		bin = { "lua/lundler" }
	}
}
