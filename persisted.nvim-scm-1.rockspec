local git_ref = '9c5fc98a4cb64f66b6f33cae9d31ee8cd54d43ed'
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
  dir = 'persisted.nvim-' .. '9c5fc98a4cb64f66b6f33cae9d31ee8cd54d43ed',
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
