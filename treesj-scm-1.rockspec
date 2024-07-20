local git_ref = '275f83c81a5a1f5ae23c1eac30c4ac28beebbca2'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Wansmer/treesj'

rockspec_format = '3.0'
package = 'treesj'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin for splitting/joining blocks of code',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/Wansmer/treesj',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'treesj-' .. '275f83c81a5a1f5ae23c1eac30c4ac28beebbca2',
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
