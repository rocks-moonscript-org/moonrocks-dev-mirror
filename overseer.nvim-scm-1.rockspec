local git_ref = '226789848772d99b3b61363b6ea7663882f8c05e'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/stevearc/overseer.nvim'

rockspec_format = '3.0'
package = 'overseer.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A task runner and job management plugin for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/stevearc/overseer.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'overseer.nvim-' .. '226789848772d99b3b61363b6ea7663882f8c05e',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc' } ,
}
