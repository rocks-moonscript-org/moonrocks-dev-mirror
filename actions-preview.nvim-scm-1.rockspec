local git_ref = 'd7f490c278982d3c4650b0998772df848df93179'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/aznhe21/actions-preview.nvim'

rockspec_format = '3.0'
package = 'actions-preview.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Fully customizable previewer for LSP code actions.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/aznhe21/actions-preview.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'actions-preview.nvim-' .. 'd7f490c278982d3c4650b0998772df848df93179',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
