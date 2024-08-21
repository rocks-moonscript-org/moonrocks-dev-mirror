local git_ref = '4caa1c212f5ca3d1633d21cfb184808090ed74b1'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.move'

rockspec_format = '3.0'
package = 'mini.move'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Move any selection in any direction. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.move',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.move-' .. '4caa1c212f5ca3d1633d21cfb184808090ed74b1',
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
