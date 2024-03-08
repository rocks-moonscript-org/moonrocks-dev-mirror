local git_ref = '84e0290f5600e8b89c0dfcafc864f45496a53400'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/folke/neodev.nvim'

rockspec_format = '3.0'
package = 'neodev.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim setup for init.lua and plugin development with full signature help, docs and completion for the nvim lua API',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/neodev.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neodev.nvim-' .. '84e0290f5600e8b89c0dfcafc864f45496a53400',
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
