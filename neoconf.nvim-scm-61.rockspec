local git_ref = 'e71deb12c2ea2ce0595e14df17ec8048888569f2'
local modrev = 'scm'
local specrev = '61'

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
  dir = 'neoconf.nvim-' .. 'e71deb12c2ea2ce0595e14df17ec8048888569f2',
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
