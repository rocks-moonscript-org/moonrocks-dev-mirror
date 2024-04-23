local git_ref = '1622a0e682e589b204c3a9167505995c75828915'
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
  dir = 'nvim-treesitter-textobjects-' .. '1622a0e682e589b204c3a9167505995c75828915',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'queries' } ,
}
