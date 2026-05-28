local git_ref = '1e814c0b64634464c5fbe425da2968ed6f5b12d5'
local modrev = 'scm'
local specrev = '472'

local repo_url = 'https://git.barrettruth.com/barrettruth/forge.nvim'

rockspec_format = '3.0'
package = 'forge.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'forge-agnostic git workflow for Neovim',
  detailed = '',
  labels = { 'fzf-lua', 'neovim', 'neovim-plugin' } ,
  homepage = 'https://git.barrettruth.com/barrettruth/forge.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'forge.nvim',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
