local git_ref = 'db52ea9a1fd5183bb15f557db3fd6e504099bf06'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.nvim'

rockspec_format = '3.0'
package = 'mini.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Library of 35+ independent Lua modules improving overall Neovim (version 0.7 and higher) experience with minimal effort (full suite)',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.nvim-' .. 'db52ea9a1fd5183bb15f557db3fd6e504099bf06',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors', 'doc' } ,
}
