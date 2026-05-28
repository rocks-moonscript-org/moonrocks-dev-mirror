package = "nvim-esmodtree"
version = "scm-1"
rockspec_format = "3.0"

source = {
  url = "git+https://github.com/rlaffers/esmodtree.git",
  branch = "master",
  dir = "esmodtree/packages/nvim-esmodtree",
}
description = {
  summary = "Neovim plugin for visualizing ECMAScript module import trees.",
  detailed = [[
   A Neovim plugin for inspecting ECMAScript import trees.
   Esmodtree is great for both examining how a module is used in a project,
   and for figuring out which modules are used by the inspected module.]],
  homepage = "https://github.com/rlaffers/esmodtree/tree/master/packages/nvim-esmodtree",
  license = "GPLv3",
  labels = { "neovim", "plugin" },
}
dependencies = {
  "lua == 5.1",
}
build = {
  type = "builtin",
  copy_directories = {
    "doc",
    "plugin",
  },
}
