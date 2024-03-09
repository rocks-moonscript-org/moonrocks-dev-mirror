local git_ref = '17ffaeb5a1dc2dbef39cf0865d8a4b6000836714'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/gbprod/substitute.nvim'

rockspec_format = '3.0'
package = 'substitute.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin introducing a new operators motions to quickly replace and exchange text.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/gbprod/substitute.nvim',
  license = 'WTFPL'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'substitute.nvim-' .. '17ffaeb5a1dc2dbef39cf0865d8a4b6000836714',
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
