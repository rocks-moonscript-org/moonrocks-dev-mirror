local git_ref = "e967e2ba13fd4ca731b41d0e5cc1ac2edcd6e25e"
local modrev = "scm"
local specrev = "1"

local repo_url = "https://github.com/brenoprata10/nvim-highlight-colors"

rockspec_format = "3.0"
package = "nvim-highlight-colors"
version = modrev .. "-" .. specrev

description = {
	summary = "Highlight colors within Neovim",
	detailed = "",
	labels = { "neovim" },
	homepage = "https://github.com/brenoprata10/nvim-highlight-colors",
	license = "",
}

dependencies = { "lua >= 5.1" }

test_dependencies = {}

source = {
	url = repo_url .. "/archive/" .. git_ref .. ".zip",
	dir = "nvim-highlight-colors-" .. "e967e2ba13fd4ca731b41d0e5cc1ac2edcd6e25e",
}

if modrev == "scm" or modrev == "dev" then
	source = {
		url = repo_url:gsub("https", "git"),
	}
end

build = {
	type = "builtin",
	copy_directories = { "lua" },
}
