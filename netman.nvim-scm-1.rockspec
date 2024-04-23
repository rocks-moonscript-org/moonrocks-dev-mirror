local git_ref = '68eecb29d913d4f35efa9bd0e8636046f70f998f'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/miversen33/netman.nvim'

rockspec_format = '3.0'
package = 'netman.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim (Lua powered) Network Resource Manager',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/miversen33/netman.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'netman.nvim-' .. '68eecb29d913d4f35efa9bd0e8636046f70f998f',
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
