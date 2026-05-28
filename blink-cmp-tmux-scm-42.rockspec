local git_ref = '468f15f95159af19efa9990c024f469d01d929ac'
local modrev = 'scm'
local specrev = '42'

local repo_url = 'https://git.barrettruth.com/barrettruth/blink-cmp-tmux'

rockspec_format = '3.0'
package = 'blink-cmp-tmux'
version = modrev ..'-'.. specrev

description = {
  summary = 'Tmux command completion source for blink.cmp',
  detailed = '',
  labels = { 'blink-cmp', 'completion', 'neovim', 'neovim-plugin', 'tmux' } ,
  homepage = 'https://git.barrettruth.com/barrettruth/blink-cmp-tmux',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'blink-cmp-tmux',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
