local git_ref = '24fa275aff4f9595c633e508594b4a31d8f50089'
local modrev = 'scm'
local specrev = '111'

local repo_url = 'https://git.barrettruth.com/barrettruth/preview.nvim'

rockspec_format = '3.0'
package = 'preview.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'universal previewer for neovim',
  detailed = '',
  labels = { 'markdown', 'neovim', 'neovim-plugin', 'preview' } ,
  homepage = 'https://git.barrettruth.com/barrettruth/preview.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'preview.nvim',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
