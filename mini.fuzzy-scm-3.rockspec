local git_ref = '016c90a5e2c7235c26684dc0e13f6f019e1dcd84'
local modrev = 'scm'
local specrev = '3'

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
  dir = 'mini.fuzzy-' .. '016c90a5e2c7235c26684dc0e13f6f019e1dcd84',
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
