local git_ref = '73215b77d22ebb179cef98e7e1235825431d10e4'
local modrev = 'scm'
local specrev = '1'

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
  dir = 'yanky.nvim-' .. '73215b77d22ebb179cef98e7e1235825431d10e4',
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
