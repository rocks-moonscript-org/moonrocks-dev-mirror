local git_ref = '22d74c2d5370ef29308c41539a08c164d4824565'
local modrev = 'scm'
local specrev = '33'

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
  copy_directories = { },
}
