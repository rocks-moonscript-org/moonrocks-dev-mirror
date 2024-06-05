local git_ref = '8b93e792747520b6490237b5b32963e256fbde24'
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
  dir = 'substitute.nvim-' .. '8b93e792747520b6490237b5b32963e256fbde24',
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
