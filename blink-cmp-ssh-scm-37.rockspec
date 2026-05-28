local git_ref = '34afbb72da2511cc328e1b2ef37f929482823479'
local modrev = 'scm'
local specrev = '37'

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
