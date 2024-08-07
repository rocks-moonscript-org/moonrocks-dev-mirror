local git_ref = 'cd8fd01677e0cfe9dc2c715f305d653269232c1a'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvim-treesitter/nvim-treesitter-textobjects'

rockspec_format = '3.0'
package = 'nvim-treesitter-textobjects'
version = modrev ..'-'.. specrev

description = {
  summary = 'Syntax aware text-objects, select, move, swap, and peek support.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-treesitter/nvim-treesitter-textobjects',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-treesitter-textobjects-' .. 'cd8fd01677e0cfe9dc2c715f305d653269232c1a',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin', 'queries' } ,
}
