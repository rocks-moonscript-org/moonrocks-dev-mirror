local git_ref = 'f1a3b95463402b30dd1e22dae7d0b6ea858db2df'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/svermeulen/vim-easyclip'

rockspec_format = '3.0'
package = 'vim-easyclip'
version = modrev ..'-'.. specrev

description = {
  summary = 'Simplified clipboard functionality for Vim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/svermeulen/vim-easyclip',
  license = 'VIM'
}

dependencies = { 'lua >= 5.1', 'repeat.vim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'vim-easyclip-' .. 'f1a3b95463402b30dd1e22dae7d0b6ea858db2df',
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
