local git_ref = '9b5a34d32e5cfb24890c5f0d87a7957cba2ed8a8'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.map'

rockspec_format = '3.0'
package = 'mini.map'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Window with buffer text overview. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.map',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.map-' .. '9b5a34d32e5cfb24890c5f0d87a7957cba2ed8a8',
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
