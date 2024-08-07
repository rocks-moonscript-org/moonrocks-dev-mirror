local git_ref = '6d44a6dc2ec34607c41ec78acf81657248580bf1'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/tpope/vim-unimpaired'

rockspec_format = '3.0'
package = 'unimpaired.vim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Pairs of handy bracket mappings',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/tpope/vim-unimpaired',
  license = 'VIM'
}

dependencies = { 'lua >= 5.1', 'repeat.vim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'vim-unimpaired-' .. '6d44a6dc2ec34607c41ec78acf81657248580bf1',
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
