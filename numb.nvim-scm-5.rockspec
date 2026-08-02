local git_ref = 'a36afc77fc9dac5ee03c704283b2fb89e163473b'
local modrev = 'scm'
local specrev = '5'

local repo_url = 'https://github.com/nacro90/numb.nvim'

rockspec_format = '3.0'
package = 'numb.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Peek lines just when you intend',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nacro90/numb.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'numb.nvim-' .. 'a36afc77fc9dac5ee03c704283b2fb89e163473b',
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
