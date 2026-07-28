local git_ref = 'a2676aa6f54d9ea14ddd39be0f3c33398ecff9a7'
local modrev = 'scm'
local specrev = '24'

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
