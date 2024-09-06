local git_ref = '047ea51e1f20fbfd21c991c68e8c3cdf1e0e1ba9'
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
  homepage = 'https://luarocks.org/modules/Freed-Wu/airline-renderer-nerdfont.vim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'airline-renderer-nerdfont.vim-' .. '047ea51e1f20fbfd21c991c68e8c3cdf1e0e1ba9',
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
