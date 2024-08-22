rockspec_format = '3.0'
package = 'orgmode'
version = 'dev-1'

description = {
  summary = 'Orgmode clone written in Lua for Neovim 0.9+.',
  detailed = '',
  labels = { 'neovim', 'neovim-lua', 'neovim-plugin', 'nvim-cmp', 'org-mode', 'orgmode', 'orgmode-nvim', 'vim' } ,
  homepage = 'https://nvim-orgmode.github.io/',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'tree-sitter-orgmode ~> 1' }

test_dependencies = { }

source = {
  url = 'git://github.com/nvim-orgmode/orgmode'
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'ftplugin', 'indent', 'parser', 'plugin', 'queries', 'syntax' } ,
}
