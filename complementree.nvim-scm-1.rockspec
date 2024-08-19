local MODREV, SPECREV = 'scm', '-1'
rockspec_format = '3.0'
package = 'complementree.nvim'
version = MODREV .. SPECREV

description = {
  summary = 'Tree-sitter powered completion framework for neovim',
  labels = { 'neovim', 'plugin', },
  homepage = 'https://sr.ht/~vigoux/complementree.nvim/',
  license = 'BSD-3-Clause',
  issues_url = "https://lists.sr.ht/~vigoux/complementree.nvim-devel",
}

dependencies = {
  'lua == 5.1',
  'azy.nvim',
  'nvim-treesitter',
}

source = {
  url = 'git+https://git.sr.ht/~vigoux/complementree.nvim',
}

build = {
  type = "builtin",
  copy_directories = {
    'plugin'
  }
}
