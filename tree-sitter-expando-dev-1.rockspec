rockspec_format = "3.0"
package = "tree-sitter-expando"
version = "dev-1"

description = {
	summary = "\240\159\140\178\240\159\145\168 mutt expando grammar for tree-sitter",
	license = "MIT",
	homepage = "https://github.com/neomutt/tree-sitter-expando",
}

dependencies = {
	"lua>=5.1",
}

build_dependencies = {
	"luarocks-build-treesitter-parser >= 6.1.0",
}

source = {
	url = "git+https://github.com/neomutt/tree-sitter-expando.git",
	tag = "68ed35b1bfd4a97678a3442cb09c27f6b5753a4f",
}

build = {
	type = "treesitter-parser",
	lang = "expando",
	generate = true,
}
