local git_ref = '689277c7ea862e9be2e83829b94a0348395fb9a2'
local modrev = 'scm'
local specrev = '107'

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
