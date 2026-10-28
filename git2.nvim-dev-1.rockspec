rockspec_format = "3.0"
package = "git2.nvim"
version = "dev-1"

description = {
	summary = "Use luagit2 to realize a :Git in neovim",
	license = "GPL-3.0",
	homepage = "https://luarocks.org/modules/Freed-Wu/git2.nvim",
	labels = {
		"fern-vim-plugin",
		"git",
		"libgit2",
		"lua",
		"neovim",
		"vim",
	},
}

dependencies = {
	"lua>=5.1",
	"mega.argparse",
	"vim",
	"luabitop",
	"yaml",
	"lua-git2-temp",
}

source = {
	url = "git+https://github.com/Freed-Wu/git2.nvim.git",
	tag = "7fed1db600d9b2ac67196da751e23f8e4579f7e9",
}

build = {
	type = "builtin",
	copy_directories = {
		"autoload",
		"plugin",
	},
}
