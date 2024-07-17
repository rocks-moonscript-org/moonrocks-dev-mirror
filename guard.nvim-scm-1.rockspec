local git_ref = 'b066152fe06122b047a6b3ce427a19d8b6e628ce'
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
  dir = 'guard.nvim-' .. 'b066152fe06122b047a6b3ce427a19d8b6e628ce',
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
