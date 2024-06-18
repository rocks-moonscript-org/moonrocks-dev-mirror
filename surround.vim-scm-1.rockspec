local git_ref = '3d188ed2113431cf8dac77be61b842acb64433d9'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/tpope/vim-surround'

rockspec_format = '3.0'
package = 'surround.vim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Delete/change/add parentheses/quotes/XML-tags/much more with ease',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/tpope/vim-surround',
  license = 'vim-license'
}

dependencies = { 'lua >= 5.1', 'repeat.vim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'vim-surround-' .. '3d188ed2113431cf8dac77be61b842acb64433d9',
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
