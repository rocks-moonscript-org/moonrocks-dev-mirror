local git_ref = 'f48b5a60b54fee2993acec15fa84488fc922d650'
local modrev = 'scm'
local specrev = '41'

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
