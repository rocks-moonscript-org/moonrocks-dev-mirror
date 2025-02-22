rockspec_format = "3.0"

package = "duck-nvim"

version = "dev-1"

source = {
   url = "git+https://github.com/tamton-aquib/duck.nvim/"
}

description = {
   summary = "A duck that waddles between your codes",
   detailed = "",
   labels = { "nvim", "neovim", "neovim-plugin", "nvim-plugin" },
   homepage = "https://github.com/tamton-aquib/duck.nvim",
   license = "MIT"
}

dependencies = { "lua >= 5.1" }

test_dependencies = {}

build = {
   type = "builtin"
}
