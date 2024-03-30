local git_ref = 'bc532037109c242e4138803b4d52d377711b9523'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.jump2d'

rockspec_format = '3.0'
package = 'mini.jump2d'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Jump within visible lines. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.jump2d',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.jump2d-' .. 'bc532037109c242e4138803b4d52d377711b9523',
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
