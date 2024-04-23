local git_ref = 'ba4289ad345ececd335a9cdd7b9616fd0bb6be92'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvim-treesitter/nvim-treesitter-context'

rockspec_format = '3.0'
package = 'nvim-treesitter-context'
version = modrev ..'-'.. specrev

description = {
  summary = 'Show code context',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-treesitter/nvim-treesitter-context',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-treesitter-context-' .. 'ba4289ad345ececd335a9cdd7b9616fd0bb6be92',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin', 'queries' } ,
}
