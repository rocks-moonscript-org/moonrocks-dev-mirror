local git_ref = '12172536620464f8cc124e07c6e3ccd306ea3c5c'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/cbochs/grapple.nvim'

rockspec_format = '3.0'
package = 'grapple.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin for tagging important files',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/cbochs/grapple.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'grapple.nvim-' .. '12172536620464f8cc124e07c6e3ccd306ea3c5c',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin', 'syntax' } ,
}
