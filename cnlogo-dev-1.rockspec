rockspec_format = "3.0"
package = "cnlogo"
version = "dev-1"

description = {
	summary = "A package designed to produce logos of Chinese colleges.",
	license = "AGPL-3.0-or-later",
	homepage = "https://github.com/yuxtech/cnlogo",
}

dependencies = {
	"lua>=5.1",
	"pgf>=3.0.0, <4.0.0",
}

build_dependencies = {
	"luatex",
	"latex-base",
	"luarocks-build-l3build",
}

source = {
	url = "git+https://github.com/yuxtech/cnlogo.git",
	tag = "3b52d82f2f7b9a8fb5a5c07c31179c53293bd8be",
}

build = {
	type = "l3build",
}
