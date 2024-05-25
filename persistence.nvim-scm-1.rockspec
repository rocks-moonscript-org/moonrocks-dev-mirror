local git_ref = '5fe077056c821aab41f87650bd6e1c48cd7dd047'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/folke/persistence.nvim'

rockspec_format = '3.0'
package = 'persistence.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Simple session management for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/persistence.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'persistence.nvim-' .. '5fe077056c821aab41f87650bd6e1c48cd7dd047',
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
