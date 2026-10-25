rockspec_format = "3.0"
package = "tellenc.nvim"
version = "dev-1"

description = {
	summary = "A neovim plugin to detect the encoding of a text file. neovim \228\184\173\230\150\135\232\190\147\229\133\165\230\148\185\232\191\155\232\174\161\229\136\146",
	license = "GPL-3.0",
	homepage = "https://tellenc-nvim.readthedocs.io/",
	labels = {
		"neovim",
		"plugin",
		"tellenc",
		"vim",
		"xmake",
	},
}

dependencies = {
	"lua>=5.1",
}

source = {
	url = "git+https://github.com/rimeinn/tellenc.nvim.git",
	tag = "9fd529fb15d1ce9a741a4da3fbdb0e6dec190d21",
}

build = {
	type = "builtin",
	copy_directories = {
		"plugin",
	},
}
