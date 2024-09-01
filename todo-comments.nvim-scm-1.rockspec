local git_ref = '319c01b99b7a8c9ac2066bf0efd4d6ec68fef444'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/folke/todo-comments.nvim'

rockspec_format = '3.0'
package = 'todo-comments.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Highlight, list and search todo comments in your projects',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/todo-comments.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'todo-comments.nvim-' .. '319c01b99b7a8c9ac2066bf0efd4d6ec68fef444',
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
