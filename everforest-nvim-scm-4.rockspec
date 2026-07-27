local git_ref = 'a0e9edc57379e8feafc6ba207c26dbb12fc1b6d8'
local modrev = 'scm'
local specrev = '4'

local repo_url = 'https://github.com/neanias/everforest-nvim'

rockspec_format = '3.0'
package = 'everforest-nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Lua port of the Everforest colour scheme',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/neanias/everforest-nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'everforest-nvim-' .. 'a0e9edc57379e8feafc6ba207c26dbb12fc1b6d8',
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
