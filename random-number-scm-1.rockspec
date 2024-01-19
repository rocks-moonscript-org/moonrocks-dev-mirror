package = "random-number"
version = "scm-1"
source = {
   url = "https://github.com/LionelBergen/RandomNumber",
   tag = "v1.0",
}
description = {
   summary = "RandomNumber generator and manager.",
   detailed = [[
      This is a wrapper for Lua's builtin math.random. Purpose is for debugging & testing applications
	  that use random numbers. Having numbers be reproduced the same way makes for easier testing & debugging
   ]],
   homepage = "https://github.com/LionelBergen/RandomNumber",
}
dependencies = {
    "lua >= 5.1",
}
build = {
	["type"] = "builtin",
	modules = {
		randomnumber = "RandomNumber.lua"
	}
}