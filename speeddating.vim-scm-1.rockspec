local git_ref = '5a36fd29df63ea3f65562bd2bb837be48a5ec90b'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/tpope/vim-speeddating'

rockspec_format = '3.0'
package = 'speeddating.vim'
version = modrev ..'-'.. specrev

description = {
  summary = 'use CTRL-A/CTRL-X to increment dates, times, and more',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/tpope/vim-speeddating',
  license = 'VIM'
}

dependencies = { 'lua >= 5.1', 'repeat.vim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'vim-speeddating-' .. '5a36fd29df63ea3f65562bd2bb837be48a5ec90b',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'plugin' } ,
}
