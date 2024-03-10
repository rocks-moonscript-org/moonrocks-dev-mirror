local git_ref = '51b011f9da864bf739b2b8dbad5db7e9ba343c7f'
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
  dir = 'grapple.nvim-' .. '51b011f9da864bf739b2b8dbad5db7e9ba343c7f',
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
