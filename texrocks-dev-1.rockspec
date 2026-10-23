rockspec_format = "3.0"
package = "texrocks"
version = "dev-1"

description = {
	summary = "A minimal (La)TeX distribution powered by lux/luarocks and luaTeX.",
	license = "GPL-3.0",
	homepage = "https://texrocks.readthedocs.io/",
	labels = {
		"latex",
		"lualatex",
		"luatex",
		"tex",
		"texinfo",
	},
}

dependencies = {
	"lua>=5.1",
}

source = {
	url = "git+https://github.com/ustctug/texrocks.git",
	tag = "cf65d2a85ecb83daad950f49b256317c8fecfbc3",
}

deploy = {
	wrap_bin_scripts = false,
}

build = {
	type = "builtin",
}
