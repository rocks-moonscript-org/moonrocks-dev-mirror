local git_ref = "dfa0d2def6dbf77e9206b16dc90cad4dd23d55d2"
local modrev = "scm"
local specrev = "1"

local repo_url = "https://github.com/tadmccorkle/markdown.nvim"

rockspec_format = "3.0"
package = "markdown.nvim"
version = modrev .. "-" .. specrev

description = {
	summary = "Configurable tools for working with markdown files in Neovim",
	detailed = "",
	labels = { "neovim" },
	homepage = "https://github.com/tadmccorkle/markdown.nvim",
	license = "MIT",
}

dependencies = { "lua >= 5.1" }

test_dependencies = {}

source = {
	url = repo_url .. "/archive/" .. git_ref .. ".zip",
	dir = "markdown.nvim-" .. "dfa0d2def6dbf77e9206b16dc90cad4dd23d55d2",
}

if modrev == "scm" or modrev == "dev" then
	source = {
		url = repo_url:gsub("https", "git"),
	}
end

build = {
	type = "builtin",
	copy_directories = { "doc", "plugin" },
}
