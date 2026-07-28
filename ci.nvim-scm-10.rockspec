local git_ref = 'd83cddfb559cfa9312f9c4a47394f36865ba5354'
local modrev = 'scm'
local specrev = '10'

local repo_url = 'https://forge.barrettruth.com/barrettruth/ci.nvim'

rockspec_format = '3.0'
package = 'ci.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'CI for Neovim',
  detailed = '',
  labels = { },
  homepage = 'https://forge.barrettruth.com/barrettruth/ci.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ci.nvim',
}

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
