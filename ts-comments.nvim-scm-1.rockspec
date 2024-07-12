local git_ref = 'c1f3168f90c8442eec2f62e572ac86b25ca854ff'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/folke/ts-comments.nvim'

rockspec_format = '3.0'
package = 'ts-comments.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Tiny plugin to enhance Neovim\'s native comments',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/ts-comments.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ts-comments.nvim-' .. 'c1f3168f90c8442eec2f62e572ac86b25ca854ff',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
