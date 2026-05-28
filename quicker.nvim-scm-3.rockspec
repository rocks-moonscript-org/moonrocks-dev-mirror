local git_ref = '4a6883cb13fe097a20a046eb55f6dffd239276e3'
local modrev = 'scm'
local specrev = '3'

local repo_url = 'https://github.com/stevearc/quicker.nvim'

rockspec_format = '3.0'
package = 'quicker.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Improved UI and workflow for the Neovim quickfix',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/stevearc/quicker.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'quicker.nvim-' .. '4a6883cb13fe097a20a046eb55f6dffd239276e3',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'syntax' } ,
}
