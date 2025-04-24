local git_ref = "c49914496e63f4ec9c5b9be8812792a7cb78bbfd"
local modrev = "scm"
local specrev = "1"

local repo_url = "https://github.com/doums/suit.nvim"

rockspec_format = "3.0"
package = "suit.nvim"
version = modrev .. "-" .. specrev

description = {
	summary = "Neovim vim.ui replacement",
	detailed = "A neovim plugin that replaces the default vim.ui.input and vim.ui.select implementations with floating windows.",
	labels = { "neovim" },
	homepage = "https://github.com/doums/suit.nvim",
	license = "Mozilla Public License v. 2.0",
}

dependencies = { "lua >= 5.1" }

test_dependencies = {}

source = {
	url = repo_url .. "/archive/" .. git_ref .. ".zip",
	dir = "suit.nvim-" .. "c49914496e63f4ec9c5b9be8812792a7cb78bbfd",
}

if modrev == "scm" or modrev == "dev" then
	source = {
		url = repo_url:gsub("https", "git"),
	}
end

build = {
	type = "builtin",
	copy_directories = { },
}
