local MODREV, SPECREV = 'scm', '-1'
rockspec_format = '3.0'
package = 'azy.nvim'
version = MODREV .. SPECREV

description = {
  summary = 'Simple and fast fuzzy finder for neovim',
  detailed = [[
azy.nvim is the embedding of the fzy algorithm within lua, together with a layer of UI to use in neovim.
]],
  labels = { 'neovim', 'plugin', },
  homepage = 'https://sr.ht/~vigoux/azy.nvim/',
  license = 'BSD-3-Clause',
  issues_url = "https://lists.sr.ht/~vigoux/azy.nvim-devel",
}

dependencies = {
  'lua == 5.1',
}

source = {
  url = 'git+https://git.sr.ht/~vigoux/azy.nvim',
}

build = {
  type = 'make',
}
