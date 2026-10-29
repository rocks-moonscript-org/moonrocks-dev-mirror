rockspec_format = "3.0"
package = "tree-sitter-xf86conf"
version = "dev-1"

description = {
	summary = "\240\159\140\178\240\159\145\168 xf86conf grammar for tree-sitter",
	license = "MIT",
	homepage = "https://github.com/Freed-Wu/tree-sitter-xf86conf",
}

dependencies = {
	"lua>=5.1",
}

build_dependencies = {
	"luarocks-build-treesitter-parser >= 6.1.0",
}

source = {
	url = "git+https://github.com/Freed-Wu/tree-sitter-xf86conf.git",
	tag = "4c01ac380d5a2895ace80d12f513daeb8071cfa0",
}

build = {
	type = "treesitter-parser",
	lang = "xf86conf",
	generate = true,
}
