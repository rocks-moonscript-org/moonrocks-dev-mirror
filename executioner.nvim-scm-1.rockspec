local MODREV, SPECREV = "scm", "1"

rockspec_format = "3.0"
package = "executioner.nvim"
version = MODREV .. "-" .. SPECREV

description = {
  summary = "Telescope-powered script runner for Neovim",
  detailed = [[
    Discover scripts in your project, pick one from a Telescope fuzzy finder,
    and run it in a terminal buffer (float, split, or toggleterm).
  ]],
  labels = { "neovim", "telescope", "script-runner" },
  homepage = "https://github.com/sektant1/executioner.nvim",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1",
  "plenary.nvim",
  "telescope.nvim",
}

source = {
  url = "git://github.com/sektant1/executioner.nvim.git",
}

build = {
  type = "builtin",
  copy_directories = {
    "doc",
    "plugin",
  },
}
