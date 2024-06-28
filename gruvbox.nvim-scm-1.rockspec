local git_ref = 'a7cacf59418a6fe52da3d022bfd76a8caf34dc8d'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ellisonleao/gruvbox.nvim'

rockspec_format = '3.0'
package = 'gruvbox.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Lua port of the most famous vim colorscheme',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/ellisonleao/gruvbox.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'gruvbox.nvim-' .. 'a7cacf59418a6fe52da3d022bfd76a8caf34dc8d',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors', 'doc' } ,
}
