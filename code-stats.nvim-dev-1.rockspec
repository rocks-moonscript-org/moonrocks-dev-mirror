rockspec_format = "3.0"
package = "code-stats.nvim"
version = "dev-1"

description = {
	summary = "Code::Stats plugin for Neovim",
	license = "GPL-3.0",
	homepage = "https://code-stats-nvim.readthedocs.io/",
	labels = {
		"code-stats",
		"lua",
		"neovim",
		"vim",
	},
}

dependencies = {
	"lua>=5.1",
	"lua-requests-temp",
	"lua-dotenv",
	"datafile",
}

source = {
	url = "git+https://github.com/Freed-Wu/code-stats.nvim.git",
	tag = "47e23ee2f4029f17c05e776bc8d8eaddc2e600f6",
}

build = {
	type = "builtin",
}
