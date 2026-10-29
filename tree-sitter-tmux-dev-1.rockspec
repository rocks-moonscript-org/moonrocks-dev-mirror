rockspec_format = "3.0"
package = "tree-sitter-tmux"
version = "dev-1"

description = {
	summary = "\240\159\140\178\240\159\145\168 tmux grammar for tree-sitter",
	license = "MIT",
	homepage = "https://github.com/Freed-Wu/tree-sitter-tmux",
}

dependencies = {
	"lua>=5.1",
}

build_dependencies = {
	"luarocks-build-treesitter-parser >= 6.1.0",
}

source = {
	url = "git+https://github.com/Freed-Wu/tree-sitter-tmux.git",
	tag = "a687fe7709e32d29c0ec567aaaca1311dc8721a9",
}

build = {
	type = "treesitter-parser",
	lang = "tmux",
	generate = true,
}
