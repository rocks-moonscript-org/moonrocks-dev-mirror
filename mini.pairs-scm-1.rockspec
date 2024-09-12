local git_ref = 'e543c760edc5e746e5b6cbd02c066c17ead3ef16'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.pairs'

rockspec_format = '3.0'
package = 'mini.pairs'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim autopairs. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.pairs',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.pairs-' .. 'e543c760edc5e746e5b6cbd02c066c17ead3ef16',
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
