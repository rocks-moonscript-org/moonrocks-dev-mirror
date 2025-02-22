rockspec_format = "3.0"
package = "lexical-path"
version = "dev-1"
source = {
	url = "git://github.com/euclidianAce/lexical-path",
}
description = {
	summary = "Lexical path management",
	detailed = "An attempt at an abstract Path type that allows for basic things to be made cross platform",
	homepage = "https://github.com/euclidianAce/lexical-path",
	license = "CC0",
	issues_url = "https://github.com/euclidianAce/lexical-path/issues",
}
dependencies = {}
build = {
	type = "builtin",
	modules = {
		["lexical-path"] = "build/lexical-path.lua",
	},
	install = {
		lua = {
			["lexical-path"] = "src/lexical-path.tl",
		}
	},
}
