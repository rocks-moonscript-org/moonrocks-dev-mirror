local git_ref = '9fd5ebef2b34cc4ac3c0f1811a6726ea6d92fa91'
local modrev = 'scm'
local specrev = '7'

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
  dir = 'mini.surround-' .. '9fd5ebef2b34cc4ac3c0f1811a6726ea6d92fa91',
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
