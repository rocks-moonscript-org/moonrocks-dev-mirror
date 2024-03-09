local git_ref = 'b6dbd1a3e1b8cef3d6ebfafe96c2230ca341b65f'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/matbme/JABS.nvim'

rockspec_format = '3.0'
package = 'jabs.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Just Another Buffer Switcher for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/matbme/JABS.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'JABS.nvim-' .. 'b6dbd1a3e1b8cef3d6ebfafe96c2230ca341b65f',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
