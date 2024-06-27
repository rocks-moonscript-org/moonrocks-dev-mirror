local git_ref = '80461056bf66696409bc866a58b0c0b1fd0c8080'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.completion'

rockspec_format = '3.0'
package = 'mini.completion'
version = modrev ..'-'.. specrev

description = {
  summary = 'Completion and signature help for Neovim. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.completion',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.completion-' .. '80461056bf66696409bc866a58b0c0b1fd0c8080',
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
