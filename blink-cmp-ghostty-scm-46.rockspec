local git_ref = '2c74f96787956c64922a1d6cca76fc502db16bb4'
local modrev = 'scm'
local specrev = '46'

local repo_url = 'https://git.barrettruth.com/barrettruth/blink-cmp-ghostty'

rockspec_format = '3.0'
package = 'blink-cmp-ghostty'
version = modrev ..'-'.. specrev

description = {
  summary = 'Ghostty configuration completion source for blink.cmp',
  detailed = '',
  labels = { 'blink-cmp', 'completion', 'ghostty', 'neovim', 'neovim-plugin' } ,
  homepage = 'https://git.barrettruth.com/barrettruth/blink-cmp-ghostty',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'blink-cmp-ghostty',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
