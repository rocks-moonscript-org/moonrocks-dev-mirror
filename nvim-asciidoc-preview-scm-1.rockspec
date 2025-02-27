local git_ref = "b12e113b5f7e7522b4e412213d5498cc529f2628"
local modrev = "scm"
local specrev = "1"

local repo_url = "https://github.com/tigion/nvim-asciidoc-preview"

rockspec_format = "3.0"
package = "nvim-asciidoc-preview"
version = modrev .. "-" .. specrev

description = {
	summary = "A simple AsciiDoc preview while editing AsciiDoc documents in Neovim",
	detailed = "",
	labels = { "neovim" },
	homepage = "https://github.com/tigion/nvim-asciidoc-preview",
	license = "MIT",
}

dependencies = { "lua >= 5.1" }

test_dependencies = {}

source = {
	url = repo_url .. "/archive/" .. git_ref .. ".zip",
	dir = "nvim-asciidoc-preview-" .. "b12e113b5f7e7522b4e412213d5498cc529f2628",
}

if modrev == "scm" or modrev == "dev" then
	source = {
		url = repo_url:gsub("https", "git"),
	}
end

build = {
	type = "builtin",
	copy_directories = { "plugin", "server" },
}
