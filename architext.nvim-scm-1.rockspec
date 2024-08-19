local MODREV, SPECREV = 'scm', '-1'
rockspec_format = '3.0'
package = 'architext.nvim'
version = MODREV .. SPECREV

description = {
  summary = 'A structural editing plugin for neovim, powered by treesitter',
  labels = { 'neovim', 'plugin', },
  homepage = 'https://sr.ht/~vigoux/architext.nvim/',
  license = 'BSD-3-Clause',
  issues_url = "https://lists.sr.ht/~vigoux/architext.nvim-devel",
}

dependencies = {
  'lua == 5.1',
  'nvim-treesitter',
}

source = {
  url = 'git+https://git.sr.ht/~vigoux/architext.nvim',
}

build = {
  type = "builtin",
  copy_directories = {
    'plugin',
    'autoload'
  }
}
