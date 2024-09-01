local git_ref = 'd459bd7ce68910272038ed037c028180161fd14d'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/jakewvincent/mkdnflow.nvim'

rockspec_format = '3.0'
package = 'mkdnflow.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Fluent navigation and management of markdown notebooks',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/jakewvincent/mkdnflow.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mkdnflow.nvim-' .. 'd459bd7ce68910272038ed037c028180161fd14d',
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
