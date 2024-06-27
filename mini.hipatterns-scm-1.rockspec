local git_ref = '5d28a7e3f399de64c4dbf71f8c6c3b633d986f15'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.hipatterns'

rockspec_format = '3.0'
package = 'mini.hipatterns'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Highlight patterns in text. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.hipatterns',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.hipatterns-' .. '5d28a7e3f399de64c4dbf71f8c6c3b633d986f15',
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
