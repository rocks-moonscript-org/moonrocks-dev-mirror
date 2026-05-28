local git_ref = 'e25cf080aae092a651a92fa5e477f64a61adbebf'
local modrev = 'scm'
local specrev = '4'

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
  dir = 'mini.hipatterns-' .. 'e25cf080aae092a651a92fa5e477f64a61adbebf',
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
