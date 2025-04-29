local git_ref = "c45f82b2421d3b3e45e03a6d782db57a994453e8"
local modrev = "scm"
local specrev = "1"

local repo_url = "https://github.com/carldaws/surface.nvim"

rockspec_format = "3.0"
package = "surface.nvim"
version = modrev .. "-" .. specrev

description = {
	summary = "Floating terminal windows manager",
	detailed = "Surface is a lightweight Neovim plugin for managing floating terminal windows. It lets you easily open and move terminal sessions around your editor with customizable key mappings.",
	labels = { "neovim" },
	homepage = "https://github.com/carldaws/surface.nvim",
	license = "",
}

dependencies = { "lua >= 5.1" }

test_dependencies = {}

source = {
	url = repo_url .. "/archive/" .. git_ref .. ".zip",
	dir = "surface.nvim-" .. "c45f82b2421d3b3e45e03a6d782db57a994453e8",
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
