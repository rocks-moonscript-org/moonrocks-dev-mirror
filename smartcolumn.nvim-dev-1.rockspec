rockspec_format = "3.0"
package = "smartcolumn.nvim"
version = "dev-1"

source = {
  url = "git+https://github.com/m4xshen/smartcolumn.nvim"
}

description = {
  summary = "A Neovim plugin hiding your colorcolumn when unneeded.",
  detailed = "",
  labels = { "neovim", "nvim", "neovim-plugin", "nvim-plugin" },
  homepage = "https://github.com/m4xshen/smartcolumn.nvim",
  license = "MIT"
}

dependencies = { "lua ~> 5.1" }
test_dependencies = {}

build = {
  type = "builtin"
}
