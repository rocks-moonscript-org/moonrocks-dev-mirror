local git_ref = 'b3b36b73208c164289225776642ea6df583d5157'
local modrev = 'scm'
local specrev = '35'

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
