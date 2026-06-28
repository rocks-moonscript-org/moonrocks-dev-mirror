local git_ref = 'f97308eb6c3de72a35b64b87ced85501dce8000c'
local modrev = 'scm'
local specrev = '7'

local repo_url = 'https://github.com/nvim-mini/mini.jump2d'

rockspec_format = '3.0'
package = 'mini.jump2d'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Jump within visible lines. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.jump2d',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.jump2d-' .. 'f97308eb6c3de72a35b64b87ced85501dce8000c',
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
