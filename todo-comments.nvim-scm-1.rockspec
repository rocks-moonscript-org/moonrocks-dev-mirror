local git_ref = 'a7e39ae9e74f2c8c6dc4eea6d40c3971ae84752d'
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
  dir = 'todo-comments.nvim-' .. 'a7e39ae9e74f2c8c6dc4eea6d40c3971ae84752d',
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
