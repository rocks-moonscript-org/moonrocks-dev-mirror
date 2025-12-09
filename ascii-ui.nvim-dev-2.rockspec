rockspec_format = "3.0"
package = "ascii-ui.nvim"
version = "dev-2"

description = {
	summary = "A WIP extensible ui framework with no non-sense apis (hopefully) for nvim.",
	license = "MIT",
	maintainer = "rcasia",
}

dependencies = {
	"lua==5.1",
	"plenary.nvim==scm",
}

source = {
	url = "git+https://github.com/rcasia/ascii-ui.nvim.git",
	tag = "01922cc40c49211e3aabca3ef39a04debfedc580",
}

build = {
	type = "builtin",
}
