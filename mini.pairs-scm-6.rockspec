local git_ref = 'b1fd9df3bb4a41c8f45778a3859ee80ef6b367e3'
local modrev = 'scm'
local specrev = '6'

local repo_url = 'https://github.com/nvim-mini/mini.pairs'

rockspec_format = '3.0'
package = 'mini.pairs'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim autopairs. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.pairs',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.pairs-' .. 'b1fd9df3bb4a41c8f45778a3859ee80ef6b367e3',
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
