local git_ref = '5346d023afc4bfc7ff63d05c70bcdb0784bb657a'
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
  dir = 'dashboard-nvim-' .. '5346d023afc4bfc7ff63d05c70bcdb0784bb657a',
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
