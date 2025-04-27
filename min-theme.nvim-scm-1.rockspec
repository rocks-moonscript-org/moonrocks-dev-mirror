local git_ref = "29fe6f031202619e6285789f47ce37ead5165b8d"
local modrev = "scm"
local specrev = "1"

local repo_url = "https://github.com/ambaradan/min-theme.nvim"

rockspec_format = "3.0"
package = "min-theme.nvim"
version = modrev .. "-" .. specrev

description = {
	summary = "A port of Min Theme for Neovim",
	detailed = "",
	labels = { "neovim" },
	homepage = "https://github.com/datsfilipe/min-theme.nvim",
	license = "MIT",
}

dependencies = { "lua >= 5.1" }

test_dependencies = {}

source = {
	url = repo_url .. "/archive/" .. git_ref .. ".zip",
	dir = "min-theme.nvim-" .. "29fe6f031202619e6285789f47ce37ead5165b8d",
}

if modrev == "scm" or modrev == "dev" then
	source = {
		url = repo_url:gsub("https", "git"),
	}
end

build = {
	type = "builtin",
	copy_directories = { "colors" },
}
