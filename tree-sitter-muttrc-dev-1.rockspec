rockspec_format = "3.0"
package = "tree-sitter-muttrc"
version = "dev-1"

description = {
	summary = "\240\159\140\178\240\159\145\168 muttrc grammar for tree-sitter",
	license = "MIT",
	homepage = "https://github.com/nvim-treesitter/nvim-treesitter/pull/6095",
}

dependencies = {
	"lua>=5.1",
}

build_dependencies = {
	"luarocks-build-treesitter-parser >= 6.1.0",
}

source = {
	url = "git+https://github.com/neomutt/tree-sitter-muttrc.git",
	tag = "8cf08b6eba48a8e0c30aa3c08d18178103bf73af",
}

build = {
	type = "treesitter-parser",
	copy_directories = {
		"conf",
	},
	lang = "muttrc",
	generate = true,
}
