local git_ref = 'e02cc91f2a8feb5c5a595767d208c54b6e3258ec'
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
  dir = 'iswap.nvim-' .. 'e02cc91f2a8feb5c5a595767d208c54b6e3258ec',
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
