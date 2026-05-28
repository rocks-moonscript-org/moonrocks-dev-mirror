rockspec_format = '3.0'
package = 'forge.nvim'
version = 'scm-402'

description = {
  summary = 'Forge-agnostic git workflow for Neovim',
  homepage = 'https://git.barrettruth.com/barrettruth/forge.nvim',
  license = 'GPL-3.0',
}

dependencies = {
  'lua >= 5.1',
}

source = {
  url = 'https://git.barrettruth.com/barrettruth/forge.nvim/archive/56ec99dd6b3405b83b859e3c2c9c3633b1518493.zip',
  dir = 'forge.nvim',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' },
}
