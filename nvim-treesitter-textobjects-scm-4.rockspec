local git_ref = '5c7b0263797dfd1bd6202f2b219f3b53a80b2187'
local modrev = 'scm'
local specrev = '4'

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
  dir = 'nvim-treesitter-textobjects-' .. '5c7b0263797dfd1bd6202f2b219f3b53a80b2187',
  branch = 'main',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git'),
    branch = 'main',
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'queries' } ,
}
