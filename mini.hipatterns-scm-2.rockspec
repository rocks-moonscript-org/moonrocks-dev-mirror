local git_ref = '9eff319bbe66adfaf781a0d0e174baa08ba94909'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/nvim-mini/mini.hipatterns'

rockspec_format = '3.0'
package = 'mini.hipatterns'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Highlight patterns in text. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.hipatterns',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.hipatterns-' .. '9eff319bbe66adfaf781a0d0e174baa08ba94909',
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
