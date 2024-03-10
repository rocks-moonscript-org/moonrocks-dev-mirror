local git_ref = '8ed5cf3b3b1231ea696d88c9efd977027429d869'
local modrev = 'scm'
local specrev = '1'

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
  dir = 'glance.nvim-' .. '8ed5cf3b3b1231ea696d88c9efd977027429d869',
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
