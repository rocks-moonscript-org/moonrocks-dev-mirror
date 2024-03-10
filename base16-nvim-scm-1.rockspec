local git_ref = 'b3e9ec6a82c05b562cd71f40fe8964438a9ba64a'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/RRethy/base16-nvim'

rockspec_format = '3.0'
package = 'base16-nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin for building a sync base16 colorscheme. Includes support for Treesitter and LSP highlight groups.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/RRethy/base16-nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'base16-nvim-' .. 'b3e9ec6a82c05b562cd71f40fe8964438a9ba64a',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors', 'doc' } ,
}
