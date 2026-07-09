local git_ref = 'f6c1c4832932d336feb77befa30074cd1a998f3d'
local modrev = 'scm'
local specrev = '38'

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
  dir = 'neoconf.nvim-' .. 'f6c1c4832932d336feb77befa30074cd1a998f3d',
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
