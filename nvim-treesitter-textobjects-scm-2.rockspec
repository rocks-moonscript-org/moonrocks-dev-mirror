local git_ref = '851e865342e5a4cb1ae23d31caf6e991e1c99f1e'
local modrev = 'scm'
local specrev = '2'

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
  dir = 'nvim-treesitter-textobjects-' .. '851e865342e5a4cb1ae23d31caf6e991e1c99f1e',
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
