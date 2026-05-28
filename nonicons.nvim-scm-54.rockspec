rockspec_format = '3.0'
package = 'nonicons.nvim'
version = 'scm-54'

description = {
  summary = 'Nonicons for Neovim',
  homepage = 'https://git.barrettruth.com/barrettruth/nonicons.nvim',
  license = 'GPL-3.0',
}

dependencies = {
  'lua >= 5.1',
}

source = {
  url = 'https://git.barrettruth.com/barrettruth/nonicons.nvim/archive/d6fa22fa01b6487ae3d5ed5c252254bfe984cd42.zip',
  dir = 'nonicons.nvim',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' },
}
