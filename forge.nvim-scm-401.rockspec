rockspec_format = '3.0'
package = 'forge.nvim'
version = 'scm-401'

description = {
  summary = 'Forge-agnostic git workflow for Neovim',
  homepage = 'https://git.barrettruth.com/barrettruth/forge.nvim',
  license = 'GPL-3.0',
}

dependencies = {
  'lua >= 5.1',
}

source = {
  url = 'https://git.barrettruth.com/barrettruth/forge.nvim/archive/8103c650d7f7eb52487564f374f60460e1f65495.zip',
  dir = 'forge.nvim',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' },
}
