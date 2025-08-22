
package = "kstringex"
version = "scm-0"

description = {
	summary = "Extra string utilities.",
	detailed = [[
		KStringEx is a small library providing several utilities for dealing
		with strings.

		Currently contains string splitting (by Lua patterns, or just plain
		old strings), trim whitespace (left, right, or both), concatenate
		several values optionally with a separator, or expand variable
		references like `${somevar}`.
	]],
	license = "MIT",
	homepage = "https://codeberg.org/diegomartinez/kstringex",
}

source = {
   url = "git+https://codeberg.org/diegomartinez/kstringex.git",
   branch = "main",
}

dependencies = {
	"lua >= 5.1, < 5.4",
}

build = {
	type = "builtin",
	modules = {
		["kstringex"] = "kstringex.lua",
	},
}
