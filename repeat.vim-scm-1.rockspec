local git_ref = '65846025c15494983dafe5e3b46c8f88ab2e9635'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/tpope/vim-repeat'

rockspec_format = '3.0'
package = 'repeat.vim'
version = modrev ..'-'.. specrev

description = {
  summary = 'enable repeating supported plugin maps with \'.\'',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/tpope/vim-repeat',
  license = 'vim-license'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'vim-repeat-' .. '65846025c15494983dafe5e3b46c8f88ab2e9635',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload' } ,
}
