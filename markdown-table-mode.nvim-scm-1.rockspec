local git_ref = "870d0449c1c78c673faa9637a63036f9537b4caa"
local modrev = "scm"
local specrev = "1"

local repo_url = "https://github.com/Kicamon/markdown-table-mode.nvim"

rockspec_format = "3.0"
package = "markdown-table-mode.nvim"
version = modrev .. "-" .. specrev

description = {
	summary = "format markdown table under cursor ",
	detailed = "",
	labels = { "neovim" },
	homepage = "https://github.com/Kicamon/markdown-table-mode.nvim",
	license = "MIT",
}

dependencies = { "lua >= 5.1" }

test_dependencies = {}

source = {
	url = repo_url .. "/archive/" .. git_ref .. ".zip",
	dir = "markdown-table-mode.nvim-" .. "870d0449c1c78c673faa9637a63036f9537b4caa",
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
