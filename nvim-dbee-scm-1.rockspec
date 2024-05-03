local git_ref = '85622c8d95b53f62329627fd461c52fca7cb612b'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/kndndrj/nvim-dbee'

rockspec_format = '3.0'
package = 'nvim-dbee'
version = modrev ..'-'.. specrev

description = {
  summary = 'Interactive database client for neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/kndndrj/nvim-dbee',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'nui.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-dbee-' .. '85622c8d95b53f62329627fd461c52fca7cb612b',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
