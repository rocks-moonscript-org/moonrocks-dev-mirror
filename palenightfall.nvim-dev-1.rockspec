rockspec_format = "3.0"
package = "palenightfall.nvim"
version = "dev-1"

source = {
	url = "git://github.com/JoosepAlviste/palenightfall.nvim"
}

description = {
	summary = "Neovim theme inspired by material palenight.",
	detailed = "",
	labels = { "neovim", "nvim", "neovim-lua", "neovim-plugin" },
	homepage = "https://github.com/JoosepAlviste/palenightfall.nvim",
	license = "MIT"
}

dependencies = {
	"lua >= 5.1"
}

test_dependencies = {}

build = {
	type = "builtin",
	copy_directories = { "colors", "after" }
}
