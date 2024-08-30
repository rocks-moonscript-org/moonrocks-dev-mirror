local git_ref = '2c9cef3f7605fc1b272b23765c5872607c1b6183'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/vim-test/vim-test'

rockspec_format = '3.0'
package = 'vim-test'
version = modrev ..'-'.. specrev

description = {
  summary = 'Run your tests at the speed of thought (Vim)',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/vim-test/vim-test',
  license = 'VIM'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'vim-test-' .. '2c9cef3f7605fc1b272b23765c5872607c1b6183',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'plugin' } ,
}
