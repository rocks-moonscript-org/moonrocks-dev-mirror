rockspec_format = "3.0"
package = "tree-sitter-zathurarc"
version = "dev-1"

description = {
	summary = "\240\159\140\178\240\159\145\168 zathurarc grammar for tree-sitter",
	license = "MIT",
	homepage = "https://github.com/nvim-treesitter/nvim-treesitter/pull/5948",
}

dependencies = {
	"lua>=5.1",
}

build_dependencies = {
	"luarocks-build-treesitter-parser >= 6.1.0",
}

source = {
	url = "git+https://github.com/Freed-Wu/tree-sitter-zathurarc.git",
	tag = "2b326398507173ee0991788dd522e556f31c3798",
}

build = {
	type = "treesitter-parser",
	lang = "zathurarc",
	generate = true,
}
