local git_ref = 'bd19b2a86a3d4a0ee184412aa3edb7ed57025d56'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/svermeulen/vimpeccable'

rockspec_format = '3.0'
package = 'vimpeccable'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin that allows you to easily map keys directly to lua code inside your init.lua',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/svermeulen/vimpeccable',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'vimpeccable-' .. 'bd19b2a86a3d4a0ee184412aa3edb7ed57025d56',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
