local git_ref = '2c0e7809e0c51dccb335d01f02d4f6b2b4d6fcdc'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/nvim-mini/mini.fuzzy'

rockspec_format = '3.0'
package = 'mini.fuzzy'
version = modrev ..'-'.. specrev

description = {
  summary = 'Fuzzy matching for Neovim. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.fuzzy',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.fuzzy-' .. '2c0e7809e0c51dccb335d01f02d4f6b2b4d6fcdc',
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
