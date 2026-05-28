local git_ref = '40000a37a0b23482e1ee10ea22c2a321fc11b81c'
local modrev = 'scm'
local specrev = '38'

local repo_url = 'https://git.barrettruth.com/barrettruth/blink-cmp-ssh'

rockspec_format = '3.0'
package = 'blink-cmp-ssh'
version = modrev ..'-'.. specrev

description = {
  summary = 'SSH configuration completion source for blink.cmp',
  detailed = '',
  labels = { 'blink-cmp', 'completion', 'neovim', 'neovim-plugin', 'ssh' } ,
  homepage = 'https://git.barrettruth.com/barrettruth/blink-cmp-ssh',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'blink-cmp-ssh',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
