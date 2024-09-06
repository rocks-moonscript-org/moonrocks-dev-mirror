local git_ref = 'd6c60d65561fcff744f261a7b79983a9f7e93be7'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/conceal.vim'

rockspec_format = '3.0'
package = 'conceal.vim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Display emoji in your vim',
  detailed = '',
  labels = { 'conceal', 'emoji', 'vim' } ,
  homepage = 'https://luarocks.org/modules/Freed-Wu/conceal.vim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'conceal.vim-' .. 'd6c60d65561fcff744f261a7b79983a9f7e93be7',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'after', 'autoload', 'doc', 'queries' } ,
}
