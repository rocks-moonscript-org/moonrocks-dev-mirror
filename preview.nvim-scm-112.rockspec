local git_ref = '39f84488f232101ab2e8cc60fba3e594af378274'
local modrev = 'scm'
local specrev = '112'

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
