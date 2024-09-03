rockspec_format = "3.0"
package = "conceal.nvim"
version = "dev-1"

source = {
	url = "git+https://github.com/Jxstxs/conceal.nvim"
}

description = {
	summary = "A Neovim Plugin which uses Tree-sitter to conceal typical boiler Code",
	detailed = "A Neovim Plugin which uses Tree-sitter to conceal typical boiler Code",
	labels = { "neovim", "nvim", "neovim-lua", "neovim-plugin" },
	homepage = "https://github.com/Jxstxs/conceal.nvim",
	license = "MIT"
}

dependencies = {
	"lua >= 5.1"
}

test_dependencies = {}

build = {
	type = "builtin"
}
