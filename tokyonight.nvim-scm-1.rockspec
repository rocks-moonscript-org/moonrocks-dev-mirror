local git_ref = '7e5ef71a103e7de5fe6c05f5d6ab97d1640f08cf'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/folke/tokyonight.nvim'

rockspec_format = '3.0'
package = 'tokyonight.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A clean, dark Neovim theme written in Lua, with support for lsp, treesitter and lots of plugins',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/tokyonight.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tokyonight.nvim-' .. '7e5ef71a103e7de5fe6c05f5d6ab97d1640f08cf',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'colors', 'doc' } ,
}
