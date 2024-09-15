rockspec_format = "3.0"
package = "pretty_hover"
version = "dev-1"

source = {
  url = "git+https://github.com/Fildo7525/pretty_hover.git"
}

description = {
  detailed = "A small and customizable neovim plugin for pretty printing the hover information from LSP servers",
  summary = "",
  labels = { "neovim", "nvim", "neovim-lua", "neovim-plugin" },
  homepage = "https://github.com/Fildo7525/pretty_hover",
  license = "MIT"
}

dependencies = { "lua >= 5.1" }

test_dependencies = {}

build = {
  type = "builtin"
}
