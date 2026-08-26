local git_ref = 'f4773357d60c71e99a9fc39ebe858b925105431c'
local modrev = 'scm'
local specrev = '4'

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
  dir = 'persisted.nvim-' .. 'f4773357d60c71e99a9fc39ebe858b925105431c',
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
