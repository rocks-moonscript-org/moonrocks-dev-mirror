local git_ref = '990ce30f724d08e79670107de6b915a3f1bb9a9b'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/nvim-mini/mini.surround'

rockspec_format = '3.0'
package = 'mini.surround'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim surround actions. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.surround',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.surround-' .. '990ce30f724d08e79670107de6b915a3f1bb9a9b',
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
