
package = "kminser"
version = "scm-0"

source = {
   url = "git://github.com/kaeza/kminser",
}

description = {
	-- TODO: description
	summary = "Data serialization with minification.",
	detailed = [[
		This module contains functions to serialize values to strings, and
		deserialize these strings back to values. It is able to serialize
		strings, numbers, booleans, nil values, and tables.
	]],
	homepage = "http://github.com/kaeza/kminser",
	license = "MIT",
}

dependencies = {
	"lua >= 5.1, < 5.4",
}

build = {
	type = "builtin",
	modules = {
		["kminser"] = "kminser.lua",
	},
}
