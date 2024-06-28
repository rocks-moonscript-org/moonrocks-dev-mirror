local git_ref = '69a4c935cc43d3d725ed0600c6d00593bc23d132'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvimdev/dashboard-nvim'

rockspec_format = '3.0'
package = 'dashboard-nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'vim dashboard',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvimdev/dashboard-nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'dashboard-nvim-' .. '69a4c935cc43d3d725ed0600c6d00593bc23d132',
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
