local git_ref = 'f10474b400c197787a0434548d842a2db583c333'
local modrev = 'scm'
local specrev = '3'

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
  dir = 'vim-startuptime-' .. 'f10474b400c197787a0434548d842a2db583c333',
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
