local git_ref = 'e6e33b848f0e2fe5c13f6553c568764555c390a3'
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
  dir = 'dashboard-nvim-' .. 'e6e33b848f0e2fe5c13f6553c568764555c390a3',
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
