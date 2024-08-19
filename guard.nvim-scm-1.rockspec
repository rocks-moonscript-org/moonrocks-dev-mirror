local git_ref = '8b34592089f56502a7757fd563f2743a446f6334'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvimdev/guard.nvim'

rockspec_format = '3.0'
package = 'guard.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Async formatting and linting utility for neovim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvimdev/guard.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'guard-collection' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'guard.nvim-' .. '8b34592089f56502a7757fd563f2743a446f6334',
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
