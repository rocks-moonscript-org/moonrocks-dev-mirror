local git_ref = '27a6ea9ed7452bb9e0b19eb0942b5bcf7d051b2f'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/jbyuki/nabla.nvim'

rockspec_format = '3.0'
package = 'nabla.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Take your scientific notes in Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/jbyuki/nabla.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nabla.nvim-' .. '27a6ea9ed7452bb9e0b19eb0942b5bcf7d051b2f',
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
