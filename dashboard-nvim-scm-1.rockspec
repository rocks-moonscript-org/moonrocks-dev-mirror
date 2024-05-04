local git_ref = '1c8b82c5b02bb890862538be2061e37ef801a99b'
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
  dir = 'dashboard-nvim-' .. '1c8b82c5b02bb890862538be2061e37ef801a99b',
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
