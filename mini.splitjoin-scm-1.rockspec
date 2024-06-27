local git_ref = '6e0c320c2c3a9cc4beb0db9284f3ee5888371f3a'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.splitjoin'

rockspec_format = '3.0'
package = 'mini.splitjoin'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Split and join arguments. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.splitjoin',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.splitjoin-' .. '6e0c320c2c3a9cc4beb0db9284f3ee5888371f3a',
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
