local git_ref = '4cc9c5556566e40cf21008b7aeba95ec211d6bb7'
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
  dir = 'cppinsights.vim-' .. '4cc9c5556566e40cf21008b7aeba95ec211d6bb7',
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
