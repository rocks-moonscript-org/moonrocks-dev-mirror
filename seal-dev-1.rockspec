rockspec_format = '3.0'
package = 'seal'
version = 'dev-1'

source = {
	url = 'git://github.com/emmathemartian/seal.git'
}

description = {
	summary = "A metaprogrammable markup language designed for making simple websites.",
	homepage = "https://github.com/EmmaTheMartian/seal",
	maintainer = "EmmaTheMartian <emmathemartian@gmail.com>",
	license = "MIT",
	labels = {
		"seal",
		"static-site-generator",
		"ssg",
		"metaprogramming",
		"markup-language",
		"lua",
		"moonscript",
		"fennel",
	},
}

dependencies = {
	"lua >= 5.1",
	"argparse",
	"luafilesystem",
	"moonscript",
}

build = {
	type = "builtin",
	modules = {
		seal = "src/seal.lua",
	},
	install = {
		bin = { "bin/seal" },
	},
}