local git_ref = '5f33e50f1e2e2a80370c9094e4c303ea54cd2aea'
local modrev = 'scm'
local specrev = '4'

local repo_url = 'https://github.com/dstein64/vim-startuptime'

rockspec_format = '3.0'
package = 'vim-startuptime'
version = modrev ..'-'.. specrev

description = {
  summary = 'A plugin for viewing Vim and Neovim startup event timing information.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/dstein64/vim-startuptime',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'vim-startuptime-' .. '5f33e50f1e2e2a80370c9094e4c303ea54cd2aea',
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
