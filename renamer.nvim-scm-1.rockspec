local git_ref = '1614d466df53899f11dd5395eaac3c09a275c384'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/filipdutescu/renamer.nvim'

rockspec_format = '3.0'
package = 'renamer.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'VS Code-like renaming UI for Neovim, writen in Lua.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/filipdutescu/renamer.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'renamer.nvim-' .. '1614d466df53899f11dd5395eaac3c09a275c384',
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
