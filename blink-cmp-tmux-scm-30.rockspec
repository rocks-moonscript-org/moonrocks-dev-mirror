local git_ref = '4169fa078b42603b4a41d4690bce81b856f6fb3f'
local modrev = 'scm'
local specrev = '30'

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
  copy_directories = { },
}
