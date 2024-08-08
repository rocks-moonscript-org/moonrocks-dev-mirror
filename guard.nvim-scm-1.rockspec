local git_ref = 'dfe47ff918994f4b842bd94b030251e5ef462605'
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
  dir = 'guard.nvim-' .. 'dfe47ff918994f4b842bd94b030251e5ef462605',
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
