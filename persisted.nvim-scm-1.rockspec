local git_ref = 'e2ae8b321ef0b02eb53aacd23f4bddc19923cff8'
local modrev = 'scm'
local specrev = '1'

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
  dir = 'persisted.nvim-' .. 'e2ae8b321ef0b02eb53aacd23f4bddc19923cff8',
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
