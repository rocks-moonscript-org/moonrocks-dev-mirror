local git_ref = '4b4ddd196526fd3d6fd091d931810f9743e936d3'
local modrev = 'scm'
local specrev = '6'

local repo_url = 'https://github.com/gbprod/yanky.nvim'

rockspec_format = '3.0'
package = 'yanky.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Improved Yank and Put functionalities for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/gbprod/yanky.nvim',
  license = 'WTFPL'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'yanky.nvim-' .. '4b4ddd196526fd3d6fd091d931810f9743e936d3',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
