local git_ref = 'd29ec9976fd6b684488c908e6c7c72a3a7a0cb7f'
local modrev = 'scm'
local specrev = '10'

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
  dir = 'vim-test-' .. 'd29ec9976fd6b684488c908e6c7c72a3a7a0cb7f',
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
