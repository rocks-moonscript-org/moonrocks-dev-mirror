local git_ref = 'f6fa28e0d1f2c7e300d0ed8cac557e3e46a7d829'
local modrev = 'scm'
local specrev = '31'

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
