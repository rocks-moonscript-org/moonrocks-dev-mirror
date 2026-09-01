local git_ref = '297377b0753f257c40c303e43d3f6cad74565b02'
local modrev = 'scm'
local specrev = '3'

local repo_url = 'https://github.com/DNLHC/glance.nvim'

rockspec_format = '3.0'
package = 'glance.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A pretty window for previewing, navigating and editing your LSP locations',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/DNLHC/glance.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'glance.nvim-' .. '297377b0753f257c40c303e43d3f6cad74565b02',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
