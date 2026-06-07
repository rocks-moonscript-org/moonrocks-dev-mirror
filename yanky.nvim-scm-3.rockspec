local git_ref = '257716a5649e35eaebf2015a488b0f22b3907a47'
local modrev = 'scm'
local specrev = '3'

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
  dir = 'yanky.nvim-' .. '257716a5649e35eaebf2015a488b0f22b3907a47',
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
