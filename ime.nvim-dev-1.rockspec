rockspec_format = "3.0"
package = "ime.nvim"
version = "dev-1"

description = {
	summary = "auto switch IME for neovim. \229\166\130\228\189\149\229\156\168 Vim \228\184\173\230\150\185\228\190\191\231\154\132\232\190\147\229\133\165\230\177\137\229\173\151\239\188\136CJKV characters\239\188\137",
	license = "GPL-3.0",
	homepage = "https://ime-nvim.readthedocs.io/",
	labels = {
		"fcitx5",
		"ibus",
		"lua",
		"neovim",
		"rime",
		"vim-plugin",
	},
}

dependencies = {
	"lua>=5.1",
	"dbus_proxy>=0.10.4",
	"lua-cjson",
	"luafilesystem",
	"ime>=0.0.4",
	"vim",
}

source = {
	url = "git+https://github.com/rimeinn/ime.nvim.git",
	tag = "292027df432bf91afac83e2aed55beee2e99c1e5",
}

build = {
	type = "builtin",
	copy_directories = {
		"plugin",
	},
}
