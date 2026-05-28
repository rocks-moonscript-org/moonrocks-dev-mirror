rockspec_format = '3.0'
package = 'nonicons.nvim'
version = 'scm-55'

description = {
  summary = 'Nonicons for Neovim',
  homepage = 'https://git.barrettruth.com/barrettruth/nonicons.nvim',
  license = 'GPL-3.0',
}

dependencies = {
  'lua >= 5.1',
}

source = {
  url = 'https://git.barrettruth.com/barrettruth/nonicons.nvim/archive/813b3363d68333e3ea0fc988870d92cc4a4e7854.zip',
  dir = 'nonicons.nvim',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' },
}
