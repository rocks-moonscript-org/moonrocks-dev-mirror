local git_ref = '87526babdb563b9e2f0646b420359389732326dc'
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
  dir = 'overseer.nvim-' .. '87526babdb563b9e2f0646b420359389732326dc',
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
