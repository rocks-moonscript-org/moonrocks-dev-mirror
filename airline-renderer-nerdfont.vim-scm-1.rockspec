local git_ref = '4552e98448fdd88a019ade461355adb63558cc7f'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/airline-renderer-nerdfont.vim'

rockspec_format = '3.0'
package = 'airline-renderer-nerdfont.vim'
version = modrev ..'-'.. specrev

description = {
  summary = 'vim-airline plugin which add file type icon through nerdfont.vim',
  detailed = '',
  labels = { 'airline', 'nerdfont', 'vim' } ,
  homepage = 'https://github.com/Freed-Wu/airline-renderer-nerdfont.vim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'airline-renderer-nerdfont.vim-' .. '4552e98448fdd88a019ade461355adb63558cc7f',
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
