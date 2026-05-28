local git_ref = 'fee9b2d9e277da683c94800da6055180a23d73e5'
local modrev = 'scm'
local specrev = '56'

local repo_url = 'https://git.barrettruth.com/barrettruth/nonicons.nvim'

rockspec_format = '3.0'
package = 'nonicons.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Nonicons for Neovim',
  detailed = '',
  labels = { 'icons', 'neovim', 'neovim-plugin', 'nonicons' } ,
  homepage = 'https://git.barrettruth.com/barrettruth/nonicons.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nonicons.nvim',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
