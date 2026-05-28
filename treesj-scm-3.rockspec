local git_ref = '5fa4e7ba3517f8fe743bb4488f9e9c7ce83330fc'
local modrev = 'scm'
local specrev = '3'

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
  dir = 'treesj-' .. '5fa4e7ba3517f8fe743bb4488f9e9c7ce83330fc',
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
