local git_ref = '4cc98f07ec96bb748a8796831767538e0e4f9be4'
local modrev = 'scm'
local specrev = '5'

local repo_url = 'https://github.com/scalameta/nvim-metals'

rockspec_format = '3.0'
package = 'nvim-metals'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Metals plugin for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/scalameta/nvim-metals',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-metals-' .. '4cc98f07ec96bb748a8796831767538e0e4f9be4',
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
