local git_ref = '0d81326b5afd36babe7dd480aabbb0b05f33e688'
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
  dir = 'treesj-' .. '0d81326b5afd36babe7dd480aabbb0b05f33e688',
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
