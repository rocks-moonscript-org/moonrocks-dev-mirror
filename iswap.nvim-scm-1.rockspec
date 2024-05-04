local git_ref = 'dbc6c072a4bbdfe208455f70e2d1d7325b4327a3'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/mizlan/iswap.nvim'

rockspec_format = '3.0'
package = 'iswap.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Interactively select and swap function arguments, list elements, and much more. Powered by tree-sitter.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/mizlan/iswap.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'iswap.nvim-' .. 'dbc6c072a4bbdfe208455f70e2d1d7325b4327a3',
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
