local git_ref = 'be0b97141814991da7de5e37654e697d7a2abf22'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/vim-fencview'

rockspec_format = '3.0'
package = 'vim-fencview'
version = modrev ..'-'.. specrev

description = {
  summary = 'mirror of vim script: fencview.vim',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/Freed-Wu/vim-fencview',
  license = 'LGPL-2.1'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'vim-fencview-' .. 'be0b97141814991da7de5e37654e697d7a2abf22',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'plugin' } ,
}
