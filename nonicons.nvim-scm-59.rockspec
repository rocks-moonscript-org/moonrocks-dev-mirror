local git_ref = '6c23c26b09ab5cf0f36a7e6e668ac300dc3f2b02'
local modrev = 'scm'
local specrev = '59'

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
