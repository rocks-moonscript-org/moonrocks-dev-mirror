package = "luashi"
version = "git-0"

source = {
	url = "git://github.com/selenil/luashi",
    tag = "v0.1",
}

description = {
	summary = "Tiny library for shell scripting with Lua",
	detailed = [[
		Tiny library with syntax sugar for shell scripting in Lua (inspired by
		Python's sh module, but is much more simplified)
	]],
	homepage = "http://github.com/selenil/luashi",
	license = "MIT/X11",
}

dependencies = {
	"lua >= 5.1, < 5.5",
    "luaposix >= 36.3",
}

build = {
	type = "builtin",
	modules = { 
        sh = "sh.lua",
    },
}
