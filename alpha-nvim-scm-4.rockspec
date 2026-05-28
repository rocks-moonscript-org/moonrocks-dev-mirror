local git_ref = 'f06e542277edd8f0e57c81b704558be00226f2ff'
local modrev = 'scm'
local specrev = '4'

local repo_url = 'https://github.com/goolord/alpha-nvim'

rockspec_format = '3.0'
package = 'alpha-nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A lua powered greeter like vim-startify / dashboard-nvim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/goolord/alpha-nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'alpha-nvim-' .. 'f06e542277edd8f0e57c81b704558be00226f2ff',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
