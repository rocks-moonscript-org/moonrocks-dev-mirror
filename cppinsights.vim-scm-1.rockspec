local git_ref = '9739d0fb7b3894248700b12b5a58a139ead093fd'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/cppinsights.vim'

rockspec_format = '3.0'
package = 'cppinsights.vim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Vim extension for C++ Insights.',
  detailed = '',
  labels = { 'cppinsights', 'vim' } ,
  homepage = 'https://luarocks.org/modules/Freed-Wu/cppinsights.vim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cppinsights.vim-' .. '9739d0fb7b3894248700b12b5a58a139ead093fd',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'ftplugin' } ,
}
