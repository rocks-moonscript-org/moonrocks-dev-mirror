rockspec_format = "3.0"
package = "tree-sitter-hlsplaylist"
version = "dev-1"

description = {
	summary = "\240\159\140\178\240\159\145\168 hlsplaylist (m3u, m3u8) grammar for tree-sitter",
	license = "MIT",
	homepage = "https://github.com/nvim-treesitter/nvim-treesitter/pull/6084",
}

dependencies = {
	"lua>=5.1",
}

build_dependencies = {
	"luarocks-build-treesitter-parser >= 6.1.0",
}

source = {
	url = "git+https://github.com/Freed-Wu/tree-sitter-hlsplaylist.git",
	tag = "d89f96841b72e7863dc4c297bcdef58f2f53c0b2",
}

build = {
	type = "treesitter-parser",
	lang = "hlsplaylist",
	generate = true,
}
