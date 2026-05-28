local git_ref = '6b4f4a07b8b0c23a5cd3740631d96a97d7ccec09'
local modrev = 'scm'
local specrev = '6'

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
  dir = 'base16-nvim-' .. '6b4f4a07b8b0c23a5cd3740631d96a97d7ccec09',
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
