local git_ref = '8560c245f6a5bc7bb229c00d9d0627d02ef9b4e8'
local modrev = 'scm'
local specrev = '52'

local repo_url = 'https://github.com/folke/neoconf.nvim'

rockspec_format = '3.0'
package = 'neoconf.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin to manage global and project-local settings',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/neoconf.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neoconf.nvim-' .. '8560c245f6a5bc7bb229c00d9d0627d02ef9b4e8',
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
