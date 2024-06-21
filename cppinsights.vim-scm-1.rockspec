local git_ref = '43efd86037ed08fc2d654de4d25c72787b6dce21'
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
  homepage = 'https://github.com/Freed-Wu/cppinsights.vim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cppinsights.vim-' .. '43efd86037ed08fc2d654de4d25c72787b6dce21',
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
