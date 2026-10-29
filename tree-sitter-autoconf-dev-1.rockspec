rockspec_format = "3.0"
package = "tree-sitter-autoconf"
version = "dev-1"

description = {
	summary = "\240\159\140\178\240\159\145\168 configure.ac (autoconf) grammar for tree-sitter",
	license = "MIT",
	homepage = "https://github.com/Freed-Wu/tree-sitter-autoconf",
}

dependencies = {
	"lua>=5.1",
}

build_dependencies = {
	"luarocks-build-treesitter-parser >= 6.1.0",
}

source = {
	url = "git+https://github.com/Freed-Wu/tree-sitter-autoconf.git",
	tag = "f0510698c96726cc246652f31f6c1833cf065877",
}

build = {
	type = "treesitter-parser",
	lang = "autoconf",
	generate = true,
}
