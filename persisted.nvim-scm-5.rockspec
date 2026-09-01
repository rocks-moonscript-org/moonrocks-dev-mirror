local git_ref = 'f276b33befabbe92796605eaeb191e8058da95c9'
local modrev = 'scm'
local specrev = '5'

local repo_url = 'https://github.com/olimorris/persisted.nvim'

rockspec_format = '3.0'
package = 'persisted.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Simple session management for Neovim with git branching, autoloading and Telescope support',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/olimorris/persisted.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'persisted.nvim-' .. 'f276b33befabbe92796605eaeb191e8058da95c9',
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
